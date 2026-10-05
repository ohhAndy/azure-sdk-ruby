# AzureRest::ManagedHsmsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**m_hsm_private_link_resources_list_by_mhsm_resource**](ManagedHsmsApi.md#m_hsm_private_link_resources_list_by_mhsm_resource) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.KeyVault/managedHSMs/{name}/privateLinkResources |  |
| [**m_hsm_regions_list_by_resource**](ManagedHsmsApi.md#m_hsm_regions_list_by_resource) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.KeyVault/managedHSMs/{name}/regions |  |
| [**managed_hsms_create_or_update**](ManagedHsmsApi.md#managed_hsms_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.KeyVault/managedHSMs/{name} |  |
| [**managed_hsms_delete**](ManagedHsmsApi.md#managed_hsms_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.KeyVault/managedHSMs/{name} |  |
| [**managed_hsms_get**](ManagedHsmsApi.md#managed_hsms_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.KeyVault/managedHSMs/{name} |  |
| [**managed_hsms_list_by_resource_group**](ManagedHsmsApi.md#managed_hsms_list_by_resource_group) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.KeyVault/managedHSMs |  |
| [**managed_hsms_list_by_subscription**](ManagedHsmsApi.md#managed_hsms_list_by_subscription) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.KeyVault/managedHSMs |  |
| [**managed_hsms_update**](ManagedHsmsApi.md#managed_hsms_update) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.KeyVault/managedHSMs/{name} |  |


## m_hsm_private_link_resources_list_by_mhsm_resource

> <MHSMPrivateLinkResourceListResult> m_hsm_private_link_resources_list_by_mhsm_resource(api_version, subscription_id, resource_group_name, name)



Gets the private link resources supported for the managed hsm pool.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ManagedHsmsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
name = 'name_example' # String | The name of the managed HSM Pool.

begin
  
  result = api_instance.m_hsm_private_link_resources_list_by_mhsm_resource(api_version, subscription_id, resource_group_name, name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ManagedHsmsApi->m_hsm_private_link_resources_list_by_mhsm_resource: #{e}"
end
```

#### Using the m_hsm_private_link_resources_list_by_mhsm_resource_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MHSMPrivateLinkResourceListResult>, Integer, Hash)> m_hsm_private_link_resources_list_by_mhsm_resource_with_http_info(api_version, subscription_id, resource_group_name, name)

```ruby
begin
  
  data, status_code, headers = api_instance.m_hsm_private_link_resources_list_by_mhsm_resource_with_http_info(api_version, subscription_id, resource_group_name, name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MHSMPrivateLinkResourceListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling ManagedHsmsApi->m_hsm_private_link_resources_list_by_mhsm_resource_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **name** | **String** | The name of the managed HSM Pool. |  |

### Return type

[**MHSMPrivateLinkResourceListResult**](MHSMPrivateLinkResourceListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## m_hsm_regions_list_by_resource

> <MHSMRegionsListResult> m_hsm_regions_list_by_resource(api_version, subscription_id, resource_group_name, name)



The List operation gets information about the regions associated with the managed HSM Pool.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ManagedHsmsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
name = 'name_example' # String | The name of the managed HSM Pool.

begin
  
  result = api_instance.m_hsm_regions_list_by_resource(api_version, subscription_id, resource_group_name, name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ManagedHsmsApi->m_hsm_regions_list_by_resource: #{e}"
end
```

#### Using the m_hsm_regions_list_by_resource_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MHSMRegionsListResult>, Integer, Hash)> m_hsm_regions_list_by_resource_with_http_info(api_version, subscription_id, resource_group_name, name)

```ruby
begin
  
  data, status_code, headers = api_instance.m_hsm_regions_list_by_resource_with_http_info(api_version, subscription_id, resource_group_name, name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MHSMRegionsListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling ManagedHsmsApi->m_hsm_regions_list_by_resource_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **name** | **String** | The name of the managed HSM Pool. |  |

### Return type

[**MHSMRegionsListResult**](MHSMRegionsListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## managed_hsms_create_or_update

> <ManagedHsm> managed_hsms_create_or_update(api_version, subscription_id, resource_group_name, name, parameters)



Create or update a managed HSM Pool in the specified subscription.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ManagedHsmsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
name = 'name_example' # String | The name of the managed HSM Pool.
parameters = AzureRest::ManagedHsm.new # ManagedHsm | Parameters to create or update the managed HSM Pool

begin
  
  result = api_instance.managed_hsms_create_or_update(api_version, subscription_id, resource_group_name, name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ManagedHsmsApi->managed_hsms_create_or_update: #{e}"
end
```

#### Using the managed_hsms_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ManagedHsm>, Integer, Hash)> managed_hsms_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.managed_hsms_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ManagedHsm>
rescue AzureRest::ApiError => e
  puts "Error when calling ManagedHsmsApi->managed_hsms_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **name** | **String** | The name of the managed HSM Pool. |  |
| **parameters** | [**ManagedHsm**](ManagedHsm.md) | Parameters to create or update the managed HSM Pool |  |

### Return type

[**ManagedHsm**](ManagedHsm.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## managed_hsms_delete

> managed_hsms_delete(api_version, subscription_id, resource_group_name, name)



Deletes the specified managed HSM Pool.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ManagedHsmsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
name = 'name_example' # String | The name of the managed HSM Pool.

begin
  
  api_instance.managed_hsms_delete(api_version, subscription_id, resource_group_name, name)
rescue AzureRest::ApiError => e
  puts "Error when calling ManagedHsmsApi->managed_hsms_delete: #{e}"
end
```

#### Using the managed_hsms_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> managed_hsms_delete_with_http_info(api_version, subscription_id, resource_group_name, name)

```ruby
begin
  
  data, status_code, headers = api_instance.managed_hsms_delete_with_http_info(api_version, subscription_id, resource_group_name, name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling ManagedHsmsApi->managed_hsms_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **name** | **String** | The name of the managed HSM Pool. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## managed_hsms_get

> <ManagedHsm> managed_hsms_get(api_version, subscription_id, resource_group_name, name)



Gets the specified managed HSM Pool.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ManagedHsmsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
name = 'name_example' # String | The name of the managed HSM Pool.

begin
  
  result = api_instance.managed_hsms_get(api_version, subscription_id, resource_group_name, name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ManagedHsmsApi->managed_hsms_get: #{e}"
end
```

#### Using the managed_hsms_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ManagedHsm>, Integer, Hash)> managed_hsms_get_with_http_info(api_version, subscription_id, resource_group_name, name)

```ruby
begin
  
  data, status_code, headers = api_instance.managed_hsms_get_with_http_info(api_version, subscription_id, resource_group_name, name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ManagedHsm>
rescue AzureRest::ApiError => e
  puts "Error when calling ManagedHsmsApi->managed_hsms_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **name** | **String** | The name of the managed HSM Pool. |  |

### Return type

[**ManagedHsm**](ManagedHsm.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## managed_hsms_list_by_resource_group

> <ManagedHsmListResult> managed_hsms_list_by_resource_group(api_version, subscription_id, resource_group_name, opts)



The List operation gets information about the managed HSM Pools associated with the subscription and within the specified resource group.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ManagedHsmsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
opts = {
  top: 56 # Integer | Maximum number of results to return.
}

begin
  
  result = api_instance.managed_hsms_list_by_resource_group(api_version, subscription_id, resource_group_name, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ManagedHsmsApi->managed_hsms_list_by_resource_group: #{e}"
end
```

#### Using the managed_hsms_list_by_resource_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ManagedHsmListResult>, Integer, Hash)> managed_hsms_list_by_resource_group_with_http_info(api_version, subscription_id, resource_group_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.managed_hsms_list_by_resource_group_with_http_info(api_version, subscription_id, resource_group_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ManagedHsmListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling ManagedHsmsApi->managed_hsms_list_by_resource_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **top** | **Integer** | Maximum number of results to return. | [optional] |

### Return type

[**ManagedHsmListResult**](ManagedHsmListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## managed_hsms_list_by_subscription

> <ManagedHsmListResult> managed_hsms_list_by_subscription(api_version, subscription_id, opts)



The List operation gets information about the managed HSM Pools associated with the subscription.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ManagedHsmsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
opts = {
  top: 56 # Integer | Maximum number of results to return.
}

begin
  
  result = api_instance.managed_hsms_list_by_subscription(api_version, subscription_id, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ManagedHsmsApi->managed_hsms_list_by_subscription: #{e}"
end
```

#### Using the managed_hsms_list_by_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ManagedHsmListResult>, Integer, Hash)> managed_hsms_list_by_subscription_with_http_info(api_version, subscription_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.managed_hsms_list_by_subscription_with_http_info(api_version, subscription_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ManagedHsmListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling ManagedHsmsApi->managed_hsms_list_by_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **top** | **Integer** | Maximum number of results to return. | [optional] |

### Return type

[**ManagedHsmListResult**](ManagedHsmListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## managed_hsms_update

> <ManagedHsm> managed_hsms_update(api_version, subscription_id, resource_group_name, name, parameters)



Update a managed HSM Pool in the specified subscription.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ManagedHsmsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
name = 'name_example' # String | The name of the managed HSM Pool.
parameters = AzureRest::ManagedHsm.new # ManagedHsm | Parameters to patch the managed HSM Pool

begin
  
  result = api_instance.managed_hsms_update(api_version, subscription_id, resource_group_name, name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ManagedHsmsApi->managed_hsms_update: #{e}"
end
```

#### Using the managed_hsms_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ManagedHsm>, Integer, Hash)> managed_hsms_update_with_http_info(api_version, subscription_id, resource_group_name, name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.managed_hsms_update_with_http_info(api_version, subscription_id, resource_group_name, name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ManagedHsm>
rescue AzureRest::ApiError => e
  puts "Error when calling ManagedHsmsApi->managed_hsms_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **name** | **String** | The name of the managed HSM Pool. |  |
| **parameters** | [**ManagedHsm**](ManagedHsm.md) | Parameters to patch the managed HSM Pool |  |

### Return type

[**ManagedHsm**](ManagedHsm.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

