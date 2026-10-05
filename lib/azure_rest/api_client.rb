# frozen_string_literal: true

require 'cgi'
require 'json'
require 'faraday'
require 'faraday/multipart'

module AzureRest
  class ApiClient
    attr_accessor :config

    def initialize(config = Configuration.default)
      @config = config
      yield(config) if block_given?
    end

    def self.default
      @@default ||= ApiClient.new
    end

    def self.default=(default)
      @@default = default
    end

    # Call an API with given HTTP method and parameters.
    # @param [Symbol] http_method HTTP method/verb (e.g. :GET, :POST)
    # @param [String] path URL path
    # @param [Hash] opts Options hash
    #   :query_params  [Hash]   appended to the URL as a query string
    #   :header_params [Hash]   merged into request headers
    #   :body          [Object] serialized request body
    #   :return_type   [String] expected response type for deserialization
    #   :form_params   [Hash]   unused — ARM APIs are JSON-only; always empty in generated code
    #   :auth_names    [Array]  unused — authentication is handled via the Authorization header
    #                           set in build_connection from the token provider
    # @return [Array<(Object, Integer, Hash)>] data, response status code and response headers
    def call_api(http_method, path, opts = {})
      request_path = build_request_path(path, opts[:query_params])
      connection = build_connection(opts)

      headers = (opts[:header_params] || {}).dup
      if @config.access_token
        token = @config.access_token.respond_to?(:call) ? @config.access_token.call : @config.access_token
        headers['Authorization'] = "Bearer #{token}" if token
      end

      response = connection.run_request(
        http_method.to_s.downcase.to_sym,
        request_path,
        opts[:body],
        headers
      )

      if @config.debugging && @config.logger
        @config.logger.debug "HTTP response body ~BEGIN~\n#{response.body}\n~END~\n"
      end

      unless response.success?
        error = AzureApiError.from_response(response)
        raise error
      end

      data = deserialize(response, opts[:return_type])
      [data, response.status, response.headers]
    end

    # Serializes a body value to JSON if it is a Hash/Array or responds to
    # +to_hash+/+to_body+. Passes through strings unchanged.
    def object_to_http_body(obj)
      return nil if obj.nil?
      return obj if obj.is_a?(String)
      return obj.to_body.to_json if obj.respond_to?(:to_body)
      return obj.to_hash.to_json if obj.respond_to?(:to_hash)

      obj.to_json
    end

    def build_connection(_opts = {})
      @faraday_conn ||= Faraday.new(url: @config.base_url) do |builder|
        builder.request :multipart
        builder.request :url_encoded
        builder.adapter Faraday.default_adapter
        builder.proxy = @config.proxy if @config.proxy
        builder.headers['User-Agent'] = @config.user_agent if @config.user_agent
      end
    end

    private

    # Appends query_params hash onto a URL path as a query string.
    def build_request_path(path, query_params)
      return path if query_params.nil? || query_params.empty?

      query_string = query_params.map do |k, v|
        "#{CGI.escape(k.to_s)}=#{CGI.escape(v.to_s)}"
      end.join('&')

      path.include?('?') ? "#{path}&#{query_string}" : "#{path}?#{query_string}"
    end

    public

    # Deserialize the response to the given return type.
    #
    # @param [Response] response HTTP response
    # @param [String] return_type class name or type definition
    # @return [Object]
    def deserialize(response, return_type)
      body = response.body
      return nil if body.nil? || body.empty?
      return body if return_type.nil? || return_type == 'String'

      content_type = response.headers['Content-Type'] || response.headers['content-type']
      data = if content_type&.include?('application/json')
               begin
                 JSON.parse(body, symbolize_names: true)
               rescue JSON::ParserError
                 body
               end
             else
               body
             end

      convert_to_type(data, return_type)
    end

    # Convert data to the given type.
    #
    # @param [Object] data Data to be converted
    # @param [String] return_type Type to convert to
    # @return [Object]
    def convert_to_type(data, return_type)
      return nil if data.nil?

      case return_type
      when 'String'
        data.to_s
      when 'Integer'
        data.to_i
      when 'Float'
        data.to_f
      when 'Boolean'
        data == true || data =~ /(true|t|yes|y|1)$/i
      when 'Time'
        Time.parse(data)
      when 'Date'
        Date.parse(data)
      when 'Object'
        data
      when /\AArray<(.+)>\z/
        sub_type = ::Regexp.last_match(1)
        return [] unless data.is_a?(Array)

        data.map { |item| convert_to_type(item, sub_type) }
      when /\AHash<String, (.+)>\z/
        sub_type = ::Regexp.last_match(1)
        return {} unless data.is_a?(Hash)

        data.transform_values { |item| convert_to_type(item, sub_type) }
      else
        klass = resolve_model_class(return_type)
        if klass.respond_to?(:build_from_hash)
          data.is_a?(Hash) ? klass.build_from_hash(data) : data
        else
          data
        end
      end
    end

    def resolve_model_class(name)
      return nil unless name

      return AzureRest.const_get(name) if AzureRest.const_defined?(name, false)

      AzureRest.constants.each do |c|
        mod = AzureRest.const_get(c)
        return mod.const_get(name) if mod.is_a?(Module) && mod.const_defined?(name, false)
      end

      Object.const_get(name)
    rescue NameError
      nil
    end

    def select_header_accept(accepts)
      return nil if accepts.nil? || accepts.empty?

      accepts.find { |a| a =~ /json/i } || accepts.first
    end

    def select_header_content_type(content_types)
      return nil if content_types.nil? || content_types.empty?

      content_types.find { |c| c =~ /json/i } || content_types.first
    end
  end
end
