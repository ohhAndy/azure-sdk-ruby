# frozen_string_literal: true

require_relative '../http/paginator'

module AzureRest
  module ContainerService
    class Client
      attr_reader :api_client, :subscription_id, :profile

      def initialize(api_client, subscription_id, profile)
        @api_client      = api_client
        @subscription_id = subscription_id
        @profile         = profile
      end

      def managed_clusters
        @managed_clusters ||= ManagedClustersFacade.new(self)
      end

      def api_version(group)
        @profile.api_versions[group] || @profile.api_versions[:managed_clusters] || '2024-05-01'
      end

      class ManagedClustersFacade
        def initialize(client)
          @client = client
          @api = ContainerService::ManagedClustersApi.new(client.api_client)
        end

        def list(opts = {})
          Http::Paginator.new(api_client: @client.api_client) do
            @api.managed_clusters_list(version, @client.subscription_id, opts)
          end
        end

        def list_by_resource_group(resource_group_name, opts = {})
          Http::Paginator.new(api_client: @client.api_client) do
            @api.managed_clusters_list_by_resource_group(version, @client.subscription_id, resource_group_name, opts)
          end
        end

        def get(resource_group_name, resource_name, opts = {})
          @api.managed_clusters_get(version, @client.subscription_id, resource_group_name, resource_name, opts)
        end

        def create_or_update(resource_group_name, resource_name, parameters, opts = {})
          @api.managed_clusters_create_or_update(version, @client.subscription_id, resource_group_name, resource_name, parameters, opts)
        end

        def delete(resource_group_name, resource_name, opts = {})
          @api.managed_clusters_delete(version, @client.subscription_id, resource_group_name, resource_name, opts)
        end

        private

        def version
          @client.api_version(:managed_clusters)
        end
      end
    end
  end
end
