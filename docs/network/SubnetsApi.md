# AzureSDK::SubnetsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**subnets_create_or_update**](SubnetsApi.md#subnets_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/subnets/{subnetName} |  |
| [**subnets_delete**](SubnetsApi.md#subnets_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/subnets/{subnetName} |  |
| [**subnets_get**](SubnetsApi.md#subnets_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/subnets/{subnetName} |  |
| [**subnets_list**](SubnetsApi.md#subnets_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/subnets |  |


## subnets_create_or_update

> <Subnet> subnets_create_or_update(api_version, subscription_id, resource_group_name, virtual_network_name, subnet_name, subnet_parameters)



Creates or updates a subnet in the specified virtual network.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::SubnetsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
virtual_network_name = 'virtual_network_name_example' # String | The name of the virtual network.
subnet_name = 'subnet_name_example' # String | The name of the subnet.
subnet_parameters = AzureSDK::Subnet.new # Subnet | Parameters supplied to the create or update subnet operation.

begin
  
  result = api_instance.subnets_create_or_update(api_version, subscription_id, resource_group_name, virtual_network_name, subnet_name, subnet_parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling SubnetsApi->subnets_create_or_update: #{e}"
end
```

#### Using the subnets_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Subnet>, Integer, Hash)> subnets_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, virtual_network_name, subnet_name, subnet_parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.subnets_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, virtual_network_name, subnet_name, subnet_parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Subnet>
rescue AzureSDK::ApiError => e
  puts "Error when calling SubnetsApi->subnets_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **virtual_network_name** | **String** | The name of the virtual network. |  |
| **subnet_name** | **String** | The name of the subnet. |  |
| **subnet_parameters** | [**Subnet**](Subnet.md) | Parameters supplied to the create or update subnet operation. |  |

### Return type

[**Subnet**](Subnet.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## subnets_delete

> subnets_delete(api_version, subscription_id, resource_group_name, virtual_network_name, subnet_name)



Deletes the specified subnet.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::SubnetsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
virtual_network_name = 'virtual_network_name_example' # String | The name of the virtual network.
subnet_name = 'subnet_name_example' # String | The name of the subnet.

begin
  
  api_instance.subnets_delete(api_version, subscription_id, resource_group_name, virtual_network_name, subnet_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling SubnetsApi->subnets_delete: #{e}"
end
```

#### Using the subnets_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> subnets_delete_with_http_info(api_version, subscription_id, resource_group_name, virtual_network_name, subnet_name)

```ruby
begin
  
  data, status_code, headers = api_instance.subnets_delete_with_http_info(api_version, subscription_id, resource_group_name, virtual_network_name, subnet_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling SubnetsApi->subnets_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **virtual_network_name** | **String** | The name of the virtual network. |  |
| **subnet_name** | **String** | The name of the subnet. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## subnets_get

> <Subnet> subnets_get(api_version, subscription_id, resource_group_name, virtual_network_name, subnet_name, opts)



Gets the specified subnet by virtual network and resource group.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::SubnetsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
virtual_network_name = 'virtual_network_name_example' # String | The name of the virtual network.
subnet_name = 'subnet_name_example' # String | The name of the subnet.
opts = {
  expand: 'expand_example' # String | Expands referenced resources.
}

begin
  
  result = api_instance.subnets_get(api_version, subscription_id, resource_group_name, virtual_network_name, subnet_name, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling SubnetsApi->subnets_get: #{e}"
end
```

#### Using the subnets_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Subnet>, Integer, Hash)> subnets_get_with_http_info(api_version, subscription_id, resource_group_name, virtual_network_name, subnet_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.subnets_get_with_http_info(api_version, subscription_id, resource_group_name, virtual_network_name, subnet_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Subnet>
rescue AzureSDK::ApiError => e
  puts "Error when calling SubnetsApi->subnets_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **virtual_network_name** | **String** | The name of the virtual network. |  |
| **subnet_name** | **String** | The name of the subnet. |  |
| **expand** | **String** | Expands referenced resources. | [optional] |

### Return type

[**Subnet**](Subnet.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## subnets_list

> <SubnetListResult> subnets_list(api_version, subscription_id, resource_group_name, virtual_network_name)



Gets all subnets in a virtual network.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::SubnetsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
virtual_network_name = 'virtual_network_name_example' # String | The name of the virtual network.

begin
  
  result = api_instance.subnets_list(api_version, subscription_id, resource_group_name, virtual_network_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling SubnetsApi->subnets_list: #{e}"
end
```

#### Using the subnets_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubnetListResult>, Integer, Hash)> subnets_list_with_http_info(api_version, subscription_id, resource_group_name, virtual_network_name)

```ruby
begin
  
  data, status_code, headers = api_instance.subnets_list_with_http_info(api_version, subscription_id, resource_group_name, virtual_network_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubnetListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling SubnetsApi->subnets_list_with_http_info: #{e}"
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

[**SubnetListResult**](SubnetListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

