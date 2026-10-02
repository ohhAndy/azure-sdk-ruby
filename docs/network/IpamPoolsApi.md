# AzureSDK::IpamPoolsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ipam_pools_create**](IpamPoolsApi.md#ipam_pools_create) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkManagers/{networkManagerName}/ipamPools/{poolName} | Creates/Updates the Pool resource. |
| [**ipam_pools_delete**](IpamPoolsApi.md#ipam_pools_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkManagers/{networkManagerName}/ipamPools/{poolName} | Delete the Pool resource. |
| [**ipam_pools_get**](IpamPoolsApi.md#ipam_pools_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkManagers/{networkManagerName}/ipamPools/{poolName} | Gets the specific Pool resource. |
| [**ipam_pools_get_pool_usage**](IpamPoolsApi.md#ipam_pools_get_pool_usage) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkManagers/{networkManagerName}/ipamPools/{poolName}/getPoolUsage | Get the Pool Usage. |
| [**ipam_pools_list**](IpamPoolsApi.md#ipam_pools_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkManagers/{networkManagerName}/ipamPools | Gets list of Pool resources at Network Manager level. |
| [**ipam_pools_list_associated_resources**](IpamPoolsApi.md#ipam_pools_list_associated_resources) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkManagers/{networkManagerName}/ipamPools/{poolName}/listAssociatedResources | List Associated Resource in the Pool. |
| [**ipam_pools_update**](IpamPoolsApi.md#ipam_pools_update) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkManagers/{networkManagerName}/ipamPools/{poolName} | Updates the specific Pool resource. |


## ipam_pools_create

> <IpamPool> ipam_pools_create(api_version, subscription_id, resource_group_name, network_manager_name, pool_name, body, opts)

Creates/Updates the Pool resource.

Creates/Updates the Pool resource.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::IpamPoolsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_manager_name = 'network_manager_name_example' # String | The name of the network manager.
pool_name = 'pool_name_example' # String | Pool resource name.
body = AzureSDK::IpamPool.new({location: 'location_example', properties: AzureSDK::IpamPoolProperties.new({address_prefixes: ['address_prefixes_example']})}) # IpamPool | Pool resource object to create/update.
opts = {
  if_match: 'if_match_example' # String | The entity state (ETag) version of the pool to update. This value can be omitted or set to \"*\" to apply the operation unconditionally.
}

begin
  # Creates/Updates the Pool resource.
  result = api_instance.ipam_pools_create(api_version, subscription_id, resource_group_name, network_manager_name, pool_name, body, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling IpamPoolsApi->ipam_pools_create: #{e}"
end
```

#### Using the ipam_pools_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IpamPool>, Integer, Hash)> ipam_pools_create_with_http_info(api_version, subscription_id, resource_group_name, network_manager_name, pool_name, body, opts)

```ruby
begin
  # Creates/Updates the Pool resource.
  data, status_code, headers = api_instance.ipam_pools_create_with_http_info(api_version, subscription_id, resource_group_name, network_manager_name, pool_name, body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IpamPool>
rescue AzureSDK::ApiError => e
  puts "Error when calling IpamPoolsApi->ipam_pools_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_manager_name** | **String** | The name of the network manager. |  |
| **pool_name** | **String** | Pool resource name. |  |
| **body** | [**IpamPool**](IpamPool.md) | Pool resource object to create/update. |  |
| **if_match** | **String** | The entity state (ETag) version of the pool to update. This value can be omitted or set to \&quot;*\&quot; to apply the operation unconditionally. | [optional] |

### Return type

[**IpamPool**](IpamPool.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ipam_pools_delete

> ipam_pools_delete(api_version, subscription_id, resource_group_name, network_manager_name, pool_name, opts)

Delete the Pool resource.

Delete the Pool resource.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::IpamPoolsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_manager_name = 'network_manager_name_example' # String | The name of the network manager.
pool_name = 'pool_name_example' # String | Pool resource name.
opts = {
  if_match: 'if_match_example' # String | The entity state (ETag) version of the pool to update. This value can be omitted or set to \"*\" to apply the operation unconditionally.
}

begin
  # Delete the Pool resource.
  api_instance.ipam_pools_delete(api_version, subscription_id, resource_group_name, network_manager_name, pool_name, opts)
rescue AzureSDK::ApiError => e
  puts "Error when calling IpamPoolsApi->ipam_pools_delete: #{e}"
end
```

#### Using the ipam_pools_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> ipam_pools_delete_with_http_info(api_version, subscription_id, resource_group_name, network_manager_name, pool_name, opts)

```ruby
begin
  # Delete the Pool resource.
  data, status_code, headers = api_instance.ipam_pools_delete_with_http_info(api_version, subscription_id, resource_group_name, network_manager_name, pool_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling IpamPoolsApi->ipam_pools_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_manager_name** | **String** | The name of the network manager. |  |
| **pool_name** | **String** | Pool resource name. |  |
| **if_match** | **String** | The entity state (ETag) version of the pool to update. This value can be omitted or set to \&quot;*\&quot; to apply the operation unconditionally. | [optional] |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ipam_pools_get

> <IpamPool> ipam_pools_get(api_version, subscription_id, resource_group_name, network_manager_name, pool_name)

Gets the specific Pool resource.

Gets the specific Pool resource.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::IpamPoolsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_manager_name = 'network_manager_name_example' # String | The name of the network manager.
pool_name = 'pool_name_example' # String | Pool resource name.

begin
  # Gets the specific Pool resource.
  result = api_instance.ipam_pools_get(api_version, subscription_id, resource_group_name, network_manager_name, pool_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling IpamPoolsApi->ipam_pools_get: #{e}"
end
```

#### Using the ipam_pools_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IpamPool>, Integer, Hash)> ipam_pools_get_with_http_info(api_version, subscription_id, resource_group_name, network_manager_name, pool_name)

```ruby
begin
  # Gets the specific Pool resource.
  data, status_code, headers = api_instance.ipam_pools_get_with_http_info(api_version, subscription_id, resource_group_name, network_manager_name, pool_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IpamPool>
rescue AzureSDK::ApiError => e
  puts "Error when calling IpamPoolsApi->ipam_pools_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_manager_name** | **String** | The name of the network manager. |  |
| **pool_name** | **String** | Pool resource name. |  |

### Return type

[**IpamPool**](IpamPool.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ipam_pools_get_pool_usage

> <PoolUsage> ipam_pools_get_pool_usage(api_version, subscription_id, resource_group_name, network_manager_name, pool_name)

Get the Pool Usage.

Get the Pool Usage.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::IpamPoolsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_manager_name = 'network_manager_name_example' # String | The name of the network manager.
pool_name = 'pool_name_example' # String | Pool resource name.

begin
  # Get the Pool Usage.
  result = api_instance.ipam_pools_get_pool_usage(api_version, subscription_id, resource_group_name, network_manager_name, pool_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling IpamPoolsApi->ipam_pools_get_pool_usage: #{e}"
end
```

#### Using the ipam_pools_get_pool_usage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PoolUsage>, Integer, Hash)> ipam_pools_get_pool_usage_with_http_info(api_version, subscription_id, resource_group_name, network_manager_name, pool_name)

```ruby
begin
  # Get the Pool Usage.
  data, status_code, headers = api_instance.ipam_pools_get_pool_usage_with_http_info(api_version, subscription_id, resource_group_name, network_manager_name, pool_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PoolUsage>
rescue AzureSDK::ApiError => e
  puts "Error when calling IpamPoolsApi->ipam_pools_get_pool_usage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_manager_name** | **String** | The name of the network manager. |  |
| **pool_name** | **String** | Pool resource name. |  |

### Return type

[**PoolUsage**](PoolUsage.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ipam_pools_list

> <IpamPoolList> ipam_pools_list(api_version, subscription_id, resource_group_name, network_manager_name, opts)

Gets list of Pool resources at Network Manager level.

Gets list of Pool resources at Network Manager level.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::IpamPoolsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_manager_name = 'network_manager_name_example' # String | The name of the network manager.
opts = {
  skip_token: 'skip_token_example', # String | Optional skip token.
  skip: 56, # Integer | Optional num entries to skip.
  top: 56, # Integer | Optional num entries to show.
  sort_key: 'sort_key_example', # String | Optional key by which to sort.
  sort_value: 'sort_value_example' # String | Optional sort value for pagination.
}

begin
  # Gets list of Pool resources at Network Manager level.
  result = api_instance.ipam_pools_list(api_version, subscription_id, resource_group_name, network_manager_name, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling IpamPoolsApi->ipam_pools_list: #{e}"
end
```

#### Using the ipam_pools_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IpamPoolList>, Integer, Hash)> ipam_pools_list_with_http_info(api_version, subscription_id, resource_group_name, network_manager_name, opts)

```ruby
begin
  # Gets list of Pool resources at Network Manager level.
  data, status_code, headers = api_instance.ipam_pools_list_with_http_info(api_version, subscription_id, resource_group_name, network_manager_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IpamPoolList>
rescue AzureSDK::ApiError => e
  puts "Error when calling IpamPoolsApi->ipam_pools_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_manager_name** | **String** | The name of the network manager. |  |
| **skip_token** | **String** | Optional skip token. | [optional] |
| **skip** | **Integer** | Optional num entries to skip. | [optional][default to 0] |
| **top** | **Integer** | Optional num entries to show. | [optional][default to 50] |
| **sort_key** | **String** | Optional key by which to sort. | [optional] |
| **sort_value** | **String** | Optional sort value for pagination. | [optional] |

### Return type

[**IpamPoolList**](IpamPoolList.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ipam_pools_list_associated_resources

> <PoolAssociationList> ipam_pools_list_associated_resources(api_version, subscription_id, resource_group_name, network_manager_name, pool_name)

List Associated Resource in the Pool.

List Associated Resource in the Pool.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::IpamPoolsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_manager_name = 'network_manager_name_example' # String | The name of the network manager.
pool_name = 'pool_name_example' # String | Pool resource name.

begin
  # List Associated Resource in the Pool.
  result = api_instance.ipam_pools_list_associated_resources(api_version, subscription_id, resource_group_name, network_manager_name, pool_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling IpamPoolsApi->ipam_pools_list_associated_resources: #{e}"
end
```

#### Using the ipam_pools_list_associated_resources_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PoolAssociationList>, Integer, Hash)> ipam_pools_list_associated_resources_with_http_info(api_version, subscription_id, resource_group_name, network_manager_name, pool_name)

```ruby
begin
  # List Associated Resource in the Pool.
  data, status_code, headers = api_instance.ipam_pools_list_associated_resources_with_http_info(api_version, subscription_id, resource_group_name, network_manager_name, pool_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PoolAssociationList>
rescue AzureSDK::ApiError => e
  puts "Error when calling IpamPoolsApi->ipam_pools_list_associated_resources_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_manager_name** | **String** | The name of the network manager. |  |
| **pool_name** | **String** | Pool resource name. |  |

### Return type

[**PoolAssociationList**](PoolAssociationList.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ipam_pools_update

> <IpamPool> ipam_pools_update(api_version, subscription_id, resource_group_name, network_manager_name, pool_name, opts)

Updates the specific Pool resource.

Updates the specific Pool resource.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::IpamPoolsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_manager_name = 'network_manager_name_example' # String | The name of the network manager.
pool_name = 'pool_name_example' # String | Pool resource name.
opts = {
  if_match: 'if_match_example', # String | The entity state (ETag) version of the pool to update. This value can be omitted or set to \"*\" to apply the operation unconditionally.
  body: AzureSDK::IpamPoolUpdate.new # IpamPoolUpdate | Pool resource object to update partially.
}

begin
  # Updates the specific Pool resource.
  result = api_instance.ipam_pools_update(api_version, subscription_id, resource_group_name, network_manager_name, pool_name, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling IpamPoolsApi->ipam_pools_update: #{e}"
end
```

#### Using the ipam_pools_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IpamPool>, Integer, Hash)> ipam_pools_update_with_http_info(api_version, subscription_id, resource_group_name, network_manager_name, pool_name, opts)

```ruby
begin
  # Updates the specific Pool resource.
  data, status_code, headers = api_instance.ipam_pools_update_with_http_info(api_version, subscription_id, resource_group_name, network_manager_name, pool_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IpamPool>
rescue AzureSDK::ApiError => e
  puts "Error when calling IpamPoolsApi->ipam_pools_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_manager_name** | **String** | The name of the network manager. |  |
| **pool_name** | **String** | Pool resource name. |  |
| **if_match** | **String** | The entity state (ETag) version of the pool to update. This value can be omitted or set to \&quot;*\&quot; to apply the operation unconditionally. | [optional] |
| **body** | [**IpamPoolUpdate**](IpamPoolUpdate.md) | Pool resource object to update partially. | [optional] |

### Return type

[**IpamPool**](IpamPool.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

