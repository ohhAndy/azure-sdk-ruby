# AzureSDK::NatGatewaysApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**nat_gateways_create_or_update**](NatGatewaysApi.md#nat_gateways_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/natGateways/{natGatewayName} |  |
| [**nat_gateways_delete**](NatGatewaysApi.md#nat_gateways_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/natGateways/{natGatewayName} |  |
| [**nat_gateways_get**](NatGatewaysApi.md#nat_gateways_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/natGateways/{natGatewayName} |  |
| [**nat_gateways_list**](NatGatewaysApi.md#nat_gateways_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/natGateways |  |
| [**nat_gateways_list_all**](NatGatewaysApi.md#nat_gateways_list_all) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Network/natGateways |  |
| [**nat_gateways_update_tags**](NatGatewaysApi.md#nat_gateways_update_tags) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/natGateways/{natGatewayName} |  |


## nat_gateways_create_or_update

> <NatGateway> nat_gateways_create_or_update(api_version, subscription_id, resource_group_name, nat_gateway_name, parameters)



Creates or updates a nat gateway.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::NatGatewaysApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
nat_gateway_name = 'nat_gateway_name_example' # String | The name of the nat gateway.
parameters = AzureSDK::NatGateway.new # NatGateway | Parameters supplied to the create or update nat gateway operation.

begin
  
  result = api_instance.nat_gateways_create_or_update(api_version, subscription_id, resource_group_name, nat_gateway_name, parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling NatGatewaysApi->nat_gateways_create_or_update: #{e}"
end
```

#### Using the nat_gateways_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NatGateway>, Integer, Hash)> nat_gateways_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, nat_gateway_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.nat_gateways_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, nat_gateway_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NatGateway>
rescue AzureSDK::ApiError => e
  puts "Error when calling NatGatewaysApi->nat_gateways_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **nat_gateway_name** | **String** | The name of the nat gateway. |  |
| **parameters** | [**NatGateway**](NatGateway.md) | Parameters supplied to the create or update nat gateway operation. |  |

### Return type

[**NatGateway**](NatGateway.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## nat_gateways_delete

> nat_gateways_delete(api_version, subscription_id, resource_group_name, nat_gateway_name)



Deletes the specified nat gateway.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::NatGatewaysApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
nat_gateway_name = 'nat_gateway_name_example' # String | The name of the nat gateway.

begin
  
  api_instance.nat_gateways_delete(api_version, subscription_id, resource_group_name, nat_gateway_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling NatGatewaysApi->nat_gateways_delete: #{e}"
end
```

#### Using the nat_gateways_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> nat_gateways_delete_with_http_info(api_version, subscription_id, resource_group_name, nat_gateway_name)

```ruby
begin
  
  data, status_code, headers = api_instance.nat_gateways_delete_with_http_info(api_version, subscription_id, resource_group_name, nat_gateway_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling NatGatewaysApi->nat_gateways_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **nat_gateway_name** | **String** | The name of the nat gateway. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## nat_gateways_get

> <NatGateway> nat_gateways_get(api_version, subscription_id, resource_group_name, nat_gateway_name, opts)



Gets the specified nat gateway in a specified resource group.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::NatGatewaysApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
nat_gateway_name = 'nat_gateway_name_example' # String | The name of the nat gateway.
opts = {
  expand: 'expand_example' # String | Expands referenced resources.
}

begin
  
  result = api_instance.nat_gateways_get(api_version, subscription_id, resource_group_name, nat_gateway_name, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling NatGatewaysApi->nat_gateways_get: #{e}"
end
```

#### Using the nat_gateways_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NatGateway>, Integer, Hash)> nat_gateways_get_with_http_info(api_version, subscription_id, resource_group_name, nat_gateway_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.nat_gateways_get_with_http_info(api_version, subscription_id, resource_group_name, nat_gateway_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NatGateway>
rescue AzureSDK::ApiError => e
  puts "Error when calling NatGatewaysApi->nat_gateways_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **nat_gateway_name** | **String** | The name of the nat gateway. |  |
| **expand** | **String** | Expands referenced resources. | [optional] |

### Return type

[**NatGateway**](NatGateway.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## nat_gateways_list

> <NatGatewayListResult> nat_gateways_list(api_version, subscription_id, resource_group_name)



Gets all nat gateways in a resource group.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::NatGatewaysApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.

begin
  
  result = api_instance.nat_gateways_list(api_version, subscription_id, resource_group_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling NatGatewaysApi->nat_gateways_list: #{e}"
end
```

#### Using the nat_gateways_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NatGatewayListResult>, Integer, Hash)> nat_gateways_list_with_http_info(api_version, subscription_id, resource_group_name)

```ruby
begin
  
  data, status_code, headers = api_instance.nat_gateways_list_with_http_info(api_version, subscription_id, resource_group_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NatGatewayListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling NatGatewaysApi->nat_gateways_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |

### Return type

[**NatGatewayListResult**](NatGatewayListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## nat_gateways_list_all

> <NatGatewayListResult> nat_gateways_list_all(api_version, subscription_id)



Gets all the Nat Gateways in a subscription.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::NatGatewaysApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.

begin
  
  result = api_instance.nat_gateways_list_all(api_version, subscription_id)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling NatGatewaysApi->nat_gateways_list_all: #{e}"
end
```

#### Using the nat_gateways_list_all_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NatGatewayListResult>, Integer, Hash)> nat_gateways_list_all_with_http_info(api_version, subscription_id)

```ruby
begin
  
  data, status_code, headers = api_instance.nat_gateways_list_all_with_http_info(api_version, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NatGatewayListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling NatGatewaysApi->nat_gateways_list_all_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |

### Return type

[**NatGatewayListResult**](NatGatewayListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## nat_gateways_update_tags

> <NatGateway> nat_gateways_update_tags(api_version, subscription_id, resource_group_name, nat_gateway_name, parameters)



Updates nat gateway tags.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::NatGatewaysApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
nat_gateway_name = 'nat_gateway_name_example' # String | The name of the nat gateway.
parameters = AzureSDK::TagsObject.new # TagsObject | Parameters supplied to update nat gateway tags.

begin
  
  result = api_instance.nat_gateways_update_tags(api_version, subscription_id, resource_group_name, nat_gateway_name, parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling NatGatewaysApi->nat_gateways_update_tags: #{e}"
end
```

#### Using the nat_gateways_update_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NatGateway>, Integer, Hash)> nat_gateways_update_tags_with_http_info(api_version, subscription_id, resource_group_name, nat_gateway_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.nat_gateways_update_tags_with_http_info(api_version, subscription_id, resource_group_name, nat_gateway_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NatGateway>
rescue AzureSDK::ApiError => e
  puts "Error when calling NatGatewaysApi->nat_gateways_update_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **nat_gateway_name** | **String** | The name of the nat gateway. |  |
| **parameters** | [**TagsObject**](TagsObject.md) | Parameters supplied to update nat gateway tags. |  |

### Return type

[**NatGateway**](NatGateway.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

