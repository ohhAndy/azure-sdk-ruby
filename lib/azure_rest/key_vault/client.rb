# frozen_string_literal: true

require_relative '../http/paginator'

module AzureRest
  module KeyVault
    class Client
      attr_reader :api_client, :subscription_id, :profile

      def initialize(api_client, subscription_id, profile)
        @api_client      = api_client
        @subscription_id = subscription_id
        @profile         = profile
      end

      def vaults
        @vaults ||= VaultsFacade.new(self)
      end

      def api_version(group)
        @profile.api_versions[group] || @profile.api_versions[:vaults] || '2023-07-01'
      end

      class VaultsFacade
        def initialize(client)
          @client = client
          @api = KeyVault::VaultsApi.new(client.api_client)
        end

        def list(opts = {})
          Http::Paginator.new(api_client: @client.api_client) do
            @api.vaults_list_by_subscription(version, @client.subscription_id, opts)
          end
        end

        def list_by_resource_group(resource_group_name, opts = {})
          Http::Paginator.new(api_client: @client.api_client) do
            @api.vaults_list_by_resource_group(version, @client.subscription_id, resource_group_name, opts)
          end
        end

        def get(resource_group_name, vault_name, opts = {})
          @api.vaults_get(version, @client.subscription_id, resource_group_name, vault_name, opts)
        end

        def create_or_update(resource_group_name, vault_name, parameters, opts = {})
          @api.vaults_create_or_update(version, @client.subscription_id, resource_group_name, vault_name, parameters, opts)
        end

        def update(resource_group_name, vault_name, parameters, opts = {})
          @api.vaults_update(version, @client.subscription_id, resource_group_name, vault_name, parameters, opts)
        end

        def delete(resource_group_name, vault_name, opts = {})
          @api.vaults_delete(version, @client.subscription_id, resource_group_name, vault_name, opts)
        end

        private

        def version
          @client.api_version(:vaults)
        end
      end
    end
  end
end
