# AzureSDK::RoleAssignmentsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**role_assignments_create**](RoleAssignmentsApi.md#role_assignments_create) | **PUT** /{scope}/providers/Microsoft.Authorization/roleAssignments/{roleAssignmentName} |  |
| [**role_assignments_create_by_id**](RoleAssignmentsApi.md#role_assignments_create_by_id) | **PUT** /{roleAssignmentId} |  |
| [**role_assignments_delete**](RoleAssignmentsApi.md#role_assignments_delete) | **DELETE** /{scope}/providers/Microsoft.Authorization/roleAssignments/{roleAssignmentName} |  |
| [**role_assignments_delete_by_id**](RoleAssignmentsApi.md#role_assignments_delete_by_id) | **DELETE** /{roleAssignmentId} |  |
| [**role_assignments_get**](RoleAssignmentsApi.md#role_assignments_get) | **GET** /{scope}/providers/Microsoft.Authorization/roleAssignments/{roleAssignmentName} |  |
| [**role_assignments_get_by_id**](RoleAssignmentsApi.md#role_assignments_get_by_id) | **GET** /{roleAssignmentId} |  |
| [**role_assignments_list_for_resource**](RoleAssignmentsApi.md#role_assignments_list_for_resource) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}/providers/Microsoft.Authorization/roleAssignments |  |
| [**role_assignments_list_for_resource_group**](RoleAssignmentsApi.md#role_assignments_list_for_resource_group) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Authorization/roleAssignments |  |
| [**role_assignments_list_for_scope**](RoleAssignmentsApi.md#role_assignments_list_for_scope) | **GET** /{scope}/providers/Microsoft.Authorization/roleAssignments |  |
| [**role_assignments_list_for_subscription**](RoleAssignmentsApi.md#role_assignments_list_for_subscription) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Authorization/roleAssignments |  |


## role_assignments_create

> <RoleAssignment> role_assignments_create(api_version, scope, role_assignment_name, parameters)



Create or update a role assignment by scope and name.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::RoleAssignmentsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
scope = 'scope_example' # String | The fully qualified Azure Resource manager identifier of the resource.
role_assignment_name = 'role_assignment_name_example' # String | The name of the role assignment. It can be any valid GUID.
parameters = AzureSDK::RoleAssignmentCreateParameters.new({properties: AzureSDK::RoleAssignmentProperties.new({role_definition_id: 'role_definition_id_example', principal_id: 'principal_id_example'})}) # RoleAssignmentCreateParameters | Parameters for the role assignment.

begin
  
  result = api_instance.role_assignments_create(api_version, scope, role_assignment_name, parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling RoleAssignmentsApi->role_assignments_create: #{e}"
end
```

#### Using the role_assignments_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RoleAssignment>, Integer, Hash)> role_assignments_create_with_http_info(api_version, scope, role_assignment_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.role_assignments_create_with_http_info(api_version, scope, role_assignment_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RoleAssignment>
rescue AzureSDK::ApiError => e
  puts "Error when calling RoleAssignmentsApi->role_assignments_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **scope** | **String** | The fully qualified Azure Resource manager identifier of the resource. |  |
| **role_assignment_name** | **String** | The name of the role assignment. It can be any valid GUID. |  |
| **parameters** | [**RoleAssignmentCreateParameters**](RoleAssignmentCreateParameters.md) | Parameters for the role assignment. |  |

### Return type

[**RoleAssignment**](RoleAssignment.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## role_assignments_create_by_id

> <RoleAssignment> role_assignments_create_by_id(api_version, role_assignment_id, parameters)



Create or update a role assignment by ID.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::RoleAssignmentsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
role_assignment_id = 'role_assignment_id_example' # String | The fully qualified ID of the role assignment including scope, resource name, and resource type. Format: /{scope}/providers/Microsoft.Authorization/roleAssignments/{roleAssignmentName}. Example: /subscriptions/<SUB_ID>/resourcegroups/<RESOURCE_GROUP>/providers/Microsoft.Authorization/roleAssignments/<ROLE_ASSIGNMENT_NAME>
parameters = AzureSDK::RoleAssignmentCreateParameters.new({properties: AzureSDK::RoleAssignmentProperties.new({role_definition_id: 'role_definition_id_example', principal_id: 'principal_id_example'})}) # RoleAssignmentCreateParameters | Resource create parameters.

begin
  
  result = api_instance.role_assignments_create_by_id(api_version, role_assignment_id, parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling RoleAssignmentsApi->role_assignments_create_by_id: #{e}"
end
```

#### Using the role_assignments_create_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RoleAssignment>, Integer, Hash)> role_assignments_create_by_id_with_http_info(api_version, role_assignment_id, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.role_assignments_create_by_id_with_http_info(api_version, role_assignment_id, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RoleAssignment>
rescue AzureSDK::ApiError => e
  puts "Error when calling RoleAssignmentsApi->role_assignments_create_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **role_assignment_id** | **String** | The fully qualified ID of the role assignment including scope, resource name, and resource type. Format: /{scope}/providers/Microsoft.Authorization/roleAssignments/{roleAssignmentName}. Example: /subscriptions/&lt;SUB_ID&gt;/resourcegroups/&lt;RESOURCE_GROUP&gt;/providers/Microsoft.Authorization/roleAssignments/&lt;ROLE_ASSIGNMENT_NAME&gt; |  |
| **parameters** | [**RoleAssignmentCreateParameters**](RoleAssignmentCreateParameters.md) | Resource create parameters. |  |

### Return type

[**RoleAssignment**](RoleAssignment.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## role_assignments_delete

> <RoleAssignment> role_assignments_delete(api_version, scope, role_assignment_name, opts)



Delete a role assignment by scope and name.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::RoleAssignmentsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
scope = 'scope_example' # String | The fully qualified Azure Resource manager identifier of the resource.
role_assignment_name = 'role_assignment_name_example' # String | The name of the role assignment. It can be any valid GUID.
opts = {
  tenant_id: 'tenant_id_example' # String | Tenant ID for cross-tenant request
}

begin
  
  result = api_instance.role_assignments_delete(api_version, scope, role_assignment_name, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling RoleAssignmentsApi->role_assignments_delete: #{e}"
end
```

#### Using the role_assignments_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RoleAssignment>, Integer, Hash)> role_assignments_delete_with_http_info(api_version, scope, role_assignment_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.role_assignments_delete_with_http_info(api_version, scope, role_assignment_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RoleAssignment>
rescue AzureSDK::ApiError => e
  puts "Error when calling RoleAssignmentsApi->role_assignments_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **scope** | **String** | The fully qualified Azure Resource manager identifier of the resource. |  |
| **role_assignment_name** | **String** | The name of the role assignment. It can be any valid GUID. |  |
| **tenant_id** | **String** | Tenant ID for cross-tenant request | [optional] |

### Return type

[**RoleAssignment**](RoleAssignment.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## role_assignments_delete_by_id

> <RoleAssignment> role_assignments_delete_by_id(api_version, role_assignment_id, opts)



Delete a role assignment by ID.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::RoleAssignmentsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
role_assignment_id = 'role_assignment_id_example' # String | The fully qualified ID of the role assignment including scope, resource name, and resource type. Format: /{scope}/providers/Microsoft.Authorization/roleAssignments/{roleAssignmentName}. Example: /subscriptions/<SUB_ID>/resourcegroups/<RESOURCE_GROUP>/providers/Microsoft.Authorization/roleAssignments/<ROLE_ASSIGNMENT_NAME>
opts = {
  tenant_id: 'tenant_id_example' # String | Tenant ID for cross-tenant request
}

begin
  
  result = api_instance.role_assignments_delete_by_id(api_version, role_assignment_id, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling RoleAssignmentsApi->role_assignments_delete_by_id: #{e}"
end
```

#### Using the role_assignments_delete_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RoleAssignment>, Integer, Hash)> role_assignments_delete_by_id_with_http_info(api_version, role_assignment_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.role_assignments_delete_by_id_with_http_info(api_version, role_assignment_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RoleAssignment>
rescue AzureSDK::ApiError => e
  puts "Error when calling RoleAssignmentsApi->role_assignments_delete_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **role_assignment_id** | **String** | The fully qualified ID of the role assignment including scope, resource name, and resource type. Format: /{scope}/providers/Microsoft.Authorization/roleAssignments/{roleAssignmentName}. Example: /subscriptions/&lt;SUB_ID&gt;/resourcegroups/&lt;RESOURCE_GROUP&gt;/providers/Microsoft.Authorization/roleAssignments/&lt;ROLE_ASSIGNMENT_NAME&gt; |  |
| **tenant_id** | **String** | Tenant ID for cross-tenant request | [optional] |

### Return type

[**RoleAssignment**](RoleAssignment.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## role_assignments_get

> <RoleAssignment> role_assignments_get(api_version, scope, role_assignment_name, opts)



Get a role assignment by scope and name.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::RoleAssignmentsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
scope = 'scope_example' # String | The fully qualified Azure Resource manager identifier of the resource.
role_assignment_name = 'role_assignment_name_example' # String | The name of the role assignment. It can be any valid GUID.
opts = {
  tenant_id: 'tenant_id_example' # String | Tenant ID for cross-tenant request
}

begin
  
  result = api_instance.role_assignments_get(api_version, scope, role_assignment_name, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling RoleAssignmentsApi->role_assignments_get: #{e}"
end
```

#### Using the role_assignments_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RoleAssignment>, Integer, Hash)> role_assignments_get_with_http_info(api_version, scope, role_assignment_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.role_assignments_get_with_http_info(api_version, scope, role_assignment_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RoleAssignment>
rescue AzureSDK::ApiError => e
  puts "Error when calling RoleAssignmentsApi->role_assignments_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **scope** | **String** | The fully qualified Azure Resource manager identifier of the resource. |  |
| **role_assignment_name** | **String** | The name of the role assignment. It can be any valid GUID. |  |
| **tenant_id** | **String** | Tenant ID for cross-tenant request | [optional] |

### Return type

[**RoleAssignment**](RoleAssignment.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## role_assignments_get_by_id

> <RoleAssignment> role_assignments_get_by_id(api_version, role_assignment_id, opts)



Get a role assignment by ID.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::RoleAssignmentsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
role_assignment_id = 'role_assignment_id_example' # String | The fully qualified ID of the role assignment including scope, resource name, and resource type. Format: /{scope}/providers/Microsoft.Authorization/roleAssignments/{roleAssignmentName}. Example: /subscriptions/<SUB_ID>/resourcegroups/<RESOURCE_GROUP>/providers/Microsoft.Authorization/roleAssignments/<ROLE_ASSIGNMENT_NAME>
opts = {
  tenant_id: 'tenant_id_example' # String | Tenant ID for cross-tenant request
}

begin
  
  result = api_instance.role_assignments_get_by_id(api_version, role_assignment_id, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling RoleAssignmentsApi->role_assignments_get_by_id: #{e}"
end
```

#### Using the role_assignments_get_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RoleAssignment>, Integer, Hash)> role_assignments_get_by_id_with_http_info(api_version, role_assignment_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.role_assignments_get_by_id_with_http_info(api_version, role_assignment_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RoleAssignment>
rescue AzureSDK::ApiError => e
  puts "Error when calling RoleAssignmentsApi->role_assignments_get_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **role_assignment_id** | **String** | The fully qualified ID of the role assignment including scope, resource name, and resource type. Format: /{scope}/providers/Microsoft.Authorization/roleAssignments/{roleAssignmentName}. Example: /subscriptions/&lt;SUB_ID&gt;/resourcegroups/&lt;RESOURCE_GROUP&gt;/providers/Microsoft.Authorization/roleAssignments/&lt;ROLE_ASSIGNMENT_NAME&gt; |  |
| **tenant_id** | **String** | Tenant ID for cross-tenant request | [optional] |

### Return type

[**RoleAssignment**](RoleAssignment.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## role_assignments_list_for_resource

> <RoleAssignmentListResult> role_assignments_list_for_resource(api_version, subscription_id, resource_group_name, resource_provider_namespace, resource_type, resource_name, opts)



List all role assignments that apply to a resource.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::RoleAssignmentsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_provider_namespace = 'resource_provider_namespace_example' # String | The namespace of the resource provider.
resource_type = 'resource_type_example' # String | The resource type of the resource.
resource_name = 'resource_name_example' # String | The name of the resource to get role assignments for.
opts = {
  filter: 'filter_example', # String | The filter to apply on the operation. Use $filter=atScope() to return all role assignments at or above the scope. Use $filter=principalId eq {id} to return all role assignments at, above or below the scope for the specified principal.
  tenant_id: 'tenant_id_example' # String | Tenant ID for cross-tenant request
}

begin
  
  result = api_instance.role_assignments_list_for_resource(api_version, subscription_id, resource_group_name, resource_provider_namespace, resource_type, resource_name, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling RoleAssignmentsApi->role_assignments_list_for_resource: #{e}"
end
```

#### Using the role_assignments_list_for_resource_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RoleAssignmentListResult>, Integer, Hash)> role_assignments_list_for_resource_with_http_info(api_version, subscription_id, resource_group_name, resource_provider_namespace, resource_type, resource_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.role_assignments_list_for_resource_with_http_info(api_version, subscription_id, resource_group_name, resource_provider_namespace, resource_type, resource_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RoleAssignmentListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling RoleAssignmentsApi->role_assignments_list_for_resource_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **resource_provider_namespace** | **String** | The namespace of the resource provider. |  |
| **resource_type** | **String** | The resource type of the resource. |  |
| **resource_name** | **String** | The name of the resource to get role assignments for. |  |
| **filter** | **String** | The filter to apply on the operation. Use $filter&#x3D;atScope() to return all role assignments at or above the scope. Use $filter&#x3D;principalId eq {id} to return all role assignments at, above or below the scope for the specified principal. | [optional] |
| **tenant_id** | **String** | Tenant ID for cross-tenant request | [optional] |

### Return type

[**RoleAssignmentListResult**](RoleAssignmentListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## role_assignments_list_for_resource_group

> <RoleAssignmentListResult> role_assignments_list_for_resource_group(api_version, subscription_id, resource_group_name, opts)



List all role assignments that apply to a resource group.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::RoleAssignmentsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
opts = {
  filter: 'filter_example', # String | The filter to apply on the operation. Use $filter=atScope() to return all role assignments at or above the scope. Use $filter=principalId eq {id} to return all role assignments at, above or below the scope for the specified principal.
  tenant_id: 'tenant_id_example' # String | Tenant ID for cross-tenant request
}

begin
  
  result = api_instance.role_assignments_list_for_resource_group(api_version, subscription_id, resource_group_name, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling RoleAssignmentsApi->role_assignments_list_for_resource_group: #{e}"
end
```

#### Using the role_assignments_list_for_resource_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RoleAssignmentListResult>, Integer, Hash)> role_assignments_list_for_resource_group_with_http_info(api_version, subscription_id, resource_group_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.role_assignments_list_for_resource_group_with_http_info(api_version, subscription_id, resource_group_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RoleAssignmentListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling RoleAssignmentsApi->role_assignments_list_for_resource_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **filter** | **String** | The filter to apply on the operation. Use $filter&#x3D;atScope() to return all role assignments at or above the scope. Use $filter&#x3D;principalId eq {id} to return all role assignments at, above or below the scope for the specified principal. | [optional] |
| **tenant_id** | **String** | Tenant ID for cross-tenant request | [optional] |

### Return type

[**RoleAssignmentListResult**](RoleAssignmentListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## role_assignments_list_for_scope

> <RoleAssignmentListResult> role_assignments_list_for_scope(api_version, scope, opts)



List all role assignments that apply to a scope.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::RoleAssignmentsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
scope = 'scope_example' # String | The fully qualified Azure Resource manager identifier of the resource.
opts = {
  filter: 'filter_example', # String | The filter to apply on the operation. Use $filter=atScope() to return all role assignments at or above the scope. Use $filter=principalId eq {id} to return all role assignments at, above or below the scope for the specified principal.
  tenant_id: 'tenant_id_example', # String | Tenant ID for cross-tenant request
  skip_token: 'skip_token_example' # String | The skipToken to apply on the operation. Use $skipToken={skiptoken} to return paged role assignments following the skipToken passed. Only supported on provider level calls.
}

begin
  
  result = api_instance.role_assignments_list_for_scope(api_version, scope, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling RoleAssignmentsApi->role_assignments_list_for_scope: #{e}"
end
```

#### Using the role_assignments_list_for_scope_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RoleAssignmentListResult>, Integer, Hash)> role_assignments_list_for_scope_with_http_info(api_version, scope, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.role_assignments_list_for_scope_with_http_info(api_version, scope, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RoleAssignmentListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling RoleAssignmentsApi->role_assignments_list_for_scope_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **scope** | **String** | The fully qualified Azure Resource manager identifier of the resource. |  |
| **filter** | **String** | The filter to apply on the operation. Use $filter&#x3D;atScope() to return all role assignments at or above the scope. Use $filter&#x3D;principalId eq {id} to return all role assignments at, above or below the scope for the specified principal. | [optional] |
| **tenant_id** | **String** | Tenant ID for cross-tenant request | [optional] |
| **skip_token** | **String** | The skipToken to apply on the operation. Use $skipToken&#x3D;{skiptoken} to return paged role assignments following the skipToken passed. Only supported on provider level calls. | [optional] |

### Return type

[**RoleAssignmentListResult**](RoleAssignmentListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## role_assignments_list_for_subscription

> <RoleAssignmentListResult> role_assignments_list_for_subscription(api_version, subscription_id, opts)



List all role assignments that apply to a subscription.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::RoleAssignmentsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
opts = {
  filter: 'filter_example', # String | The filter to apply on the operation. Use $filter=atScope() to return all role assignments at or above the scope. Use $filter=principalId eq {id} to return all role assignments at, above or below the scope for the specified principal.
  tenant_id: 'tenant_id_example' # String | Tenant ID for cross-tenant request
}

begin
  
  result = api_instance.role_assignments_list_for_subscription(api_version, subscription_id, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling RoleAssignmentsApi->role_assignments_list_for_subscription: #{e}"
end
```

#### Using the role_assignments_list_for_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RoleAssignmentListResult>, Integer, Hash)> role_assignments_list_for_subscription_with_http_info(api_version, subscription_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.role_assignments_list_for_subscription_with_http_info(api_version, subscription_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RoleAssignmentListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling RoleAssignmentsApi->role_assignments_list_for_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **filter** | **String** | The filter to apply on the operation. Use $filter&#x3D;atScope() to return all role assignments at or above the scope. Use $filter&#x3D;principalId eq {id} to return all role assignments at, above or below the scope for the specified principal. | [optional] |
| **tenant_id** | **String** | Tenant ID for cross-tenant request | [optional] |

### Return type

[**RoleAssignmentListResult**](RoleAssignmentListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

