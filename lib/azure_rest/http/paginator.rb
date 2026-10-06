# frozen_string_literal: true

require 'uri'

module AzureRest
  module Http
    class Paginator
      include Enumerable

      attr_reader :api_client, :item_class

      # @param fetch_first [Proc] Proc returning first page (or page result object / hash)
      # @param api_client [AzureRest::ApiClient] ApiClient instance to fetch subsequent next_link pages
      # @param item_class [Class, String] Optional model class or type string for items
      def initialize(api_client: nil, item_class: nil, &fetch_first)
        @fetch_first = fetch_first
        @api_client  = api_client
        @item_class  = item_class
      end

      # Iterates across all items across all pages
      def each(&block)
        return to_enum(:each) unless block_given?

        current_page = @fetch_first.call
        loop do
          break unless current_page

          items, next_link = extract_items_and_next_link(current_page)
          items&.each(&block)

          break if next_link.nil? || next_link.empty?

          current_page = fetch_next_page(next_link)
        end
      end

      # Returns an Array containing all items
      def to_a
        entries
      end

      private

      def extract_items_and_next_link(page)
        if page.respond_to?(:value) && page.respond_to?(:next_link)
          [page.value || [], page.next_link]
        elsif page.is_a?(Hash)
          items = page[:value] || page['value'] || []
          next_link = page[:next_link] || page['next_link'] || page[:nextLink] || page['nextLink']
          [items, next_link]
        elsif page.is_a?(Array)
          [page, nil]
        else
          [[page], nil]
        end
      end

      def fetch_next_page(next_link_url)
        # Parse path and query parameters from nextLink URL
        uri = URI.parse(next_link_url)
        path = uri.path
        query = uri.query

        # Warn if nextLink points to a different host than the configured base URL.
        # ARM always returns same-host nextLinks, but a mismatch indicates something
        # unexpected and would silently send the request to the wrong server.
        if uri.host && @api_client
          configured_host = begin
            URI.parse(@api_client.config.base_url).host
          rescue URI::InvalidURIError
            nil
          end
          if configured_host && uri.host != configured_host
            warn "[AzureRest] nextLink host mismatch: expected '#{configured_host}', got '#{uri.host}'. " \
                 'Pagination will follow the configured base URL, not the nextLink host.'
          end
        end

        # If next_link is a relative or absolute URL, call API with the path + query
        full_path = query ? "#{path}?#{query}" : path

        return unless @api_client

        opts = {
          header_params: { 'Accept' => 'application/json' },
          return_type:   'Object'
        }
        data, _status, _headers = @api_client.call_api(:GET, full_path, opts)
        data
      end
    end
  end
end
