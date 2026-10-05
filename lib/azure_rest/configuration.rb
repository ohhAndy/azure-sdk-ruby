# frozen_string_literal: true

module AzureRest
  class Configuration
    attr_accessor :host, :base_path, :api_key, :api_key_prefix, :access_token,
                  :username, :password, :scheme, :ssl_ca_cert, :verify_ssl,
                  :verify_ssl_host, :params_encoding, :timeout, :client_side_validation,
                  :user_agent, :debugging, :logger, :proxy

    def initialize
      @scheme = 'https'
      @host = 'management.azure.com'
      @base_path = ''
      @api_key = {}
      @api_key_prefix = {}
      @timeout = 0
      @client_side_validation = true
      @verify_ssl = true
      @verify_ssl_host = true
      @params_encoding = nil
      @user_agent = "AzureRest-Ruby/#{AzureRest::VERSION}"
      @debugging = false
      @logger = nil
      @proxy = nil
      yield(self) if block_given?
    end

    def self.default
      @@default ||= Configuration.new
    end

    def self.default=(default)
      @@default = default
    end

    def configure
      yield(self) if block_given?
    end

    def base_url
      # If host already contains a scheme (e.g. a full Azure Stack endpoint URL),
      # use it verbatim — only append base_path if present.
      return "#{@host}#{@base_path}" if @host.to_s.start_with?('http://', 'https://')
      return "http://#{@host}#{@base_path}" if @scheme == 'http'

      "https://#{@host}#{@base_path}"
    end
  end
end
