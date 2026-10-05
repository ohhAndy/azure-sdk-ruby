# frozen_string_literal: true

require_relative '../http/paginator'

module AzureRest
  module Compute
    class Client
      attr_reader :api_client, :subscription_id, :profile

      def initialize(api_client, subscription_id, profile)
        @api_client      = api_client
        @subscription_id = subscription_id
        @profile         = profile
      end

      def virtual_machines
        @virtual_machines ||= VirtualMachinesFacade.new(self)
      end

      def virtual_machine_sizes
        @virtual_machine_sizes ||= VirtualMachineSizesFacade.new(self)
      end

      def availability_sets
        @availability_sets ||= AvailabilitySetsFacade.new(self)
      end

      def disks
        @disks ||= DisksFacade.new(self)
      end

      def snapshots
        @snapshots ||= SnapshotsFacade.new(self)
      end

      def api_version(group)
        @profile.api_versions[group] || @profile.api_versions[:virtual_machines] || '2024-07-01'
      end

      class VirtualMachinesFacade
        def initialize(client)
          @client = client
          @api = Compute::VirtualMachinesApi.new(client.api_client)
        end

        def list_all(opts = {})
          Http::Paginator.new(api_client: @client.api_client) do
            @api.virtual_machines_list_all(version, @client.subscription_id, opts)
          end
        end

        def list(resource_group_name, opts = {})
          Http::Paginator.new(api_client: @client.api_client) do
            @api.virtual_machines_list(version, @client.subscription_id, resource_group_name, opts)
          end
        end

        def get(resource_group_name, vm_name, opts = {})
          @api.virtual_machines_get(version, @client.subscription_id, resource_group_name, vm_name, opts)
        end

        def create_or_update(resource_group_name, vm_name, parameters, opts = {})
          @api.virtual_machines_create_or_update(
            version, @client.subscription_id, resource_group_name, vm_name, parameters, opts
          )
        end

        def update(resource_group_name, vm_name, parameters, opts = {})
          @api.virtual_machines_update(version, @client.subscription_id, resource_group_name, vm_name, parameters, opts)
        end

        def delete(resource_group_name, vm_name, opts = {})
          @api.virtual_machines_delete(version, @client.subscription_id, resource_group_name, vm_name, opts)
        end

        def start(resource_group_name, vm_name, opts = {})
          @api.virtual_machines_start(version, @client.subscription_id, resource_group_name, vm_name, opts)
        end

        def stop(resource_group_name, vm_name, opts = {})
          @api.virtual_machines_power_off(version, @client.subscription_id, resource_group_name, vm_name, opts)
        end
        alias power_off stop

        def restart(resource_group_name, vm_name, opts = {})
          @api.virtual_machines_restart(version, @client.subscription_id, resource_group_name, vm_name, opts)
        end

        def deallocate(resource_group_name, vm_name, opts = {})
          @api.virtual_machines_deallocate(version, @client.subscription_id, resource_group_name, vm_name, opts)
        end

        def instance_view(resource_group_name, vm_name, opts = {})
          @api.virtual_machines_instance_view(version, @client.subscription_id, resource_group_name, vm_name, opts)
        end

        def delete_associated_resources(resource_group_name, vm_name)
          vm = get(resource_group_name, vm_name)
          delete(resource_group_name, vm_name)

          storage_profile = vm.respond_to?(:properties) && vm.properties&.storage_profile
          if storage_profile
            os_disk = storage_profile.os_disk
            @client.disks.delete(resource_group_name, os_disk.name) if os_disk&.managed_disk&.id

            Array(storage_profile.data_disks).each do |disk|
              @client.disks.delete(resource_group_name, disk.name) if disk&.managed_disk&.id
            end
          end

          network_profile = vm.respond_to?(:properties) && vm.properties&.network_profile
          Array(network_profile&.network_interfaces).each do |nic_ref|
            nic_id = nic_ref.respond_to?(:id) ? nic_ref.id : nic_ref[:id]
            next unless nic_id

            nic_version = @client.api_version(:network_interfaces)
            @client.api_client.call_api(:DELETE, nic_id, query_params: { 'api-version' => nic_version })
          end

          vm
        end

        private

        def version
          @client.api_version(:virtual_machines)
        end
      end

      class VirtualMachineSizesFacade
        def initialize(client)
          @client = client
          @api = Compute::VirtualMachineSizesApi.new(client.api_client)
        end

        def list(location, opts = {})
          Http::Paginator.new(api_client: @client.api_client) do
            @api.virtual_machine_sizes_list(version, @client.subscription_id, location, opts)
          end
        end

        private

        def version
          @client.api_version(:virtual_machine_sizes)
        end
      end

      class AvailabilitySetsFacade
        def initialize(client)
          @client = client
          @api = Compute::AvailabilitySetsApi.new(client.api_client)
        end

        def list_all(opts = {})
          Http::Paginator.new(api_client: @client.api_client) do
            @api.availability_sets_list_by_subscription(version, @client.subscription_id, opts)
          end
        end

        def list(resource_group_name, opts = {})
          Http::Paginator.new(api_client: @client.api_client) do
            @api.availability_sets_list(version, @client.subscription_id, resource_group_name, opts)
          end
        end

        def get(resource_group_name, availability_set_name, opts = {})
          @api.availability_sets_get(version, @client.subscription_id, resource_group_name, availability_set_name, opts)
        end

        def create_or_update(resource_group_name, availability_set_name, parameters, opts = {})
          @api.availability_sets_create_or_update(
            version, @client.subscription_id, resource_group_name, availability_set_name, parameters, opts
          )
        end

        def delete(resource_group_name, availability_set_name, opts = {})
          @api.availability_sets_delete(
            version, @client.subscription_id, resource_group_name, availability_set_name, opts
          )
        end

        private

        def version
          @client.api_version(:availability_sets)
        end
      end

      class DisksFacade
        def initialize(client)
          @client = client
        end

        def list_all(_opts = {})
          Http::Paginator.new(api_client: @client.api_client) do
            data, = @client.api_client.call_api(
              :GET,
              "/subscriptions/#{@client.subscription_id}/providers/Microsoft.Compute/disks",
              query_params: { 'api-version' => version }
            )
            data
          end
        end

        def get(resource_group_name, disk_name, _opts = {})
          data, = @client.api_client.call_api(
            :GET,
            "/subscriptions/#{@client.subscription_id}/resourceGroups/" \
            "#{resource_group_name}/providers/Microsoft.Compute/disks/#{disk_name}",
            query_params: { 'api-version' => version }
          )
          data
        end

        def create_or_update(resource_group_name, disk_name, disk, _opts = {})
          data, = @client.api_client.call_api(
            :PUT,
            "/subscriptions/#{@client.subscription_id}/resourceGroups/" \
            "#{resource_group_name}/providers/Microsoft.Compute/disks/#{disk_name}",
            query_params: { 'api-version' => version },
            body: disk,
            header_params: { 'Content-Type' => 'application/json' }
          )
          data
        end

        def delete(resource_group_name, disk_name, _opts = {})
          data, = @client.api_client.call_api(
            :DELETE,
            "/subscriptions/#{@client.subscription_id}/resourceGroups/" \
            "#{resource_group_name}/providers/Microsoft.Compute/disks/#{disk_name}",
            query_params: { 'api-version' => version }
          )
          data
        end

        private

        def version
          @client.api_version(:disks)
        end
      end

      class SnapshotsFacade
        def initialize(client)
          @client = client
        end

        def list_all(_opts = {})
          Http::Paginator.new(api_client: @client.api_client) do
            data, = @client.api_client.call_api(
              :GET,
              "/subscriptions/#{@client.subscription_id}/providers/Microsoft.Compute/snapshots",
              query_params: { 'api-version' => version }
            )
            data
          end
        end

        def get(resource_group_name, snapshot_name, _opts = {})
          data, = @client.api_client.call_api(
            :GET,
            "/subscriptions/#{@client.subscription_id}/resourceGroups/" \
            "#{resource_group_name}/providers/Microsoft.Compute/snapshots/#{snapshot_name}",
            query_params: { 'api-version' => version }
          )
          data
        end

        def create_or_update(resource_group_name, snapshot_name, snapshot, _opts = {})
          data, = @client.api_client.call_api(
            :PUT,
            "/subscriptions/#{@client.subscription_id}/resourceGroups/" \
            "#{resource_group_name}/providers/Microsoft.Compute/snapshots/#{snapshot_name}",
            query_params: { 'api-version' => version },
            body: snapshot,
            header_params: { 'Content-Type' => 'application/json' }
          )
          data
        end

        def delete(resource_group_name, snapshot_name, _opts = {})
          data, = @client.api_client.call_api(
            :DELETE,
            "/subscriptions/#{@client.subscription_id}/resourceGroups/" \
            "#{resource_group_name}/providers/Microsoft.Compute/snapshots/#{snapshot_name}",
            query_params: { 'api-version' => version }
          )
          data
        end

        private

        def version
          @client.api_version(:snapshots)
        end
      end
    end
  end
end
