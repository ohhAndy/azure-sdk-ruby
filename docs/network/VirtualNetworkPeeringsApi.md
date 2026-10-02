# AzureSDK::VirtualNetworkPeeringsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**virtual_network_peerings_create_or_update**](VirtualNetworkPeeringsApi.md#virtual_network_peerings_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/virtualNetworkPeerings/{virtualNetworkPeeringName} |  |
| [**virtual_network_peerings_delete**](VirtualNetworkPeeringsApi.md#virtual_network_peerings_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/virtualNetworkPeerings/{virtualNetworkPeeringName} |  |
| [**virtual_network_peerings_get**](VirtualNetworkPeeringsApi.md#virtual_network_peerings_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/virtualNetworkPeerings/{virtualNetworkPeeringName} |  |
| [**virtual_network_peerings_list**](VirtualNetworkPeeringsApi.md#virtual_network_peerings_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/virtualNetworkPeerings |  |


## virtual_network_peerings_create_or_update

> <VirtualNetworkPeering> virtual_network_peerings_create_or_update(api_version, subscription_id, resource_group_name, virtual_network_name, virtual_network_peering_name, virtual_network_peering_parameters, opts)



Creates or updates a peering in the specified virtual network.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::VirtualNetworkPeeringsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
virtual_network_name = 'virtual_network_name_example' # String | The name of the virtual network.
virtual_network_peering_name = 'virtual_network_peering_name_example' # String | The name of the virtual network peering.
virtual_network_peering_parameters = AzureSDK::VirtualNetworkPeering.new # VirtualNetworkPeering | Parameters supplied to the create or update virtual network peering operation.
opts = {
  sync_remote_address_space: 'true' # String | Parameter indicates the intention to sync the peering with the current address space on the remote vNet after it's updated.
}

begin
  
  result = api_instance.virtual_network_peerings_create_or_update(api_version, subscription_id, resource_group_name, virtual_network_name, virtual_network_peering_name, virtual_network_peering_parameters, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualNetworkPeeringsApi->virtual_network_peerings_create_or_update: #{e}"
end
```

#### Using the virtual_network_peerings_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualNetworkPeering>, Integer, Hash)> virtual_network_peerings_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, virtual_network_name, virtual_network_peering_name, virtual_network_peering_parameters, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_network_peerings_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, virtual_network_name, virtual_network_peering_name, virtual_network_peering_parameters, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualNetworkPeering>
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualNetworkPeeringsApi->virtual_network_peerings_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **virtual_network_name** | **String** | The name of the virtual network. |  |
| **virtual_network_peering_name** | **String** | The name of the virtual network peering. |  |
| **virtual_network_peering_parameters** | [**VirtualNetworkPeering**](VirtualNetworkPeering.md) | Parameters supplied to the create or update virtual network peering operation. |  |
| **sync_remote_address_space** | **String** | Parameter indicates the intention to sync the peering with the current address space on the remote vNet after it&#39;s updated. | [optional] |

### Return type

[**VirtualNetworkPeering**](VirtualNetworkPeering.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## virtual_network_peerings_delete

> virtual_network_peerings_delete(api_version, subscription_id, resource_group_name, virtual_network_name, virtual_network_peering_name)



Deletes the specified virtual network peering.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::VirtualNetworkPeeringsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
virtual_network_name = 'virtual_network_name_example' # String | The name of the virtual network.
virtual_network_peering_name = 'virtual_network_peering_name_example' # String | The name of the virtual network peering.

begin
  
  api_instance.virtual_network_peerings_delete(api_version, subscription_id, resource_group_name, virtual_network_name, virtual_network_peering_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualNetworkPeeringsApi->virtual_network_peerings_delete: #{e}"
end
```

#### Using the virtual_network_peerings_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_network_peerings_delete_with_http_info(api_version, subscription_id, resource_group_name, virtual_network_name, virtual_network_peering_name)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_network_peerings_delete_with_http_info(api_version, subscription_id, resource_group_name, virtual_network_name, virtual_network_peering_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualNetworkPeeringsApi->virtual_network_peerings_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **virtual_network_name** | **String** | The name of the virtual network. |  |
| **virtual_network_peering_name** | **String** | The name of the virtual network peering. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_network_peerings_get

> <VirtualNetworkPeering> virtual_network_peerings_get(api_version, subscription_id, resource_group_name, virtual_network_name, virtual_network_peering_name)



Gets the specified virtual network peering.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::VirtualNetworkPeeringsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
virtual_network_name = 'virtual_network_name_example' # String | The name of the virtual network.
virtual_network_peering_name = 'virtual_network_peering_name_example' # String | The name of the virtual network peering.

begin
  
  result = api_instance.virtual_network_peerings_get(api_version, subscription_id, resource_group_name, virtual_network_name, virtual_network_peering_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualNetworkPeeringsApi->virtual_network_peerings_get: #{e}"
end
```

#### Using the virtual_network_peerings_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualNetworkPeering>, Integer, Hash)> virtual_network_peerings_get_with_http_info(api_version, subscription_id, resource_group_name, virtual_network_name, virtual_network_peering_name)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_network_peerings_get_with_http_info(api_version, subscription_id, resource_group_name, virtual_network_name, virtual_network_peering_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualNetworkPeering>
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualNetworkPeeringsApi->virtual_network_peerings_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **virtual_network_name** | **String** | The name of the virtual network. |  |
| **virtual_network_peering_name** | **String** | The name of the virtual network peering. |  |

### Return type

[**VirtualNetworkPeering**](VirtualNetworkPeering.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_network_peerings_list

> <VirtualNetworkPeeringListResult> virtual_network_peerings_list(api_version, subscription_id, resource_group_name, virtual_network_name)



Gets all virtual network peerings in a virtual network.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::VirtualNetworkPeeringsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
virtual_network_name = 'virtual_network_name_example' # String | The name of the virtual network.

begin
  
  result = api_instance.virtual_network_peerings_list(api_version, subscription_id, resource_group_name, virtual_network_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualNetworkPeeringsApi->virtual_network_peerings_list: #{e}"
end
```

#### Using the virtual_network_peerings_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualNetworkPeeringListResult>, Integer, Hash)> virtual_network_peerings_list_with_http_info(api_version, subscription_id, resource_group_name, virtual_network_name)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_network_peerings_list_with_http_info(api_version, subscription_id, resource_group_name, virtual_network_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualNetworkPeeringListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualNetworkPeeringsApi->virtual_network_peerings_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **virtual_network_name** | **String** | The name of the virtual network. |  |

### Return type

[**VirtualNetworkPeeringListResult**](VirtualNetworkPeeringListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

