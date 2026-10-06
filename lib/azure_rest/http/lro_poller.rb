# frozen_string_literal: true

require 'uri'
require 'time'
require_relative '../errors'

module AzureRest
  module Http
    class LroPoller
      DEFAULT_INTERVAL = 5 # seconds
      DEFAULT_TIMEOUT  = 1800 # 30 minutes

      attr_reader :api_client, :initial_response, :operation_url, :status

      # @param api_client [AzureRest::ApiClient]
      # @param initial_response [Array<(Object, Integer, Hash)>] [data, status_code, headers]
      def initialize(api_client, initial_response)
        @api_client        = api_client
        @initial_data      = initial_response[0]
        @initial_status    = initial_response[1]
        @initial_headers   = (initial_response[2] || {}).transform_keys(&:downcase)
        @status            = nil

        # Azure Async URL headers
        @operation_url = @initial_headers['azure-asyncoperation'] ||
                         @initial_headers['location']
      end

      # Checks if initial call was an asynchronous LRO (201 or 202 status code with tracking headers)
      def async?
        [201, 202].include?(@initial_status) && !@operation_url.nil?
      end

      # Waits until the long running operation completes, fails, or times out
      # @param interval [Integer] seconds between polling attempts
      # @param timeout [Integer] total timeout in seconds
      # @return [Object] final response data
      def wait(interval: DEFAULT_INTERVAL, timeout: DEFAULT_TIMEOUT)
        return @initial_data unless async?

        start_time = Time.now.utc
        poll_url = @operation_url

        loop do
          if Time.now.utc - start_time > timeout
            raise AzureApiError, "Long Running Operation timed out after #{timeout} seconds (URL: #{poll_url})"
          end

          uri = URI.parse(poll_url)
          path = uri.query ? "#{uri.path}?#{uri.query}" : uri.path

          opts = {
            header_params: { 'Accept' => 'application/json' },
            return_type:   'Object'
          }

          data, status_code, headers = @api_client.call_api(:GET, path, opts)
          headers_down = (headers || {}).transform_keys(&:downcase)

          # Status can be in JSON response body (e.g. status: "Succeeded" / "InProgress" / "Failed")
          # or via HTTP status code (200 OK / 204 No Content -> finished)
          op_status = if data.is_a?(Hash)
                        data[:status] || data['status']
                      elsif data.respond_to?(:status)
                        data.status
                      end

          @status = op_status || (status_code == 200 ? 'Succeeded' : 'InProgress')

          case @status.to_s.downcase
          when 'succeeded'
            # If location header is present and different, the final resource representation may be there
            if headers_down['location'] && headers_down['location'] != poll_url
              final_uri = URI.parse(headers_down['location'])
              final_path = final_uri.query ? "#{final_uri.path}?#{final_uri.query}" : final_uri.path
              final_data, = @api_client.call_api(:GET, final_path, opts)
              return final_data
            end
            return data
          when 'failed', 'canceled', 'cancelled'
            error_msg = data.is_a?(Hash) ? (data[:error] || data['error'] || @status) : @status
            raise AzureApiError, "Long Running Operation #{@status}: #{error_msg}"
          end

          # Retry-After header support
          sleep_seconds = headers_down['retry-after'] ? headers_down['retry-after'].to_i : interval
          sleep_seconds = interval if sleep_seconds <= 0
          sleep(sleep_seconds)
        end
      end
    end
  end
end
