# frozen_string_literal: true

require_relative '../http/paginator'

module AzureRest
  module Storage
    class Client
      attr_reader :api_client, :subscription_id, :profile

      def initialize(api_client, subscription_id, profile)
        @api_client      = api_client
        @subscription_id = subscription_id
        @profile         = profile
      end

      def storage_accounts
        @storage_accounts ||= StorageAccountsFacade.new(self)
      end

      def api_version(group)
        @profile.api_versions[group] || @profile.api_versions[:storage_accounts] || '2023-05-01'
      end

      class StorageAccountsFacade
        def initialize(client)
          @client = client
          @api = Storage::StorageAccountsApi.new(client.api_client)
        end

        def list_all(opts = {})
          Http::Paginator.new(api_client: @client.api_client) do
            @api.storage_accounts_list(version, @client.subscription_id, opts)
          end
        end

        def list_by_resource_group(resource_group_name, opts = {})
          Http::Paginator.new(api_client: @client.api_client) do
            @api.storage_accounts_list_by_resource_group(version, @client.subscription_id, resource_group_name, opts)
          end
        end

        def get(resource_group_name, account_name, opts = {})
          @api.storage_accounts_get_properties(version, @client.subscription_id, resource_group_name, account_name, opts)
        end

        def create(resource_group_name, account_name, parameters, opts = {})
          @api.storage_accounts_create(version, @client.subscription_id, resource_group_name, account_name, parameters, opts)
        end

        def update(resource_group_name, account_name, parameters, opts = {})
          @api.storage_accounts_update(version, @client.subscription_id, resource_group_name, account_name, parameters, opts)
        end

        def delete(resource_group_name, account_name, opts = {})
          @api.storage_accounts_delete(version, @client.subscription_id, resource_group_name, account_name, opts)
        end

        def list_account_keys(resource_group_name, account_name, opts = {})
          @api.storage_accounts_list_keys(version, @client.subscription_id, resource_group_name, account_name, opts)
        end
        alias list_keys list_account_keys

        private

        def version
          @client.api_version(:storage_accounts)
        end
      end
    end
  end
end
