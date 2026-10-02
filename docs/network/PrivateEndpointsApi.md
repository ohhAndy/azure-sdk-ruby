# AzureSDK::PrivateEndpointsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**private_endpoints_create_or_update**](PrivateEndpointsApi.md#private_endpoints_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/privateEndpoints/{privateEndpointName} |  |
| [**private_endpoints_delete**](PrivateEndpointsApi.md#private_endpoints_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/privateEndpoints/{privateEndpointName} |  |
| [**private_endpoints_get**](PrivateEndpointsApi.md#private_endpoints_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/privateEndpoints/{privateEndpointName} |  |
| [**private_endpoints_list**](PrivateEndpointsApi.md#private_endpoints_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/privateEndpoints |  |
| [**private_endpoints_list_by_subscription**](PrivateEndpointsApi.md#private_endpoints_list_by_subscription) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Network/privateEndpoints |  |


## private_endpoints_create_or_update

> <PrivateEndpoint> private_endpoints_create_or_update(api_version, subscription_id, resource_group_name, private_endpoint_name, parameters)



Creates or updates an private endpoint in the specified resource group.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::PrivateEndpointsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
private_endpoint_name = 'private_endpoint_name_example' # String | The name of the private endpoint.
parameters = AzureSDK::PrivateEndpoint.new # PrivateEndpoint | Parameters supplied to the create or update private endpoint operation.

begin
  
  result = api_instance.private_endpoints_create_or_update(api_version, subscription_id, resource_group_name, private_endpoint_name, parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling PrivateEndpointsApi->private_endpoints_create_or_update: #{e}"
end
```

#### Using the private_endpoints_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PrivateEndpoint>, Integer, Hash)> private_endpoints_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, private_endpoint_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.private_endpoints_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, private_endpoint_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrivateEndpoint>
rescue AzureSDK::ApiError => e
  puts "Error when calling PrivateEndpointsApi->private_endpoints_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **private_endpoint_name** | **String** | The name of the private endpoint. |  |
| **parameters** | [**PrivateEndpoint**](PrivateEndpoint.md) | Parameters supplied to the create or update private endpoint operation. |  |

### Return type

[**PrivateEndpoint**](PrivateEndpoint.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## private_endpoints_delete

> private_endpoints_delete(api_version, subscription_id, resource_group_name, private_endpoint_name)



Deletes the specified private endpoint.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::PrivateEndpointsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
private_endpoint_name = 'private_endpoint_name_example' # String | The name of the private endpoint.

begin
  
  api_instance.private_endpoints_delete(api_version, subscription_id, resource_group_name, private_endpoint_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling PrivateEndpointsApi->private_endpoints_delete: #{e}"
end
```

#### Using the private_endpoints_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> private_endpoints_delete_with_http_info(api_version, subscription_id, resource_group_name, private_endpoint_name)

```ruby
begin
  
  data, status_code, headers = api_instance.private_endpoints_delete_with_http_info(api_version, subscription_id, resource_group_name, private_endpoint_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling PrivateEndpointsApi->private_endpoints_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **private_endpoint_name** | **String** | The name of the private endpoint. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## private_endpoints_get

> <PrivateEndpoint> private_endpoints_get(api_version, subscription_id, resource_group_name, private_endpoint_name, opts)



Gets the specified private endpoint by resource group.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::PrivateEndpointsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
private_endpoint_name = 'private_endpoint_name_example' # String | The name of the private endpoint.
opts = {
  expand: 'expand_example' # String | Expands referenced resources.
}

begin
  
  result = api_instance.private_endpoints_get(api_version, subscription_id, resource_group_name, private_endpoint_name, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling PrivateEndpointsApi->private_endpoints_get: #{e}"
end
```

#### Using the private_endpoints_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PrivateEndpoint>, Integer, Hash)> private_endpoints_get_with_http_info(api_version, subscription_id, resource_group_name, private_endpoint_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.private_endpoints_get_with_http_info(api_version, subscription_id, resource_group_name, private_endpoint_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrivateEndpoint>
rescue AzureSDK::ApiError => e
  puts "Error when calling PrivateEndpointsApi->private_endpoints_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **private_endpoint_name** | **String** | The name of the private endpoint. |  |
| **expand** | **String** | Expands referenced resources. | [optional] |

### Return type

[**PrivateEndpoint**](PrivateEndpoint.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## private_endpoints_list

> <PrivateEndpointListResult> private_endpoints_list(api_version, subscription_id, resource_group_name)



Gets all private endpoints in a resource group.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::PrivateEndpointsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.

begin
  
  result = api_instance.private_endpoints_list(api_version, subscription_id, resource_group_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling PrivateEndpointsApi->private_endpoints_list: #{e}"
end
```

#### Using the private_endpoints_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PrivateEndpointListResult>, Integer, Hash)> private_endpoints_list_with_http_info(api_version, subscription_id, resource_group_name)

```ruby
begin
  
  data, status_code, headers = api_instance.private_endpoints_list_with_http_info(api_version, subscription_id, resource_group_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrivateEndpointListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling PrivateEndpointsApi->private_endpoints_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |

### Return type

[**PrivateEndpointListResult**](PrivateEndpointListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## private_endpoints_list_by_subscription

> <PrivateEndpointListResult> private_endpoints_list_by_subscription(api_version, subscription_id)



Gets all private endpoints in a subscription.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::PrivateEndpointsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.

begin
  
  result = api_instance.private_endpoints_list_by_subscription(api_version, subscription_id)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling PrivateEndpointsApi->private_endpoints_list_by_subscription: #{e}"
end
```

#### Using the private_endpoints_list_by_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PrivateEndpointListResult>, Integer, Hash)> private_endpoints_list_by_subscription_with_http_info(api_version, subscription_id)

```ruby
begin
  
  data, status_code, headers = api_instance.private_endpoints_list_by_subscription_with_http_info(api_version, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrivateEndpointListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling PrivateEndpointsApi->private_endpoints_list_by_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |

### Return type

[**PrivateEndpointListResult**](PrivateEndpointListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

