# AzureSDK::TrustedAccessApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**trusted_access_role_bindings_create_or_update**](TrustedAccessApi.md#trusted_access_role_bindings_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/trustedAccessRoleBindings/{trustedAccessRoleBindingName} |  |
| [**trusted_access_role_bindings_delete**](TrustedAccessApi.md#trusted_access_role_bindings_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/trustedAccessRoleBindings/{trustedAccessRoleBindingName} |  |
| [**trusted_access_role_bindings_get**](TrustedAccessApi.md#trusted_access_role_bindings_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/trustedAccessRoleBindings/{trustedAccessRoleBindingName} |  |
| [**trusted_access_role_bindings_list**](TrustedAccessApi.md#trusted_access_role_bindings_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/trustedAccessRoleBindings |  |
| [**trusted_access_roles_list**](TrustedAccessApi.md#trusted_access_roles_list) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.ContainerService/locations/{location}/trustedAccessRoles |  |


## trusted_access_role_bindings_create_or_update

> <TrustedAccessRoleBinding> trusted_access_role_bindings_create_or_update(api_version, subscription_id, resource_group_name, resource_name, trusted_access_role_binding_name, trusted_access_role_binding)



Create or update a trusted access role binding

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::TrustedAccessApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.
trusted_access_role_binding_name = 'trusted_access_role_binding_name_example' # String | The name of trusted access role binding.
trusted_access_role_binding = AzureSDK::TrustedAccessRoleBinding.new({properties: AzureSDK::TrustedAccessRoleBindingProperties.new({source_resource_id: 'source_resource_id_example', roles: ['roles_example']})}) # TrustedAccessRoleBinding | A trusted access role binding

begin
  
  result = api_instance.trusted_access_role_bindings_create_or_update(api_version, subscription_id, resource_group_name, resource_name, trusted_access_role_binding_name, trusted_access_role_binding)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling TrustedAccessApi->trusted_access_role_bindings_create_or_update: #{e}"
end
```

#### Using the trusted_access_role_bindings_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TrustedAccessRoleBinding>, Integer, Hash)> trusted_access_role_bindings_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, resource_name, trusted_access_role_binding_name, trusted_access_role_binding)

```ruby
begin
  
  data, status_code, headers = api_instance.trusted_access_role_bindings_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, resource_name, trusted_access_role_binding_name, trusted_access_role_binding)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TrustedAccessRoleBinding>
rescue AzureSDK::ApiError => e
  puts "Error when calling TrustedAccessApi->trusted_access_role_bindings_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **resource_name** | **String** | The name of the managed cluster resource. |  |
| **trusted_access_role_binding_name** | **String** | The name of trusted access role binding. |  |
| **trusted_access_role_binding** | [**TrustedAccessRoleBinding**](TrustedAccessRoleBinding.md) | A trusted access role binding |  |

### Return type

[**TrustedAccessRoleBinding**](TrustedAccessRoleBinding.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## trusted_access_role_bindings_delete

> trusted_access_role_bindings_delete(api_version, subscription_id, resource_group_name, resource_name, trusted_access_role_binding_name)



Delete a trusted access role binding.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::TrustedAccessApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.
trusted_access_role_binding_name = 'trusted_access_role_binding_name_example' # String | The name of trusted access role binding.

begin
  
  api_instance.trusted_access_role_bindings_delete(api_version, subscription_id, resource_group_name, resource_name, trusted_access_role_binding_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling TrustedAccessApi->trusted_access_role_bindings_delete: #{e}"
end
```

#### Using the trusted_access_role_bindings_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> trusted_access_role_bindings_delete_with_http_info(api_version, subscription_id, resource_group_name, resource_name, trusted_access_role_binding_name)

```ruby
begin
  
  data, status_code, headers = api_instance.trusted_access_role_bindings_delete_with_http_info(api_version, subscription_id, resource_group_name, resource_name, trusted_access_role_binding_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling TrustedAccessApi->trusted_access_role_bindings_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **resource_name** | **String** | The name of the managed cluster resource. |  |
| **trusted_access_role_binding_name** | **String** | The name of trusted access role binding. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## trusted_access_role_bindings_get

> <TrustedAccessRoleBinding> trusted_access_role_bindings_get(api_version, subscription_id, resource_group_name, resource_name, trusted_access_role_binding_name)



Get a trusted access role binding.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::TrustedAccessApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.
trusted_access_role_binding_name = 'trusted_access_role_binding_name_example' # String | The name of trusted access role binding.

begin
  
  result = api_instance.trusted_access_role_bindings_get(api_version, subscription_id, resource_group_name, resource_name, trusted_access_role_binding_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling TrustedAccessApi->trusted_access_role_bindings_get: #{e}"
end
```

#### Using the trusted_access_role_bindings_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TrustedAccessRoleBinding>, Integer, Hash)> trusted_access_role_bindings_get_with_http_info(api_version, subscription_id, resource_group_name, resource_name, trusted_access_role_binding_name)

```ruby
begin
  
  data, status_code, headers = api_instance.trusted_access_role_bindings_get_with_http_info(api_version, subscription_id, resource_group_name, resource_name, trusted_access_role_binding_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TrustedAccessRoleBinding>
rescue AzureSDK::ApiError => e
  puts "Error when calling TrustedAccessApi->trusted_access_role_bindings_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **resource_name** | **String** | The name of the managed cluster resource. |  |
| **trusted_access_role_binding_name** | **String** | The name of trusted access role binding. |  |

### Return type

[**TrustedAccessRoleBinding**](TrustedAccessRoleBinding.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## trusted_access_role_bindings_list

> <TrustedAccessRoleBindingListResult> trusted_access_role_bindings_list(api_version, subscription_id, resource_group_name, resource_name)



List trusted access role bindings.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::TrustedAccessApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.

begin
  
  result = api_instance.trusted_access_role_bindings_list(api_version, subscription_id, resource_group_name, resource_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling TrustedAccessApi->trusted_access_role_bindings_list: #{e}"
end
```

#### Using the trusted_access_role_bindings_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TrustedAccessRoleBindingListResult>, Integer, Hash)> trusted_access_role_bindings_list_with_http_info(api_version, subscription_id, resource_group_name, resource_name)

```ruby
begin
  
  data, status_code, headers = api_instance.trusted_access_role_bindings_list_with_http_info(api_version, subscription_id, resource_group_name, resource_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TrustedAccessRoleBindingListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling TrustedAccessApi->trusted_access_role_bindings_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **resource_name** | **String** | The name of the managed cluster resource. |  |

### Return type

[**TrustedAccessRoleBindingListResult**](TrustedAccessRoleBindingListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## trusted_access_roles_list

> <TrustedAccessRoleListResult> trusted_access_roles_list(api_version, subscription_id, location)



List supported trusted access roles.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::TrustedAccessApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
location = 'location_example' # String | The name of the Azure region.

begin
  
  result = api_instance.trusted_access_roles_list(api_version, subscription_id, location)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling TrustedAccessApi->trusted_access_roles_list: #{e}"
end
```

#### Using the trusted_access_roles_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TrustedAccessRoleListResult>, Integer, Hash)> trusted_access_roles_list_with_http_info(api_version, subscription_id, location)

```ruby
begin
  
  data, status_code, headers = api_instance.trusted_access_roles_list_with_http_info(api_version, subscription_id, location)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TrustedAccessRoleListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling TrustedAccessApi->trusted_access_roles_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **location** | **String** | The name of the Azure region. |  |

### Return type

[**TrustedAccessRoleListResult**](TrustedAccessRoleListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

