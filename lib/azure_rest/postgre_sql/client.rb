# frozen_string_literal: true

require_relative '../http/paginator'

module AzureRest
  module PostgreSQL
    class Client
      attr_reader :api_client, :subscription_id, :profile

      def initialize(api_client, subscription_id, profile)
        @api_client      = api_client
        @subscription_id = subscription_id
        @profile         = profile
      end

      def servers
        @servers ||= ServersFacade.new(self)
      end

      def databases
        @databases ||= DatabasesFacade.new(self)
      end

      def api_version(group)
        @profile.api_versions[group] || @profile.api_versions[:postgre_sql_servers] || '2022-12-01'
      end

      class ServersFacade
        def initialize(client)
          @client = client
          @api = PostgreSQL::ServersApi.new(client.api_client)
        end

        def list(opts = {})
          Http::Paginator.new(api_client: @client.api_client) do
            @api.servers_list(version, @client.subscription_id, opts)
          end
        end

        def list_by_resource_group(resource_group_name, opts = {})
          Http::Paginator.new(api_client: @client.api_client) do
            @api.servers_list_by_resource_group(version, @client.subscription_id, resource_group_name, opts)
          end
        end

        def get(resource_group_name, server_name, opts = {})
          @api.servers_get(version, @client.subscription_id, resource_group_name, server_name, opts)
        end

        def create(resource_group_name, server_name, parameters, opts = {})
          @api.servers_create(version, @client.subscription_id, resource_group_name, server_name, parameters, opts)
        end

        def update(resource_group_name, server_name, parameters, opts = {})
          @api.servers_update(version, @client.subscription_id, resource_group_name, server_name, parameters, opts)
        end

        def delete(resource_group_name, server_name, opts = {})
          @api.servers_delete(version, @client.subscription_id, resource_group_name, server_name, opts)
        end

        private

        def version
          @client.api_version(:postgre_sql_servers)
        end
      end

      class DatabasesFacade
        def initialize(client)
          @client = client
          @api = PostgreSQL::DatabasesApi.new(client.api_client)
        end

        def list_by_server(resource_group_name, server_name, opts = {})
          Http::Paginator.new(api_client: @client.api_client) do
            @api.databases_list_by_server(version, @client.subscription_id, resource_group_name, server_name, opts)
          end
        end

        def get(resource_group_name, server_name, database_name, opts = {})
          @api.databases_get(version, @client.subscription_id, resource_group_name, server_name, database_name, opts)
        end

        def create_or_update(resource_group_name, server_name, database_name, parameters, opts = {})
          @api.databases_create(version, @client.subscription_id, resource_group_name, server_name, database_name,
                                parameters, opts)
        end

        def delete(resource_group_name, server_name, database_name, opts = {})
          @api.databases_delete(version, @client.subscription_id, resource_group_name, server_name, database_name, opts)
        end

        private

        def version
          @client.api_version(:postgre_sql_servers)
        end
      end
    end
  end
end
