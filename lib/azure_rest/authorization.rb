# frozen_string_literal: true

module AzureRest
  module Authorization
    autoload :ErrorAdditionalInfo, "azure_rest/authorization/models/error_additional_info.rb"
    autoload :ErrorDetail, "azure_rest/authorization/models/error_detail.rb"
    autoload :ErrorResponse, "azure_rest/authorization/models/error_response.rb"
    autoload :ProxyResource, "azure_rest/authorization/models/proxy_resource.rb"
    autoload :Resource, "azure_rest/authorization/models/resource.rb"
    autoload :RoleAssignment, "azure_rest/authorization/models/role_assignment.rb"
    autoload :RoleAssignmentCreateParameters, "azure_rest/authorization/models/role_assignment_create_parameters.rb"
    autoload :RoleAssignmentListResult, "azure_rest/authorization/models/role_assignment_list_result.rb"
    autoload :RoleAssignmentProperties, "azure_rest/authorization/models/role_assignment_properties.rb"
    autoload :SystemData, "azure_rest/authorization/models/system_data.rb"
    autoload :RoleAssignmentsApi, "azure_rest/authorization/api/role_assignments_api.rb"
  end
end
