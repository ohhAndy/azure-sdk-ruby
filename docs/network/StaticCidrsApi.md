# AzureSDK::StaticCidrsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**static_cidrs_create**](StaticCidrsApi.md#static_cidrs_create) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkManagers/{networkManagerName}/ipamPools/{poolName}/staticCidrs/{staticCidrName} | Creates/Updates the Static CIDR resource. |
| [**static_cidrs_delete**](StaticCidrsApi.md#static_cidrs_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkManagers/{networkManagerName}/ipamPools/{poolName}/staticCidrs/{staticCidrName} | Delete the Static CIDR resource. |
| [**static_cidrs_get**](StaticCidrsApi.md#static_cidrs_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkManagers/{networkManagerName}/ipamPools/{poolName}/staticCidrs/{staticCidrName} | Gets the specific Static CIDR resource. |
| [**static_cidrs_list**](StaticCidrsApi.md#static_cidrs_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkManagers/{networkManagerName}/ipamPools/{poolName}/staticCidrs | Gets list of Static CIDR resources at Network Manager level. |


## static_cidrs_create

> <StaticCidr> static_cidrs_create(api_version, subscription_id, resource_group_name, network_manager_name, pool_name, static_cidr_name, opts)

Creates/Updates the Static CIDR resource.

Creates/Updates the Static CIDR resource.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::StaticCidrsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_manager_name = 'network_manager_name_example' # String | 
pool_name = 'pool_name_example' # String | The name of the IPAM pool.
static_cidr_name = 'static_cidr_name_example' # String | Name for the static CIDR.
opts = {
  body: AzureSDK::StaticCidr.new # StaticCidr | StaticCidr resource object to create/update.
}

begin
  # Creates/Updates the Static CIDR resource.
  result = api_instance.static_cidrs_create(api_version, subscription_id, resource_group_name, network_manager_name, pool_name, static_cidr_name, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling StaticCidrsApi->static_cidrs_create: #{e}"
end
```

#### Using the static_cidrs_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StaticCidr>, Integer, Hash)> static_cidrs_create_with_http_info(api_version, subscription_id, resource_group_name, network_manager_name, pool_name, static_cidr_name, opts)

```ruby
begin
  # Creates/Updates the Static CIDR resource.
  data, status_code, headers = api_instance.static_cidrs_create_with_http_info(api_version, subscription_id, resource_group_name, network_manager_name, pool_name, static_cidr_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StaticCidr>
rescue AzureSDK::ApiError => e
  puts "Error when calling StaticCidrsApi->static_cidrs_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_manager_name** | **String** |  |  |
| **pool_name** | **String** | The name of the IPAM pool. |  |
| **static_cidr_name** | **String** | Name for the static CIDR. |  |
| **body** | [**StaticCidr**](StaticCidr.md) | StaticCidr resource object to create/update. | [optional] |

### Return type

[**StaticCidr**](StaticCidr.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## static_cidrs_delete

> static_cidrs_delete(api_version, subscription_id, resource_group_name, network_manager_name, pool_name, static_cidr_name)

Delete the Static CIDR resource.

Delete the Static CIDR resource.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::StaticCidrsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_manager_name = 'network_manager_name_example' # String | The name of the network manager.
pool_name = 'pool_name_example' # String | Pool resource name.
static_cidr_name = 'static_cidr_name_example' # String | StaticCidr resource name to retrieve.

begin
  # Delete the Static CIDR resource.
  api_instance.static_cidrs_delete(api_version, subscription_id, resource_group_name, network_manager_name, pool_name, static_cidr_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling StaticCidrsApi->static_cidrs_delete: #{e}"
end
```

#### Using the static_cidrs_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> static_cidrs_delete_with_http_info(api_version, subscription_id, resource_group_name, network_manager_name, pool_name, static_cidr_name)

```ruby
begin
  # Delete the Static CIDR resource.
  data, status_code, headers = api_instance.static_cidrs_delete_with_http_info(api_version, subscription_id, resource_group_name, network_manager_name, pool_name, static_cidr_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling StaticCidrsApi->static_cidrs_delete_with_http_info: #{e}"
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
| **static_cidr_name** | **String** | StaticCidr resource name to retrieve. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## static_cidrs_get

> <StaticCidr> static_cidrs_get(api_version, subscription_id, resource_group_name, network_manager_name, pool_name, static_cidr_name)

Gets the specific Static CIDR resource.

Gets the specific Static CIDR resource.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::StaticCidrsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_manager_name = 'network_manager_name_example' # String | The name of the network manager.
pool_name = 'pool_name_example' # String | Pool resource name.
static_cidr_name = 'static_cidr_name_example' # String | StaticCidr resource name to retrieve.

begin
  # Gets the specific Static CIDR resource.
  result = api_instance.static_cidrs_get(api_version, subscription_id, resource_group_name, network_manager_name, pool_name, static_cidr_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling StaticCidrsApi->static_cidrs_get: #{e}"
end
```

#### Using the static_cidrs_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StaticCidr>, Integer, Hash)> static_cidrs_get_with_http_info(api_version, subscription_id, resource_group_name, network_manager_name, pool_name, static_cidr_name)

```ruby
begin
  # Gets the specific Static CIDR resource.
  data, status_code, headers = api_instance.static_cidrs_get_with_http_info(api_version, subscription_id, resource_group_name, network_manager_name, pool_name, static_cidr_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StaticCidr>
rescue AzureSDK::ApiError => e
  puts "Error when calling StaticCidrsApi->static_cidrs_get_with_http_info: #{e}"
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
| **static_cidr_name** | **String** | StaticCidr resource name to retrieve. |  |

### Return type

[**StaticCidr**](StaticCidr.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## static_cidrs_list

> <StaticCidrList> static_cidrs_list(api_version, subscription_id, resource_group_name, network_manager_name, pool_name, opts)

Gets list of Static CIDR resources at Network Manager level.

Gets list of Static CIDR resources at Network Manager level.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::StaticCidrsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_manager_name = 'network_manager_name_example' # String | The name of the network manager.
pool_name = 'pool_name_example' # String | Pool resource name.
opts = {
  skip_token: 'skip_token_example', # String | Optional skip token.
  skip: 56, # Integer | Optional num entries to skip.
  top: 56, # Integer | Optional num entries to show.
  sort_key: 'sort_key_example', # String | Optional key by which to sort.
  sort_value: 'sort_value_example' # String | Optional sort value for pagination.
}

begin
  # Gets list of Static CIDR resources at Network Manager level.
  result = api_instance.static_cidrs_list(api_version, subscription_id, resource_group_name, network_manager_name, pool_name, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling StaticCidrsApi->static_cidrs_list: #{e}"
end
```

#### Using the static_cidrs_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StaticCidrList>, Integer, Hash)> static_cidrs_list_with_http_info(api_version, subscription_id, resource_group_name, network_manager_name, pool_name, opts)

```ruby
begin
  # Gets list of Static CIDR resources at Network Manager level.
  data, status_code, headers = api_instance.static_cidrs_list_with_http_info(api_version, subscription_id, resource_group_name, network_manager_name, pool_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StaticCidrList>
rescue AzureSDK::ApiError => e
  puts "Error when calling StaticCidrsApi->static_cidrs_list_with_http_info: #{e}"
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
| **skip_token** | **String** | Optional skip token. | [optional] |
| **skip** | **Integer** | Optional num entries to skip. | [optional][default to 0] |
| **top** | **Integer** | Optional num entries to show. | [optional][default to 50] |
| **sort_key** | **String** | Optional key by which to sort. | [optional] |
| **sort_value** | **String** | Optional sort value for pagination. | [optional] |

### Return type

[**StaticCidrList**](StaticCidrList.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

