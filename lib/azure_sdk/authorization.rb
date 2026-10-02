# frozen_string_literal: true

module AzureSDK
  module Authorization
    autoload :ErrorAdditionalInfo, "azure_sdk/authorization/models/error_additional_info.rb"
    autoload :ErrorDetail, "azure_sdk/authorization/models/error_detail.rb"
    autoload :ErrorResponse, "azure_sdk/authorization/models/error_response.rb"
    autoload :ProxyResource, "azure_sdk/authorization/models/proxy_resource.rb"
    autoload :Resource, "azure_sdk/authorization/models/resource.rb"
    autoload :RoleAssignment, "azure_sdk/authorization/models/role_assignment.rb"
    autoload :RoleAssignmentCreateParameters, "azure_sdk/authorization/models/role_assignment_create_parameters.rb"
    autoload :RoleAssignmentListResult, "azure_sdk/authorization/models/role_assignment_list_result.rb"
    autoload :RoleAssignmentProperties, "azure_sdk/authorization/models/role_assignment_properties.rb"
    autoload :SystemData, "azure_sdk/authorization/models/system_data.rb"
    autoload :RoleAssignmentsApi, "azure_sdk/authorization/api/role_assignments_api.rb"
  end
end
