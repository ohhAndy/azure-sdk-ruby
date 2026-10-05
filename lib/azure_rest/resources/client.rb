# frozen_string_literal: true

require_relative '../http/paginator'

module AzureRest
  module Resources
    class Client
      attr_reader :api_client, :subscription_id, :profile

      def initialize(api_client, subscription_id, profile)
        @api_client      = api_client
        @subscription_id = subscription_id
        @profile         = profile
      end

      def resource_groups
        @resource_groups ||= ResourceGroupsFacade.new(self)
      end

      def resources
        @resources ||= ResourcesFacade.new(self)
      end

      def deployments
        @deployments ||= DeploymentsFacade.new(self)
      end

      def deployment_operations
        @deployment_operations ||= DeploymentOperationsFacade.new(self)
      end

      def providers
        @providers ||= ProvidersFacade.new(self)
      end

      def api_version(group)
        @profile.api_versions[group] || @profile.api_versions[:resource_groups] || '2024-03-01'
      end

      class ResourceGroupsFacade
        def initialize(client)
          @client = client
          @api = Resources::ResourceGroupsApi.new(client.api_client)
        end

        def list(opts = {})
          Http::Paginator.new(api_client: @client.api_client) do
            @api.resource_groups_list(version, @client.subscription_id, opts)
          end
        end

        def get(resource_group_name, opts = {})
          @api.resource_groups_get(version, @client.subscription_id, resource_group_name, opts)
        end

        def create_or_update(resource_group_name, parameters, opts = {})
          @api.resource_groups_create_or_update(version, @client.subscription_id, resource_group_name, parameters, opts)
        end

        def update(resource_group_name, parameters, opts = {})
          @api.resource_groups_update(version, @client.subscription_id, resource_group_name, parameters, opts)
        end

        def delete(resource_group_name, opts = {})
          @api.resource_groups_delete(version, @client.subscription_id, resource_group_name, opts)
        end

        def check_existence(resource_group_name, opts = {})
          @api.resource_groups_check_existence(version, @client.subscription_id, resource_group_name, opts)
        end

        private

        def version
          @client.api_version(:resource_groups)
        end
      end

      class ResourcesFacade
        def initialize(client)
          @client = client
          @api = Resources::ResourcesApi.new(client.api_client)
        end

        def list(opts = {})
          Http::Paginator.new(api_client: @client.api_client) do
            @api.resources_list(version, @client.subscription_id, opts)
          end
        end

        def list_by_resource_group(resource_group_name, opts = {})
          Http::Paginator.new(api_client: @client.api_client) do
            @api.resources_list_by_resource_group(version, @client.subscription_id, resource_group_name, opts)
          end
        end

        def get_by_id(resource_id, opts = {})
          @api.resources_get_by_id(resource_id, version, opts)
        end

        def delete_by_id(resource_id, opts = {})
          @api.resources_delete_by_id(resource_id, version, opts)
        end

        private

        def version
          @client.api_version(:resources)
        end
      end

      class DeploymentsFacade
        def initialize(client)
          @client = client
        end

        def list_all(opts = {})
          Http::Paginator.new(api_client: @client.api_client) do
            data, _, _ = @client.api_client.call_api(
              :GET,
              "/subscriptions/#{@client.subscription_id}/providers/Microsoft.Resources/deployments",
              query_params: { 'api-version' => version }
            )
            data
          end
        end

        def list_by_resource_group(resource_group_name, opts = {})
          Http::Paginator.new(api_client: @client.api_client) do
            data, _, _ = @client.api_client.call_api(
              :GET,
              "/subscriptions/#{@client.subscription_id}/resourcegroups/#{resource_group_name}/providers/Microsoft.Resources/deployments",
              query_params: { 'api-version' => version }
            )
            data
          end
        end
        alias list list_by_resource_group

        def get(resource_group_name, deployment_name, opts = {})
          data, _, _ = @client.api_client.call_api(
            :GET,
            "/subscriptions/#{@client.subscription_id}/resourcegroups/#{resource_group_name}/providers/Microsoft.Resources/deployments/#{deployment_name}",
            query_params: { 'api-version' => version }
          )
          data
        end

        def create_or_update(resource_group_name, deployment_name, parameters, opts = {})
          data, _, _ = @client.api_client.call_api(
            :PUT,
            "/subscriptions/#{@client.subscription_id}/resourcegroups/#{resource_group_name}/providers/Microsoft.Resources/deployments/#{deployment_name}",
            query_params: { 'api-version' => version },
            body: parameters,
            header_params: { 'Content-Type' => 'application/json' }
          )
          data
        end

        def delete(resource_group_name, deployment_name, opts = {})
          data, _, _ = @client.api_client.call_api(
            :DELETE,
            "/subscriptions/#{@client.subscription_id}/resourcegroups/#{resource_group_name}/providers/Microsoft.Resources/deployments/#{deployment_name}",
            query_params: { 'api-version' => version }
          )
          data
        end

        def get_template(resource_group_name, deployment_name, opts = {})
          data, _, _ = @client.api_client.call_api(
            :POST,
            "/subscriptions/#{@client.subscription_id}/resourcegroups/#{resource_group_name}/providers/Microsoft.Resources/deployments/#{deployment_name}/exportTemplate",
            query_params: { 'api-version' => version }
          )
          data
        end

        private

        def version
          @client.api_version(:deployments)
        end
      end

      class DeploymentOperationsFacade
        def initialize(client)
          @client = client
        end

        def list(resource_group_name, deployment_name, opts = {})
          Http::Paginator.new(api_client: @client.api_client) do
            data, _, _ = @client.api_client.call_api(
              :GET,
              "/subscriptions/#{@client.subscription_id}/resourcegroups/#{resource_group_name}/providers/Microsoft.Resources/deployments/#{deployment_name}/operations",
              query_params: { 'api-version' => version }
            )
            data
          end
        end

        private

        def version
          @client.api_version(:deployment_operations)
        end
      end

      class ProvidersFacade
        def initialize(client)
          @client = client
          @api = Resources::ProvidersApi.new(client.api_client)
        end

        def list(opts = {})
          Http::Paginator.new(api_client: @client.api_client) do
            @api.providers_list(version, @client.subscription_id, opts)
          end
        end

        def get(resource_provider_namespace, opts = {})
          @api.providers_get(version, @client.subscription_id, resource_provider_namespace, opts)
        end

        def list_api_versions(resource_provider_namespace, resource_type)
          provider = get(resource_provider_namespace)
          return [] unless provider && provider.resource_types

          matched_type = provider.resource_types.find do |rt|
            rt.resource_type.to_s.casecmp(resource_type.to_s).zero?
          end
          matched_type ? (matched_type.api_versions || []) : []
        end

        private

        def version
          @client.api_version(:providers)
        end
      end
    end
  end
end
