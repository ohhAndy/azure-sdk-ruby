# frozen_string_literal: true

require_relative '../http/paginator'

module AzureRest
  module MariaDB
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
        @profile.api_versions[group] || @profile.api_versions[:maria_db_servers] || '2018-06-01'
      end

      class ServersFacade
        def initialize(client)
          @client = client
        end

        def list(_opts = {})
          Http::Paginator.new(api_client: @client.api_client) do
            data, = @client.api_client.call_api(
              :GET,
              "/subscriptions/#{@client.subscription_id}/providers/Microsoft.DBforMariaDB/servers",
              query_params: { 'api-version' => version }
            )
            data
          end
        end

        def list_by_resource_group(resource_group_name, _opts = {})
          Http::Paginator.new(api_client: @client.api_client) do
            data, = @client.api_client.call_api(
              :GET,
              "/subscriptions/#{@client.subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.DBforMariaDB/servers",
              query_params: { 'api-version' => version }
            )
            data
          end
        end

        def get(resource_group_name, server_name, _opts = {})
          data, = @client.api_client.call_api(
            :GET,
            "/subscriptions/#{@client.subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.DBforMariaDB/servers/#{server_name}",
            query_params: { 'api-version' => version }
          )
          data
        end

        def create_or_update(resource_group_name, server_name, parameters, _opts = {})
          data, = @client.api_client.call_api(
            :PUT,
            "/subscriptions/#{@client.subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.DBforMariaDB/servers/#{server_name}",
            query_params: { 'api-version' => version },
            body: parameters,
            header_params: { 'Content-Type' => 'application/json' }
          )
          data
        end

        def delete(resource_group_name, server_name, _opts = {})
          data, = @client.api_client.call_api(
            :DELETE,
            "/subscriptions/#{@client.subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.DBforMariaDB/servers/#{server_name}",
            query_params: { 'api-version' => version }
          )
          data
        end

        private

        def version
          @client.api_version(:maria_db_servers)
        end
      end

      class DatabasesFacade
        def initialize(client)
          @client = client
        end

        def list_by_server(resource_group_name, server_name, _opts = {})
          Http::Paginator.new(api_client: @client.api_client) do
            data, = @client.api_client.call_api(
              :GET,
              "/subscriptions/#{@client.subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.DBforMariaDB/servers/#{server_name}/databases",
              query_params: { 'api-version' => version }
            )
            data
          end
        end

        def get(resource_group_name, server_name, database_name, _opts = {})
          data, = @client.api_client.call_api(
            :GET,
            "/subscriptions/#{@client.subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.DBforMariaDB/servers/#{server_name}/databases/#{database_name}",
            query_params: { 'api-version' => version }
          )
          data
        end

        def create_or_update(resource_group_name, server_name, database_name, parameters, _opts = {})
          data, = @client.api_client.call_api(
            :PUT,
            "/subscriptions/#{@client.subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.DBforMariaDB/servers/#{server_name}/databases/#{database_name}",
            query_params: { 'api-version' => version },
            body: parameters,
            header_params: { 'Content-Type' => 'application/json' }
          )
          data
        end

        def delete(resource_group_name, server_name, database_name, _opts = {})
          data, = @client.api_client.call_api(
            :DELETE,
            "/subscriptions/#{@client.subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.DBforMariaDB/servers/#{server_name}/databases/#{database_name}",
            query_params: { 'api-version' => version }
          )
          data
        end

        private

        def version
          @client.api_version(:maria_db_servers)
        end
      end
    end
  end
end
