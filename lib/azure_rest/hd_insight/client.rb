# frozen_string_literal: true

require_relative '../http/paginator'

module AzureRest
  module HDInsight
    class Client
      attr_reader :api_client, :subscription_id, :profile

      def initialize(api_client, subscription_id, profile)
        @api_client      = api_client
        @subscription_id = subscription_id
        @profile         = profile
      end

      def clusters
        @clusters ||= ClustersFacade.new(self)
      end

      def api_version(group)
        @profile.api_versions[group] || @profile.api_versions[:hd_insight_clusters] || '2024-08-01-preview'
      end

      class ClustersFacade
        def initialize(client)
          @client = client
          @api = HDInsight::ClustersApi.new(client.api_client)
        end

        def list(opts = {})
          Http::Paginator.new(api_client: @client.api_client) do
            @api.clusters_list(version, @client.subscription_id, opts)
          end
        end

        def list_by_resource_group(resource_group_name, opts = {})
          Http::Paginator.new(api_client: @client.api_client) do
            @api.clusters_list_by_resource_group(version, @client.subscription_id, resource_group_name, opts)
          end
        end

        def get(resource_group_name, cluster_name, opts = {})
          @api.clusters_get(version, @client.subscription_id, resource_group_name, cluster_name, opts)
        end

        def create(resource_group_name, cluster_name, parameters, opts = {})
          @api.clusters_create(version, @client.subscription_id, resource_group_name, cluster_name, parameters, opts)
        end

        def update(resource_group_name, cluster_name, parameters, opts = {})
          @api.clusters_update(version, @client.subscription_id, resource_group_name, cluster_name, parameters, opts)
        end

        def delete(resource_group_name, cluster_name, opts = {})
          @api.clusters_delete(version, @client.subscription_id, resource_group_name, cluster_name, opts)
        end

        private

        def version
          @client.api_version(:hd_insight_clusters)
        end
      end
    end
  end
end
