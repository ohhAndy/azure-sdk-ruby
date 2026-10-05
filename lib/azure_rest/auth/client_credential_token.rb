# frozen_string_literal: true

require 'json'
require 'faraday'
require_relative 'token'

module AzureRest
  module Auth
    class ClientCredentialToken
      DEFAULT_AUTH_ENDPOINT = 'https://login.microsoftonline.com/'
      DEFAULT_RESOURCE = 'https://management.azure.com/'

      attr_reader :tenant, :client_id, :client_secret, :authentication_endpoint, :resource, :proxy

      def initialize(tenant:, client_id:, client_secret:, authentication_endpoint: nil, resource: nil, proxy: nil)
        @tenant = tenant
        @client_id = client_id
        @client_secret = client_secret
        @authentication_endpoint = (authentication_endpoint || DEFAULT_AUTH_ENDPOINT).sub(%r{/+\z}, '')
        @resource = resource || DEFAULT_RESOURCE
        @proxy = proxy
        @token = nil
        @mutex = Mutex.new
      end

      # Returns a valid Bearer token string, automatically refreshing if expired
      # @return [String]
      def token
        @mutex.synchronize do
          if @token.nil? || @token.expired?
            @token = acquire_token
          end
          @token.access_token
        end
      end
      alias access_token token

      def acquire_token
        token_url = "#{@authentication_endpoint}/#{@tenant}/oauth2/token"
        conn = Faraday.new do |f|
          f.request :url_encoded
          f.adapter Faraday.default_adapter
          f.proxy = @proxy if @proxy
        end

        body_params = {
          grant_type:    'client_credentials',
          client_id:     @client_id,
          client_secret: @client_secret,
          resource:      @resource
        }

        response = conn.post(token_url, body_params)
        unless response.success?
          raise UnauthorizedError.new(
            "Authentication failed for tenant #{@tenant} and client_id #{@client_id}: #{response.status} - #{response.body}",
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
