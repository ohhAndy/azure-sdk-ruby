# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require_relative '../errors'

module AzureRest
  module Http
    class Connection
      attr_reader :faraday

      def initialize(base_url:, token_provider: nil, proxy: nil, user_agent: nil)
        @token_provider = token_provider
        @user_agent     = user_agent || "AzureRest-Ruby/#{AzureRest::VERSION}"

        @faraday = Faraday.new(url: base_url) do |builder|
          builder.request :multipart
          builder.request :url_encoded
          builder.adapter Faraday.default_adapter
          builder.proxy = proxy if proxy
        end
      end

      def get(path, params = {}, headers = {})
        execute(:get, path, params, headers)
      end

      def post(path, body = nil, headers = {})
        execute(:post, path, body, headers)
      end

      def put(path, body = nil, headers = {})
        execute(:put, path, body, headers)
      end

      def patch(path, body = nil, headers = {})
        execute(:patch, path, body, headers)
      end

      def delete(path, params = {}, headers = {})
        execute(:delete, path, params, headers)
      end

      private

      def execute(method, path, body_or_params, headers)
        headers = headers.dup

        if @token_provider
          token = @token_provider.respond_to?(:access_token) ? @token_provider.access_token : @token_provider.to_s
          headers['Authorization'] = "Bearer #{token}" if token
        end

        headers['User-Agent'] ||= @user_agent

        response = @faraday.run_request(method, path, body_or_params, headers)
        raise AzureApiError.from_response(response) unless response.success?

        response
      end
    end
  end
end
