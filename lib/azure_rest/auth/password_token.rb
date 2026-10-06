# frozen_string_literal: true

require 'json'
require 'faraday'
require_relative 'token'
require_relative 'metadata_discovery'

module AzureRest
  module Auth
    class PasswordToken
      attr_reader :tenant, :client_id, :username, :password, :authentication_endpoint, :resource, :proxy

      def initialize(tenant:, username:, password:, client_id: nil, authentication_endpoint: nil, resource: nil,
                     proxy: nil)
        @tenant = tenant
        @username = username
        @password = password
        # Default to well-known Azure Stack client ID if none provided
        @client_id = client_id || MetadataDiscovery::AZURE_STACK_CLIENT_ID
        @authentication_endpoint = authentication_endpoint&.sub(%r{/+\z}, '')
        @resource = resource
        @proxy = proxy
        @token = nil
        @mutex = Mutex.new
      end

      # Set or update endpoint & audience (e.g., after discovery)
      def configure_endpoints!(authentication_endpoint:, resource:)
        @mutex.synchronize do
          @authentication_endpoint = authentication_endpoint.sub(%r{/+\z}, '')
          @resource = resource
          @token = nil # Invalidate cache if endpoints changed
        end
      end

      # Returns a valid Bearer token string, automatically refreshing if expired
      # @return [String]
      def token
        @mutex.synchronize do
          @token = acquire_token if @token.nil? || @token.expired?
          @token.access_token
        end
      end
      alias access_token token

      def acquire_token
        unless @authentication_endpoint && @resource
          raise ArgumentError,
                'Authentication endpoint and resource must be set before acquiring token. ' \
                'Run discovery or provide them at initialization.'
        end

        token_url = "#{@authentication_endpoint}/#{@tenant}/oauth2/token"
        conn = Faraday.new do |f|
          f.request :url_encoded
          f.adapter Faraday.default_adapter
          f.proxy = @proxy if @proxy
        end

        body_params = {
          grant_type: 'password',
          client_id:  @client_id,
          username:   @username,
          password:   @password,
          resource:   @resource
        }

        response = conn.post(token_url, body_params)
        unless response.success?
          raise UnauthorizedError.new(
            "Authentication failed for user #{@username} (tenant #{@tenant}): #{response.status} - #{response.body}",
            status: response.status,
            response_headers: response.headers,
            response_body: response.body
          )
        end

        data = JSON.parse(response.body)
        Token.new(
          access_token: data['access_token'],
          token_type:   data['token_type'] || 'Bearer',
          expires_on:   data['expires_on'],
          expires_in:   data['expires_in'],
          resource:     data['resource'] || @resource
        )
      end
    end
  end
end
