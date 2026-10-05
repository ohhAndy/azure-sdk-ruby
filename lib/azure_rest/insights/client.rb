# frozen_string_literal: true

require_relative '../http/paginator'

module AzureRest
  module Insights
    class Client
      attr_reader :api_client, :subscription_id, :profile

      def initialize(api_client, subscription_id, profile)
        @api_client      = api_client
        @subscription_id = subscription_id
        @profile         = profile
      end

      def scheduled_query_rules
        @scheduled_query_rules ||= ScheduledQueryRulesFacade.new(self)
      end

      def activity_logs
        @activity_logs ||= ActivityLogsFacade.new(self)
      end

      def metrics
        @metrics ||= MetricsFacade.new(self)
      end

      def api_version(group)
        @profile.api_versions[group] || @profile.api_versions[:scheduled_query_rules] || '2023-03-15-preview'
      end

      class ScheduledQueryRulesFacade
        def initialize(client)
          @client = client
          @api = Insights::ScheduledQueryRulesApi.new(client.api_client)
        end

        def list_by_subscription(opts = {})
          Http::Paginator.new(api_client: @client.api_client) do
            @api.scheduled_query_rules_list_by_subscription(version, @client.subscription_id, opts)
          end
        end

        def list_by_resource_group(resource_group_name, opts = {})
          Http::Paginator.new(api_client: @client.api_client) do
            @api.scheduled_query_rules_list_by_resource_group(version, @client.subscription_id, resource_group_name, opts)
          end
        end

        def get(resource_group_name, rule_name, opts = {})
          @api.scheduled_query_rules_get(version, @client.subscription_id, resource_group_name, rule_name, opts)
        end

        def create_or_update(resource_group_name, rule_name, parameters, opts = {})
          @api.scheduled_query_rules_create_or_update(version, @client.subscription_id, resource_group_name, rule_name, parameters, opts)
        end

        def delete(resource_group_name, rule_name, opts = {})
          @api.scheduled_query_rules_delete(version, @client.subscription_id, resource_group_name, rule_name, opts)
        end

        private

        def version
          @client.api_version(:scheduled_query_rules)
        end
      end

      class ActivityLogsFacade
        def initialize(client)
          @client = client
        end

        def list(filter: nil, **opts)
          query_params = { 'api-version' => version }
          query_params['$filter'] = filter if filter
          query_params.merge!(opts[:query_params]) if opts[:query_params]

          Http::Paginator.new(api_client: @client.api_client) do
            data, _, _ = @client.api_client.call_api(
              :GET,
              "/subscriptions/#{@client.subscription_id}/providers/Microsoft.Insights/eventtypes/management/values",
              query_params: query_params
            )
            data
          end
        end

        private

        def version
          @client.api_version(:activity_logs)
        end
      end

      class MetricsFacade
        def initialize(client)
          @client = client
        end

        def list(resource_uri, opts = {})
          uri = resource_uri.sub(%r{\A/+}, '')
          query_params = { 'api-version' => version }
          query_params.merge!(opts[:query_params]) if opts[:query_params]

          data, _, _ = @client.api_client.call_api(
            :GET,
            "/#{uri}/providers/Microsoft.Insights/metrics",
            query_params: query_params
          )
          data
        end

        private

        def version
          @client.api_version(:metrics)
        end
      end
    end
  end
end
