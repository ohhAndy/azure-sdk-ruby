# AzureSDK::IdentityBindingsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**identity_bindings_create_or_update**](IdentityBindingsApi.md#identity_bindings_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/identityBindings/{identityBindingName} |  |
| [**identity_bindings_delete**](IdentityBindingsApi.md#identity_bindings_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/identityBindings/{identityBindingName} |  |
| [**identity_bindings_get**](IdentityBindingsApi.md#identity_bindings_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/identityBindings/{identityBindingName} |  |
| [**identity_bindings_list_by_managed_cluster**](IdentityBindingsApi.md#identity_bindings_list_by_managed_cluster) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/identityBindings |  |


## identity_bindings_create_or_update

> <IdentityBinding> identity_bindings_create_or_update(api_version, subscription_id, resource_group_name, resource_name, identity_binding_name, parameters)



Creates or updates an identity binding in the specified managed cluster.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::IdentityBindingsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.
identity_binding_name = 'identity_binding_name_example' # String | The name of the identity binding.
parameters = AzureSDK::IdentityBinding.new # IdentityBinding | The identity binding to create or update.

begin
  
  result = api_instance.identity_bindings_create_or_update(api_version, subscription_id, resource_group_name, resource_name, identity_binding_name, parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling IdentityBindingsApi->identity_bindings_create_or_update: #{e}"
end
```

#### Using the identity_bindings_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IdentityBinding>, Integer, Hash)> identity_bindings_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, resource_name, identity_binding_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.identity_bindings_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, resource_name, identity_binding_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IdentityBinding>
rescue AzureSDK::ApiError => e
  puts "Error when calling IdentityBindingsApi->identity_bindings_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **resource_name** | **String** | The name of the managed cluster resource. |  |
| **identity_binding_name** | **String** | The name of the identity binding. |  |
| **parameters** | [**IdentityBinding**](IdentityBinding.md) | The identity binding to create or update. |  |

### Return type

[**IdentityBinding**](IdentityBinding.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## identity_bindings_delete

> identity_bindings_delete(api_version, subscription_id, resource_group_name, resource_name, identity_binding_name)



Deletes an identity binding in the specified managed cluster.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::IdentityBindingsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.
identity_binding_name = 'identity_binding_name_example' # String | The name of the identity binding.

begin
  
  api_instance.identity_bindings_delete(api_version, subscription_id, resource_group_name, resource_name, identity_binding_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling IdentityBindingsApi->identity_bindings_delete: #{e}"
end
```

#### Using the identity_bindings_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> identity_bindings_delete_with_http_info(api_version, subscription_id, resource_group_name, resource_name, identity_binding_name)

```ruby
begin
  
  data, status_code, headers = api_instance.identity_bindings_delete_with_http_info(api_version, subscription_id, resource_group_name, resource_name, identity_binding_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling IdentityBindingsApi->identity_bindings_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **resource_name** | **String** | The name of the managed cluster resource. |  |
| **identity_binding_name** | **String** | The name of the identity binding. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## identity_bindings_get

> <IdentityBinding> identity_bindings_get(api_version, subscription_id, resource_group_name, resource_name, identity_binding_name)



Gets the specified Identity Binding.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::IdentityBindingsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.
identity_binding_name = 'identity_binding_name_example' # String | The name of the identity binding.

begin
  
  result = api_instance.identity_bindings_get(api_version, subscription_id, resource_group_name, resource_name, identity_binding_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling IdentityBindingsApi->identity_bindings_get: #{e}"
end
```

#### Using the identity_bindings_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IdentityBinding>, Integer, Hash)> identity_bindings_get_with_http_info(api_version, subscription_id, resource_group_name, resource_name, identity_binding_name)

```ruby
begin
  
  data, status_code, headers = api_instance.identity_bindings_get_with_http_info(api_version, subscription_id, resource_group_name, resource_name, identity_binding_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IdentityBinding>
rescue AzureSDK::ApiError => e
  puts "Error when calling IdentityBindingsApi->identity_bindings_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **resource_name** | **String** | The name of the managed cluster resource. |  |
| **identity_binding_name** | **String** | The name of the identity binding. |  |

### Return type

[**IdentityBinding**](IdentityBinding.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## identity_bindings_list_by_managed_cluster

> <IdentityBindingListResult> identity_bindings_list_by_managed_cluster(api_version, subscription_id, resource_group_name, resource_name)



Gets a list of identity bindings in the specified managed cluster.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::IdentityBindingsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.

begin
  
  result = api_instance.identity_bindings_list_by_managed_cluster(api_version, subscription_id, resource_group_name, resource_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling IdentityBindingsApi->identity_bindings_list_by_managed_cluster: #{e}"
end
```

#### Using the identity_bindings_list_by_managed_cluster_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IdentityBindingListResult>, Integer, Hash)> identity_bindings_list_by_managed_cluster_with_http_info(api_version, subscription_id, resource_group_name, resource_name)

```ruby
begin
  
  data, status_code, headers = api_instance.identity_bindings_list_by_managed_cluster_with_http_info(api_version, subscription_id, resource_group_name, resource_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IdentityBindingListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling IdentityBindingsApi->identity_bindings_list_by_managed_cluster_with_http_info: #{e}"
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

[**IdentityBindingListResult**](IdentityBindingListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

