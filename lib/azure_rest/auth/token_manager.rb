# frozen_string_literal: true

require_relative 'metadata_discovery'
require_relative 'token'
require_relative 'client_credential_token'
require_relative 'password_token'

module AzureRest
  module Auth
    class TokenManager
      attr_reader :credentials, :proxy

      def initialize(credentials, proxy: nil)
        @credentials = credentials
        @proxy = proxy
      end

      # Returns the bearer token string from underlying credential provider
      # @return [String]
      def access_token
        if @credentials.respond_to?(:token)
          @credentials.token
        elsif @credentials.respond_to?(:access_token)
          @credentials.access_token
        elsif @credentials.is_a?(String)
          @credentials
        else
          raise ArgumentError, "Unsupported credentials type: #{@credentials.class}. Expected ClientCredentialToken, PasswordToken, or token String."
        end
      end
    end
  end
end
