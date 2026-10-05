# frozen_string_literal: true

require 'json'
require 'faraday'

module AzureRest
  module Auth
    class MetadataDiscovery
      # Well-known first-party Application ID pre-authorized by Azure Stack Hub for
      # username/password (ROPC) authentication without a custom App Registration.
      AZURE_STACK_CLIENT_ID = '1950a258-227b-4e31-a9cf-717495945fc2'
      METADATA_PATH = '/metadata/endpoints?api-version=1.0'

      attr_reader :base_url, :proxy

      def initialize(base_url, proxy: nil)
        @base_url = base_url.to_s.sub(%r{/+\z}, '')
        @proxy = proxy
      end

      # Discovers login endpoint and audience from Azure Stack metadata endpoint.
      # @return [Hash] { authentication_endpoint: String, token_audience: String, graph_endpoint: String }
      def discover
        url = @base_url.start_with?('http') ? @base_url : "https://#{@base_url}"
        conn = Faraday.new(url: url) do |f|
          f.adapter Faraday.default_adapter
          f.proxy = @proxy if @proxy
        end

        response = conn.get(METADATA_PATH)
        unless response.success?
          raise AzureApiError.new(
            "Failed to discover endpoints from #{url}#{METADATA_PATH}: #{response.status} - #{response.body}",
            status: response.status,
            response_headers: response.headers,
            response_body: response.body
          )
        end

        data = JSON.parse(response.body)
        auth           = data['authentication'] || {}
        login_endpoint = auth['loginEndpoint']
        audiences      = auth['audiences'] || []
        token_audience = audiences.first

        {
          authentication_endpoint: login_endpoint,
          token_audience: token_audience,
          graph_endpoint: data['graphEndpoint']
        }
      end
    end
  end
end
