# frozen_string_literal: true

require_relative '../http/paginator'

module AzureRest
  module Network
    class Client
      attr_reader :api_client, :subscription_id, :profile

      def initialize(api_client, subscription_id, profile)
        @api_client      = api_client
        @subscription_id = subscription_id
        @profile         = profile
      end

      def virtual_networks
        @virtual_networks ||= VirtualNetworksFacade.new(self)
      end

      def network_interfaces
        @network_interfaces ||= NetworkInterfacesFacade.new(self)
      end

      def network_security_groups
        @network_security_groups ||= NetworkSecurityGroupsFacade.new(self)
      end

      def public_ip_addresses
        @public_ip_addresses ||= PublicIPAddressesFacade.new(self)
      end

      def load_balancers
        @load_balancers ||= LoadBalancersFacade.new(self)
      end

      def route_tables
        @route_tables ||= RouteTablesFacade.new(self)
      end

      def api_version(group)
        @profile.api_versions[group] || @profile.api_versions[:virtual_networks] || '2024-05-01'
      end

      class VirtualNetworksFacade
        def initialize(client)
          @client = client
          @api = Network::VirtualNetworksApi.new(client.api_client)
        end

        def list_all(opts = {})
          Http::Paginator.new(api_client: @client.api_client) do
            @api.virtual_networks_list_all(version, @client.subscription_id, opts)
          end
        end

        def list(resource_group_name, opts = {})
          Http::Paginator.new(api_client: @client.api_client) do
            @api.virtual_networks_list(version, @client.subscription_id, resource_group_name, opts)
          end
        end

        def get(resource_group_name, vnet_name, opts = {})
          @api.virtual_networks_get(version, @client.subscription_id, resource_group_name, vnet_name, opts)
        end

        def create_or_update(resource_group_name, vnet_name, parameters, opts = {})
          @api.virtual_networks_create_or_update(version, @client.subscription_id, resource_group_name, vnet_name, parameters, opts)
        end

        def delete(resource_group_name, vnet_name, opts = {})
          @api.virtual_networks_delete(version, @client.subscription_id, resource_group_name, vnet_name, opts)
        end

        private

        def version
          @client.api_version(:virtual_networks)
        end
      end

      class NetworkInterfacesFacade
        def initialize(client)
          @client = client
          @api = Network::NetworkInterfacesApi.new(client.api_client)
        end

        def list_all(opts = {})
          Http::Paginator.new(api_client: @client.api_client) do
            @api.network_interfaces_list_all(version, @client.subscription_id, opts)
          end
        end

        def list(resource_group_name, opts = {})
          Http::Paginator.new(api_client: @client.api_client) do
            @api.network_interfaces_list(version, @client.subscription_id, resource_group_name, opts)
          end
        end

        def get(resource_group_name, nic_name, opts = {})
          @api.network_interfaces_get(version, @client.subscription_id, resource_group_name, nic_name, opts)
        end

        def create_or_update(resource_group_name, nic_name, parameters, opts = {})
          @api.network_interfaces_create_or_update(version, @client.subscription_id, resource_group_name, nic_name, parameters, opts)
        end

        def delete(resource_group_name, nic_name, opts = {})
          @api.network_interfaces_delete(version, @client.subscription_id, resource_group_name, nic_name, opts)
        end

        private

        def version
          @client.api_version(:network_interfaces)
        end
      end

      class NetworkSecurityGroupsFacade
        def initialize(client)
          @client = client
          @api = Network::NetworkSecurityGroupsApi.new(client.api_client)
        end

        def list_all(opts = {})
          Http::Paginator.new(api_client: @client.api_client) do
            @api.network_security_groups_list_all(version, @client.subscription_id, opts)
          end
        end

        def list(resource_group_name, opts = {})
          Http::Paginator.new(api_client: @client.api_client) do
            @api.network_security_groups_list(version, @client.subscription_id, resource_group_name, opts)
          end
        end

        def get(resource_group_name, nsg_name, opts = {})
          @api.network_security_groups_get(version, @client.subscription_id, resource_group_name, nsg_name, opts)
        end

        def create_or_update(resource_group_name, nsg_name, parameters, opts = {})
          @api.network_security_groups_create_or_update(version, @client.subscription_id, resource_group_name, nsg_name, parameters, opts)
        end

        def delete(resource_group_name, nsg_name, opts = {})
          @api.network_security_groups_delete(version, @client.subscription_id, resource_group_name, nsg_name, opts)
        end

        private

        def version
          @client.api_version(:network_security_groups)
        end
      end

      class PublicIPAddressesFacade
        def initialize(client)
          @client = client
          @api = Network::PublicIPAddressesApi.new(client.api_client)
        end

        def list_all(opts = {})
          Http::Paginator.new(api_client: @client.api_client) do
            @api.public_ip_addresses_list_all(version, @client.subscription_id, opts)
          end
        end

        def list(resource_group_name, opts = {})
          Http::Paginator.new(api_client: @client.api_client) do
            @api.public_ip_addresses_list(version, @client.subscription_id, resource_group_name, opts)
          end
        end

        def get(resource_group_name, ip_name, opts = {})
          @api.public_ip_addresses_get(version, @client.subscription_id, resource_group_name, ip_name, opts)
        end

        def create_or_update(resource_group_name, ip_name, parameters, opts = {})
          @api.public_ip_addresses_create_or_update(version, @client.subscription_id, resource_group_name, ip_name, parameters, opts)
        end

        def delete(resource_group_name, ip_name, opts = {})
          @api.public_ip_addresses_delete(version, @client.subscription_id, resource_group_name, ip_name, opts)
        end

        private

        def version
          @client.api_version(:public_ip_addresses)
        end
      end

      class LoadBalancersFacade
        def initialize(client)
          @client = client
        end

        def list_all(opts = {})
          Http::Paginator.new(api_client: @client.api_client) do
            data, _, _ = @client.api_client.call_api(
              :GET,
              "/subscriptions/#{@client.subscription_id}/providers/Microsoft.Network/loadBalancers",
              query_params: { 'api-version' => version }
            )
            data
          end
        end

        def get(resource_group_name, lb_name, opts = {})
          data, _, _ = @client.api_client.call_api(
            :GET,
            "/subscriptions/#{@client.subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Network/loadBalancers/#{lb_name}",
            query_params: { 'api-version' => version }
          )
          data
        end

        private

        def version
          @client.api_version(:load_balancers)
        end
      end

      class RouteTablesFacade
        def initialize(client)
          @client = client
          @api = Network::RouteTablesApi.new(client.api_client)
        end

        def list_all(opts = {})
          Http::Paginator.new(api_client: @client.api_client) do
            @api.route_tables_list_all(version, @client.subscription_id, opts)
          end
        end

        def list(resource_group_name, opts = {})
          Http::Paginator.new(api_client: @client.api_client) do
            @api.route_tables_list(version, @client.subscription_id, resource_group_name, opts)
          end
        end

        def get(resource_group_name, route_table_name, opts = {})
          @api.route_tables_get(version, @client.subscription_id, resource_group_name, route_table_name, opts)
        end

        private

        def version
          @client.api_version(:route_tables)
        end
      end
    end
  end
end
