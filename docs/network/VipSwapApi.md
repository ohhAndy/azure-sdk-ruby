# AzureSDK::VipSwapApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**vip_swap_create**](VipSwapApi.md#vip_swap_create) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{groupName}/providers/microsoft.Compute/cloudServices/{resourceName}/providers/Microsoft.Network/cloudServiceSlots/{singletonResource} |  |
| [**vip_swap_get**](VipSwapApi.md#vip_swap_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{groupName}/providers/microsoft.Compute/cloudServices/{resourceName}/providers/Microsoft.Network/cloudServiceSlots/{singletonResource} |  |
| [**vip_swap_list**](VipSwapApi.md#vip_swap_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{groupName}/providers/microsoft.Compute/cloudServices/{resourceName}/providers/Microsoft.Network/cloudServiceSlots |  |


## vip_swap_create

> vip_swap_create(api_version, subscription_id, group_name, resource_name, singleton_resource, parameters)



Performs vip swap operation on swappable cloud services.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::VipSwapApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
group_name = 'group_name_example' # String | 
resource_name = 'resource_name_example' # String | The name of the cloud service.
singleton_resource = 'swap' # String | The name of the singleton resource.
parameters = AzureSDK::SwapResource.new # SwapResource | SwapResource object where slot type should be the target slot after vip swap for the specified cloud service.

begin
  
  api_instance.vip_swap_create(api_version, subscription_id, group_name, resource_name, singleton_resource, parameters)
rescue AzureSDK::ApiError => e
  puts "Error when calling VipSwapApi->vip_swap_create: #{e}"
end
```

#### Using the vip_swap_create_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> vip_swap_create_with_http_info(api_version, subscription_id, group_name, resource_name, singleton_resource, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.vip_swap_create_with_http_info(api_version, subscription_id, group_name, resource_name, singleton_resource, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling VipSwapApi->vip_swap_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **group_name** | **String** |  |  |
| **resource_name** | **String** | The name of the cloud service. |  |
| **singleton_resource** | **String** | The name of the singleton resource. |  |
| **parameters** | [**SwapResource**](SwapResource.md) | SwapResource object where slot type should be the target slot after vip swap for the specified cloud service. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## vip_swap_get

> <SwapResource> vip_swap_get(api_version, subscription_id, group_name, resource_name, singleton_resource)



Gets the SwapResource which identifies the slot type for the specified cloud service. The slot type on a cloud service can either be Staging or Production

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::VipSwapApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
group_name = 'group_name_example' # String | 
resource_name = 'resource_name_example' # String | The name of the cloud service.
singleton_resource = 'swap' # String | The name of the singleton resource.

begin
  
  result = api_instance.vip_swap_get(api_version, subscription_id, group_name, resource_name, singleton_resource)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling VipSwapApi->vip_swap_get: #{e}"
end
```

#### Using the vip_swap_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SwapResource>, Integer, Hash)> vip_swap_get_with_http_info(api_version, subscription_id, group_name, resource_name, singleton_resource)

```ruby
begin
  
  data, status_code, headers = api_instance.vip_swap_get_with_http_info(api_version, subscription_id, group_name, resource_name, singleton_resource)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SwapResource>
rescue AzureSDK::ApiError => e
  puts "Error when calling VipSwapApi->vip_swap_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **group_name** | **String** |  |  |
| **resource_name** | **String** | The name of the cloud service. |  |
| **singleton_resource** | **String** | The name of the singleton resource. |  |

### Return type

[**SwapResource**](SwapResource.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## vip_swap_list

> <SwapResourceListResult> vip_swap_list(api_version, subscription_id, group_name, resource_name)



Gets the list of SwapResource which identifies the slot type for the specified cloud service. The slot type on a cloud service can either be Staging or Production

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::VipSwapApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
group_name = 'group_name_example' # String | 
resource_name = 'resource_name_example' # String | The name of the cloud service.

begin
  
  result = api_instance.vip_swap_list(api_version, subscription_id, group_name, resource_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling VipSwapApi->vip_swap_list: #{e}"
end
```

#### Using the vip_swap_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SwapResourceListResult>, Integer, Hash)> vip_swap_list_with_http_info(api_version, subscription_id, group_name, resource_name)

```ruby
begin
  
  data, status_code, headers = api_instance.vip_swap_list_with_http_info(api_version, subscription_id, group_name, resource_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SwapResourceListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling VipSwapApi->vip_swap_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **group_name** | **String** |  |  |
| **resource_name** | **String** | The name of the cloud service. |  |

### Return type

[**SwapResourceListResult**](SwapResourceListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

