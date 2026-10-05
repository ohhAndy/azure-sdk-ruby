# frozen_string_literal: true

require_relative '../http/paginator'

module AzureRest
  module Authorization
    class Client
      attr_reader :api_client, :subscription_id, :profile

      def initialize(api_client, subscription_id, profile)
        @api_client      = api_client
        @subscription_id = subscription_id
        @profile         = profile
      end

      def role_assignments
        @role_assignments ||= RoleAssignmentsFacade.new(self)
      end

      def api_version(group)
        @profile.api_versions[group] || '2022-04-01'
      end

      class RoleAssignmentsFacade
        def initialize(client)
          @client = client
          @api = Authorization::RoleAssignmentsApi.new(client.api_client)
        end

        def list_for_subscription(opts = {})
          Http::Paginator.new(api_client: @client.api_client) do
            @api.role_assignments_list_for_subscription(version, @client.subscription_id, opts)
          end
        end
        alias list list_for_subscription

        def list_for_resource_group(resource_group_name, opts = {})
          Http::Paginator.new(api_client: @client.api_client) do
            @api.role_assignments_list_for_resource_group(version, @client.subscription_id, resource_group_name, opts)
          end
        end

        def list_for_scope(scope, opts = {})
          Http::Paginator.new(api_client: @client.api_client) do
            @api.role_assignments_list_for_scope(version, scope, opts)
          end
        end

        def get(scope, role_assignment_name, opts = {})
          @api.role_assignments_get(version, scope, role_assignment_name, opts)
        end

        def get_by_id(role_assignment_id, opts = {})
          @api.role_assignments_get_by_id(version, role_assignment_id, opts)
        end

        def create(scope, role_assignment_name, parameters, opts = {})
          @api.role_assignments_create(version, scope, role_assignment_name, parameters, opts)
        end

        def delete(scope, role_assignment_name, opts = {})
          @api.role_assignments_delete(version, scope, role_assignment_name, opts)
        end

        def delete_by_id(role_assignment_id, opts = {})
          @api.role_assignments_delete_by_id(version, role_assignment_id, opts)
        end

        private

        def version
          @client.api_version(:role_assignments)
        end
      end
    end
  end
end
