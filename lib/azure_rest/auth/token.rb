# frozen_string_literal: true

require 'time'
require 'json'
require 'faraday'

module AzureRest
  module Auth
    class Token
      attr_reader :access_token, :token_type, :expires_on, :expires_in, :resource

      def initialize(access_token:, token_type: 'Bearer', expires_on: nil, expires_in: nil, resource: nil)
        @access_token = access_token
        @token_type   = token_type
        @resource     = resource
        @expires_on   = if expires_on.is_a?(Time)
                          expires_on.utc
                        elsif expires_on
                          # Epoch timestamp (seconds) parsed into UTC Time
                          Time.at(expires_on.to_i).utc
                        elsif expires_in
                          Time.now.utc + expires_in.to_i
                        else
                          Time.now.utc + 3600 # Default 1 hour
                        end
      end

      # Token considered expired 5 minutes before actual expiry to allow refresh window
      def expired?(buffer_seconds = 300)
        Time.now.utc >= (@expires_on - buffer_seconds)
      end
    end
  end
end
