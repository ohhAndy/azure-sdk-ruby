# AzureRest::VirtualNetworksApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**virtual_networks_create_or_update**](VirtualNetworksApi.md#virtual_networks_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName} |  |
| [**virtual_networks_delete**](VirtualNetworksApi.md#virtual_networks_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName} |  |
| [**virtual_networks_get**](VirtualNetworksApi.md#virtual_networks_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName} |  |
| [**virtual_networks_list**](VirtualNetworksApi.md#virtual_networks_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks |  |
| [**virtual_networks_list_all**](VirtualNetworksApi.md#virtual_networks_list_all) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Network/virtualNetworks |  |
| [**virtual_networks_move_ip_configurations**](VirtualNetworksApi.md#virtual_networks_move_ip_configurations) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/moveIpConfigurations |  |
| [**virtual_networks_update_tags**](VirtualNetworksApi.md#virtual_networks_update_tags) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName} |  |


## virtual_networks_create_or_update

> <VirtualNetwork> virtual_networks_create_or_update(api_version, subscription_id, resource_group_name, virtual_network_name, parameters)



Creates or updates a virtual network in the specified resource group.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualNetworksApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
virtual_network_name = 'virtual_network_name_example' # String | The name of the virtual network.
parameters = AzureRest::VirtualNetwork.new # VirtualNetwork | Parameters supplied to the create or update virtual network operation.

begin
  
  result = api_instance.virtual_networks_create_or_update(api_version, subscription_id, resource_group_name, virtual_network_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualNetworksApi->virtual_networks_create_or_update: #{e}"
end
```

#### Using the virtual_networks_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualNetwork>, Integer, Hash)> virtual_networks_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, virtual_network_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_networks_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, virtual_network_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualNetwork>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualNetworksApi->virtual_networks_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **virtual_network_name** | **String** | The name of the virtual network. |  |
| **parameters** | [**VirtualNetwork**](VirtualNetwork.md) | Parameters supplied to the create or update virtual network operation. |  |

### Return type

[**VirtualNetwork**](VirtualNetwork.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## virtual_networks_delete

> virtual_networks_delete(api_version, subscription_id, resource_group_name, virtual_network_name)



Deletes the specified virtual network.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualNetworksApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
virtual_network_name = 'virtual_network_name_example' # String | The name of the virtual network.

begin
  
  api_instance.virtual_networks_delete(api_version, subscription_id, resource_group_name, virtual_network_name)
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualNetworksApi->virtual_networks_delete: #{e}"
end
```

#### Using the virtual_networks_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_networks_delete_with_http_info(api_version, subscription_id, resource_group_name, virtual_network_name)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_networks_delete_with_http_info(api_version, subscription_id, resource_group_name, virtual_network_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualNetworksApi->virtual_networks_delete_with_http_info: #{e}"
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

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_networks_get

> <VirtualNetwork> virtual_networks_get(api_version, subscription_id, resource_group_name, virtual_network_name, opts)



Gets the specified virtual network by resource group.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualNetworksApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
virtual_network_name = 'virtual_network_name_example' # String | The name of the virtual network.
opts = {
  expand: 'expand_example' # String | Expands referenced resources.
}

begin
  
  result = api_instance.virtual_networks_get(api_version, subscription_id, resource_group_name, virtual_network_name, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualNetworksApi->virtual_networks_get: #{e}"
end
```

#### Using the virtual_networks_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualNetwork>, Integer, Hash)> virtual_networks_get_with_http_info(api_version, subscription_id, resource_group_name, virtual_network_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_networks_get_with_http_info(api_version, subscription_id, resource_group_name, virtual_network_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualNetwork>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualNetworksApi->virtual_networks_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **virtual_network_name** | **String** | The name of the virtual network. |  |
| **expand** | **String** | Expands referenced resources. | [optional] |

### Return type

[**VirtualNetwork**](VirtualNetwork.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_networks_list

> <VirtualNetworkListResult> virtual_networks_list(api_version, subscription_id, resource_group_name)



Gets all virtual networks in a resource group.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualNetworksApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.

begin
  
  result = api_instance.virtual_networks_list(api_version, subscription_id, resource_group_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualNetworksApi->virtual_networks_list: #{e}"
end
```

#### Using the virtual_networks_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualNetworkListResult>, Integer, Hash)> virtual_networks_list_with_http_info(api_version, subscription_id, resource_group_name)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_networks_list_with_http_info(api_version, subscription_id, resource_group_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualNetworkListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualNetworksApi->virtual_networks_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |

### Return type

[**VirtualNetworkListResult**](VirtualNetworkListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_networks_list_all

> <VirtualNetworkListResult> virtual_networks_list_all(api_version, subscription_id)



Gets all virtual networks in a subscription.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualNetworksApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.

begin
  
  result = api_instance.virtual_networks_list_all(api_version, subscription_id)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualNetworksApi->virtual_networks_list_all: #{e}"
end
```

#### Using the virtual_networks_list_all_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualNetworkListResult>, Integer, Hash)> virtual_networks_list_all_with_http_info(api_version, subscription_id)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_networks_list_all_with_http_info(api_version, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualNetworkListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualNetworksApi->virtual_networks_list_all_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |

### Return type

[**VirtualNetworkListResult**](VirtualNetworkListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_networks_move_ip_configurations

> virtual_networks_move_ip_configurations(api_version, subscription_id, resource_group_name, virtual_network_name, body)



Move IP configurations from one virtual network to another.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualNetworksApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
virtual_network_name = 'virtual_network_name_example' # String | The name of the virtual network.
body = AzureRest::MoveIpConfigurationsRequest.new({move_ip_configuration_items: [AzureRest::MoveIpConfigurationItem.new({source_ip_configuration: AzureRest::MoveIpConfigurationResourceReference.new({id: 'id_example'}), target_ip_configuration: AzureRest::MoveIpConfigurationResourceReference.new({id: 'id_example'})})]}) # MoveIpConfigurationsRequest | Parameters supplied to move IP configurations from one virtual network to another.

begin
  
  api_instance.virtual_networks_move_ip_configurations(api_version, subscription_id, resource_group_name, virtual_network_name, body)
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualNetworksApi->virtual_networks_move_ip_configurations: #{e}"
end
```

#### Using the virtual_networks_move_ip_configurations_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_networks_move_ip_configurations_with_http_info(api_version, subscription_id, resource_group_name, virtual_network_name, body)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_networks_move_ip_configurations_with_http_info(api_version, subscription_id, resource_group_name, virtual_network_name, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualNetworksApi->virtual_networks_move_ip_configurations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **virtual_network_name** | **String** | The name of the virtual network. |  |
| **body** | [**MoveIpConfigurationsRequest**](MoveIpConfigurationsRequest.md) | Parameters supplied to move IP configurations from one virtual network to another. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## virtual_networks_update_tags

> <VirtualNetwork> virtual_networks_update_tags(api_version, subscription_id, resource_group_name, virtual_network_name, parameters)



Updates a virtual network tags.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualNetworksApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
virtual_network_name = 'virtual_network_name_example' # String | The name of the virtual network.
parameters = AzureRest::TagsObject.new # TagsObject | Parameters supplied to update virtual network tags.

begin
  
  result = api_instance.virtual_networks_update_tags(api_version, subscription_id, resource_group_name, virtual_network_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualNetworksApi->virtual_networks_update_tags: #{e}"
end
```

#### Using the virtual_networks_update_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualNetwork>, Integer, Hash)> virtual_networks_update_tags_with_http_info(api_version, subscription_id, resource_group_name, virtual_network_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_networks_update_tags_with_http_info(api_version, subscription_id, resource_group_name, virtual_network_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualNetwork>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualNetworksApi->virtual_networks_update_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **virtual_network_name** | **String** | The name of the virtual network. |  |
| **parameters** | [**TagsObject**](TagsObject.md) | Parameters supplied to update virtual network tags. |  |

### Return type

[**VirtualNetwork**](VirtualNetwork.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

