# frozen_string_literal: true

require 'json'

module AzureRest
  class AzureApiError < StandardError
    attr_reader :error_code, :error_message, :status, :response_headers, :response_body

    def initialize(msg = nil, status: nil, error_code: nil, error_message: nil, response_headers: nil,
                   response_body: nil)
      @status = status
      @error_code = error_code
      @error_message = error_message
      @response_headers = response_headers
      @response_body = response_body
      super(msg || error_message || "Azure API error (status: #{status})")
    end

    def self.from_response(response)
      status  = response.status
      headers = response.headers
      body    = response.body

      parsed = begin
        JSON.parse(body) if body.is_a?(String)
      rescue JSON::ParserError
        nil
      end || {}

      error_info = parsed['error'] || parsed
      code = error_info['code']
      msg = error_info['message'] || body.to_s

      klass = case status
              when 400 then BadRequestError
              when 401 then UnauthorizedError
              when 403 then ForbiddenError
              when 404 then NotFoundError
              when 409 then ConflictError
              else AzureApiError
              end

      klass.new(
        "#{"[#{code}] " if code}#{msg}",
        status: status,
        error_code: code,
        error_message: msg,
        response_headers: headers,
        response_body: body
      )
    end
  end

  class BadRequestError   < AzureApiError; end
  class UnauthorizedError < AzureApiError; end
  class ForbiddenError    < AzureApiError; end
  class NotFoundError     < AzureApiError; end
  class ConflictError     < AzureApiError; end

  # Backward compatibility alias for generated ApiError
  ApiError = AzureApiError
end
