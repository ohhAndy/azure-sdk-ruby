# AzureRest::VirtualRouterPeeringsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**virtual_router_peerings_create_or_update**](VirtualRouterPeeringsApi.md#virtual_router_peerings_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualRouters/{virtualRouterName}/peerings/{peeringName} |  |
| [**virtual_router_peerings_delete**](VirtualRouterPeeringsApi.md#virtual_router_peerings_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualRouters/{virtualRouterName}/peerings/{peeringName} |  |
| [**virtual_router_peerings_get**](VirtualRouterPeeringsApi.md#virtual_router_peerings_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualRouters/{virtualRouterName}/peerings/{peeringName} |  |
| [**virtual_router_peerings_list**](VirtualRouterPeeringsApi.md#virtual_router_peerings_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualRouters/{virtualRouterName}/peerings |  |


## virtual_router_peerings_create_or_update

> <VirtualRouterPeering> virtual_router_peerings_create_or_update(api_version, subscription_id, resource_group_name, virtual_router_name, peering_name, parameters)



Creates or updates the specified Virtual Router Peering.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualRouterPeeringsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
virtual_router_name = 'virtual_router_name_example' # String | The name of the Virtual Router.
peering_name = 'peering_name_example' # String | The name of the resource that is unique within a resource group. This name can be used to access the resource.
parameters = AzureRest::VirtualRouterPeering.new # VirtualRouterPeering | Parameters supplied to the create or update Virtual Router Peering operation.

begin
  
  result = api_instance.virtual_router_peerings_create_or_update(api_version, subscription_id, resource_group_name, virtual_router_name, peering_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualRouterPeeringsApi->virtual_router_peerings_create_or_update: #{e}"
end
```

#### Using the virtual_router_peerings_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualRouterPeering>, Integer, Hash)> virtual_router_peerings_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, virtual_router_name, peering_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_router_peerings_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, virtual_router_name, peering_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualRouterPeering>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualRouterPeeringsApi->virtual_router_peerings_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **virtual_router_name** | **String** | The name of the Virtual Router. |  |
| **peering_name** | **String** | The name of the resource that is unique within a resource group. This name can be used to access the resource. |  |
| **parameters** | [**VirtualRouterPeering**](VirtualRouterPeering.md) | Parameters supplied to the create or update Virtual Router Peering operation. |  |

### Return type

[**VirtualRouterPeering**](VirtualRouterPeering.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## virtual_router_peerings_delete

> virtual_router_peerings_delete(api_version, subscription_id, resource_group_name, virtual_router_name, peering_name)



Deletes the specified peering from a Virtual Router.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualRouterPeeringsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
virtual_router_name = 'virtual_router_name_example' # String | The name of the Virtual Router.
peering_name = 'peering_name_example' # String | The name of the resource that is unique within a resource group. This name can be used to access the resource.

begin
  
  api_instance.virtual_router_peerings_delete(api_version, subscription_id, resource_group_name, virtual_router_name, peering_name)
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualRouterPeeringsApi->virtual_router_peerings_delete: #{e}"
end
```

#### Using the virtual_router_peerings_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_router_peerings_delete_with_http_info(api_version, subscription_id, resource_group_name, virtual_router_name, peering_name)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_router_peerings_delete_with_http_info(api_version, subscription_id, resource_group_name, virtual_router_name, peering_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualRouterPeeringsApi->virtual_router_peerings_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **virtual_router_name** | **String** | The name of the Virtual Router. |  |
| **peering_name** | **String** | The name of the resource that is unique within a resource group. This name can be used to access the resource. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_router_peerings_get

> <VirtualRouterPeering> virtual_router_peerings_get(api_version, subscription_id, resource_group_name, virtual_router_name, peering_name)



Gets the specified Virtual Router Peering.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualRouterPeeringsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
virtual_router_name = 'virtual_router_name_example' # String | The name of the Virtual Router.
peering_name = 'peering_name_example' # String | The name of the resource that is unique within a resource group. This name can be used to access the resource.

begin
  
  result = api_instance.virtual_router_peerings_get(api_version, subscription_id, resource_group_name, virtual_router_name, peering_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualRouterPeeringsApi->virtual_router_peerings_get: #{e}"
end
```

#### Using the virtual_router_peerings_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualRouterPeering>, Integer, Hash)> virtual_router_peerings_get_with_http_info(api_version, subscription_id, resource_group_name, virtual_router_name, peering_name)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_router_peerings_get_with_http_info(api_version, subscription_id, resource_group_name, virtual_router_name, peering_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualRouterPeering>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualRouterPeeringsApi->virtual_router_peerings_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **virtual_router_name** | **String** | The name of the Virtual Router. |  |
| **peering_name** | **String** | The name of the resource that is unique within a resource group. This name can be used to access the resource. |  |

### Return type

[**VirtualRouterPeering**](VirtualRouterPeering.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_router_peerings_list

> <VirtualRouterPeeringListResult> virtual_router_peerings_list(api_version, subscription_id, resource_group_name, virtual_router_name)



Lists all Virtual Router Peerings in a Virtual Router resource.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualRouterPeeringsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
virtual_router_name = 'virtual_router_name_example' # String | The name of the Virtual Router.

begin
  
  result = api_instance.virtual_router_peerings_list(api_version, subscription_id, resource_group_name, virtual_router_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualRouterPeeringsApi->virtual_router_peerings_list: #{e}"
end
```

#### Using the virtual_router_peerings_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualRouterPeeringListResult>, Integer, Hash)> virtual_router_peerings_list_with_http_info(api_version, subscription_id, resource_group_name, virtual_router_name)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_router_peerings_list_with_http_info(api_version, subscription_id, resource_group_name, virtual_router_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualRouterPeeringListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualRouterPeeringsApi->virtual_router_peerings_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **virtual_router_name** | **String** | The name of the Virtual Router. |  |

### Return type

[**VirtualRouterPeeringListResult**](VirtualRouterPeeringListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

