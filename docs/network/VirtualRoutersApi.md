# AzureSDK::VirtualRoutersApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**virtual_routers_create_or_update**](VirtualRoutersApi.md#virtual_routers_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualRouters/{virtualRouterName} |  |
| [**virtual_routers_delete**](VirtualRoutersApi.md#virtual_routers_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualRouters/{virtualRouterName} |  |
| [**virtual_routers_get**](VirtualRoutersApi.md#virtual_routers_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualRouters/{virtualRouterName} |  |
| [**virtual_routers_list**](VirtualRoutersApi.md#virtual_routers_list) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Network/virtualRouters |  |
| [**virtual_routers_list_by_resource_group**](VirtualRoutersApi.md#virtual_routers_list_by_resource_group) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualRouters |  |


## virtual_routers_create_or_update

> <VirtualRouter> virtual_routers_create_or_update(api_version, subscription_id, resource_group_name, virtual_router_name, parameters)



Creates or updates the specified Virtual Router.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::VirtualRoutersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
virtual_router_name = 'virtual_router_name_example' # String | The name of the Virtual Router.
parameters = AzureSDK::VirtualRouter.new # VirtualRouter | Parameters supplied to the create or update Virtual Router.

begin
  
  result = api_instance.virtual_routers_create_or_update(api_version, subscription_id, resource_group_name, virtual_router_name, parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualRoutersApi->virtual_routers_create_or_update: #{e}"
end
```

#### Using the virtual_routers_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualRouter>, Integer, Hash)> virtual_routers_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, virtual_router_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_routers_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, virtual_router_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualRouter>
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualRoutersApi->virtual_routers_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **virtual_router_name** | **String** | The name of the Virtual Router. |  |
| **parameters** | [**VirtualRouter**](VirtualRouter.md) | Parameters supplied to the create or update Virtual Router. |  |

### Return type

[**VirtualRouter**](VirtualRouter.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## virtual_routers_delete

> virtual_routers_delete(api_version, subscription_id, resource_group_name, virtual_router_name)



Deletes the specified Virtual Router.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::VirtualRoutersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
virtual_router_name = 'virtual_router_name_example' # String | The name of the Virtual Router.

begin
  
  api_instance.virtual_routers_delete(api_version, subscription_id, resource_group_name, virtual_router_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualRoutersApi->virtual_routers_delete: #{e}"
end
```

#### Using the virtual_routers_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_routers_delete_with_http_info(api_version, subscription_id, resource_group_name, virtual_router_name)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_routers_delete_with_http_info(api_version, subscription_id, resource_group_name, virtual_router_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualRoutersApi->virtual_routers_delete_with_http_info: #{e}"
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

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_routers_get

> <VirtualRouter> virtual_routers_get(api_version, subscription_id, resource_group_name, virtual_router_name, opts)



Gets the specified Virtual Router.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::VirtualRoutersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
virtual_router_name = 'virtual_router_name_example' # String | The name of the Virtual Router.
opts = {
  expand: 'expand_example' # String | Expands referenced resources.
}

begin
  
  result = api_instance.virtual_routers_get(api_version, subscription_id, resource_group_name, virtual_router_name, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualRoutersApi->virtual_routers_get: #{e}"
end
```

#### Using the virtual_routers_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualRouter>, Integer, Hash)> virtual_routers_get_with_http_info(api_version, subscription_id, resource_group_name, virtual_router_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_routers_get_with_http_info(api_version, subscription_id, resource_group_name, virtual_router_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualRouter>
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualRoutersApi->virtual_routers_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **virtual_router_name** | **String** | The name of the Virtual Router. |  |
| **expand** | **String** | Expands referenced resources. | [optional] |

### Return type

[**VirtualRouter**](VirtualRouter.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_routers_list

> <VirtualRouterListResult> virtual_routers_list(api_version, subscription_id)



Gets all the Virtual Routers in a subscription.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::VirtualRoutersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.

begin
  
  result = api_instance.virtual_routers_list(api_version, subscription_id)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualRoutersApi->virtual_routers_list: #{e}"
end
```

#### Using the virtual_routers_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualRouterListResult>, Integer, Hash)> virtual_routers_list_with_http_info(api_version, subscription_id)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_routers_list_with_http_info(api_version, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualRouterListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualRoutersApi->virtual_routers_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |

### Return type

[**VirtualRouterListResult**](VirtualRouterListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_routers_list_by_resource_group

> <VirtualRouterListResult> virtual_routers_list_by_resource_group(api_version, subscription_id, resource_group_name)



Lists all Virtual Routers in a resource group.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::VirtualRoutersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.

begin
  
  result = api_instance.virtual_routers_list_by_resource_group(api_version, subscription_id, resource_group_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualRoutersApi->virtual_routers_list_by_resource_group: #{e}"
end
```

#### Using the virtual_routers_list_by_resource_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualRouterListResult>, Integer, Hash)> virtual_routers_list_by_resource_group_with_http_info(api_version, subscription_id, resource_group_name)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_routers_list_by_resource_group_with_http_info(api_version, subscription_id, resource_group_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualRouterListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualRoutersApi->virtual_routers_list_by_resource_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |

### Return type

[**VirtualRouterListResult**](VirtualRouterListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

