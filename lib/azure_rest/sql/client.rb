# frozen_string_literal: true

require_relative '../http/paginator'

module AzureRest
  module Sql
    class Client
      attr_reader :api_client, :subscription_id, :profile

      def initialize(api_client, subscription_id, profile)
        @api_client      = api_client
        @subscription_id = subscription_id
        @profile         = profile
      end

      def sql_servers
        @sql_servers ||= SqlServersFacade.new(self)
      end
      alias servers sql_servers

      def databases
        @databases ||= DatabasesFacade.new(self)
      end

      def api_version(group)
        @profile.api_versions[group] || @profile.api_versions[:sql_servers] || '2023-08-01-preview'
      end

      class SqlServersFacade
        def initialize(client)
          @client = client
          @api = Sql::ServersApi.new(client.api_client)
        end

        def list_all(opts = {})
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

        def create_or_update(resource_group_name, server_name, parameters, opts = {})
          @api.servers_create_or_update(version, @client.subscription_id, resource_group_name, server_name, parameters, opts)
        end

        def update(resource_group_name, server_name, parameters, opts = {})
          @api.servers_update(version, @client.subscription_id, resource_group_name, server_name, parameters, opts)
        end

        def delete(resource_group_name, server_name, opts = {})
          @api.servers_delete(version, @client.subscription_id, resource_group_name, server_name, opts)
        end

        private

        def version
          @client.api_version(:sql_servers)
        end
      end

      class DatabasesFacade
        def initialize(client)
          @client = client
        end

        def list_by_server(resource_group_name, server_name, opts = {})
          Http::Paginator.new(api_client: @client.api_client) do
            data, _, _ = @client.api_client.call_api(
              :GET,
              "/subscriptions/#{@client.subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Sql/servers/#{server_name}/databases",
              query_params: { 'api-version' => version }
            )
            data
          end
        end
        alias list list_by_server

        def get(resource_group_name, server_name, database_name, opts = {})
          data, _, _ = @client.api_client.call_api(
            :GET,
            "/subscriptions/#{@client.subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Sql/servers/#{server_name}/databases/#{database_name}",
            query_params: { 'api-version' => version }
          )
          data
        end

        def create_or_update(resource_group_name, server_name, database_name, parameters, opts = {})
          data, _, _ = @client.api_client.call_api(
            :PUT,
            "/subscriptions/#{@client.subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Sql/servers/#{server_name}/databases/#{database_name}",
            query_params: { 'api-version' => version },
            body: parameters,
            header_params: { 'Content-Type' => 'application/json' }
          )
          data
        end

        def delete(resource_group_name, server_name, database_name, opts = {})
          data, _, _ = @client.api_client.call_api(
            :DELETE,
            "/subscriptions/#{@client.subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Sql/servers/#{server_name}/databases/#{database_name}",
            query_params: { 'api-version' => version }
          )
          data
        end

        private

        def version
          @client.api_version(:databases)
        end
      end
    end
  end
end
