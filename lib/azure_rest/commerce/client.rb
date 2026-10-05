# frozen_string_literal: true

require_relative '../http/paginator'

module AzureRest
  module Commerce
    class Client
      attr_reader :api_client, :subscription_id, :profile

      def initialize(api_client, subscription_id, profile)
        @api_client      = api_client
        @subscription_id = subscription_id
        @profile         = profile
      end

      def usage_aggregates
        @usage_aggregates ||= UsageAggregatesFacade.new(self)
      end

      def rate_card
        @rate_card ||= RateCardFacade.new(self)
      end

      def api_version(group)
        @profile.api_versions[group] || '2015-06-01-preview'
      end

      class UsageAggregatesFacade
        def initialize(client)
          @client = client
          @api = Commerce::UsageAggregatesApi.new(client.api_client)
        end

        def list(reported_start_time, reported_end_time, opts = {})
          Http::Paginator.new(api_client: @client.api_client) do
            @api.usage_aggregates_list(reported_start_time, reported_end_time, version, opts)
          end
        end

        private

        def version
          @client.api_version(:usage_aggregates)
        end
      end

      class RateCardFacade
        def initialize(client)
          @client = client
          @api = Commerce::RateCardApi.new(client.api_client)
        end

        def get(filter, opts = {})
          @api.rate_card_get(filter, version, opts)
        end

        private

        def version
          @client.api_version(:rate_card)
        end
      end
    end
  end
end
