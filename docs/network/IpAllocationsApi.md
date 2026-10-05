# AzureRest::IpAllocationsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ip_allocations_create_or_update**](IpAllocationsApi.md#ip_allocations_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/IpAllocations/{ipAllocationName} |  |
| [**ip_allocations_delete**](IpAllocationsApi.md#ip_allocations_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/IpAllocations/{ipAllocationName} |  |
| [**ip_allocations_get**](IpAllocationsApi.md#ip_allocations_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/IpAllocations/{ipAllocationName} |  |
| [**ip_allocations_list**](IpAllocationsApi.md#ip_allocations_list) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Network/IpAllocations |  |
| [**ip_allocations_list_by_resource_group**](IpAllocationsApi.md#ip_allocations_list_by_resource_group) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/IpAllocations |  |
| [**ip_allocations_update_tags**](IpAllocationsApi.md#ip_allocations_update_tags) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/IpAllocations/{ipAllocationName} |  |


## ip_allocations_create_or_update

> <IpAllocation> ip_allocations_create_or_update(api_version, subscription_id, resource_group_name, ip_allocation_name, parameters)



Creates or updates an IpAllocation in the specified resource group.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::IpAllocationsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
ip_allocation_name = 'ip_allocation_name_example' # String | The name of the IpAllocation.
parameters = AzureRest::IpAllocation.new # IpAllocation | Parameters supplied to the create or update virtual network operation.

begin
  
  result = api_instance.ip_allocations_create_or_update(api_version, subscription_id, resource_group_name, ip_allocation_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling IpAllocationsApi->ip_allocations_create_or_update: #{e}"
end
```

#### Using the ip_allocations_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IpAllocation>, Integer, Hash)> ip_allocations_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, ip_allocation_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.ip_allocations_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, ip_allocation_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IpAllocation>
rescue AzureRest::ApiError => e
  puts "Error when calling IpAllocationsApi->ip_allocations_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **ip_allocation_name** | **String** | The name of the IpAllocation. |  |
| **parameters** | [**IpAllocation**](IpAllocation.md) | Parameters supplied to the create or update virtual network operation. |  |

### Return type

[**IpAllocation**](IpAllocation.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ip_allocations_delete

> ip_allocations_delete(api_version, subscription_id, resource_group_name, ip_allocation_name)



Deletes the specified IpAllocation.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::IpAllocationsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
ip_allocation_name = 'ip_allocation_name_example' # String | The name of the IpAllocation.

begin
  
  api_instance.ip_allocations_delete(api_version, subscription_id, resource_group_name, ip_allocation_name)
rescue AzureRest::ApiError => e
  puts "Error when calling IpAllocationsApi->ip_allocations_delete: #{e}"
end
```

#### Using the ip_allocations_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> ip_allocations_delete_with_http_info(api_version, subscription_id, resource_group_name, ip_allocation_name)

```ruby
begin
  
  data, status_code, headers = api_instance.ip_allocations_delete_with_http_info(api_version, subscription_id, resource_group_name, ip_allocation_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling IpAllocationsApi->ip_allocations_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **ip_allocation_name** | **String** | The name of the IpAllocation. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ip_allocations_get

> <IpAllocation> ip_allocations_get(api_version, subscription_id, resource_group_name, ip_allocation_name, opts)



Gets the specified IpAllocation by resource group.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::IpAllocationsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
ip_allocation_name = 'ip_allocation_name_example' # String | The name of the IpAllocation.
opts = {
  expand: 'expand_example' # String | Expands referenced resources.
}

begin
  
  result = api_instance.ip_allocations_get(api_version, subscription_id, resource_group_name, ip_allocation_name, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling IpAllocationsApi->ip_allocations_get: #{e}"
end
```

#### Using the ip_allocations_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IpAllocation>, Integer, Hash)> ip_allocations_get_with_http_info(api_version, subscription_id, resource_group_name, ip_allocation_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.ip_allocations_get_with_http_info(api_version, subscription_id, resource_group_name, ip_allocation_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IpAllocation>
rescue AzureRest::ApiError => e
  puts "Error when calling IpAllocationsApi->ip_allocations_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **ip_allocation_name** | **String** | The name of the IpAllocation. |  |
| **expand** | **String** | Expands referenced resources. | [optional] |

### Return type

[**IpAllocation**](IpAllocation.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ip_allocations_list

> <IpAllocationListResult> ip_allocations_list(api_version, subscription_id)



Gets all IpAllocations in a subscription.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::IpAllocationsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.

begin
  
  result = api_instance.ip_allocations_list(api_version, subscription_id)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling IpAllocationsApi->ip_allocations_list: #{e}"
end
```

#### Using the ip_allocations_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IpAllocationListResult>, Integer, Hash)> ip_allocations_list_with_http_info(api_version, subscription_id)

```ruby
begin
  
  data, status_code, headers = api_instance.ip_allocations_list_with_http_info(api_version, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IpAllocationListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling IpAllocationsApi->ip_allocations_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |

### Return type

[**IpAllocationListResult**](IpAllocationListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ip_allocations_list_by_resource_group

> <IpAllocationListResult> ip_allocations_list_by_resource_group(api_version, subscription_id, resource_group_name)



Gets all IpAllocations in a resource group.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::IpAllocationsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.

begin
  
  result = api_instance.ip_allocations_list_by_resource_group(api_version, subscription_id, resource_group_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling IpAllocationsApi->ip_allocations_list_by_resource_group: #{e}"
end
```

#### Using the ip_allocations_list_by_resource_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IpAllocationListResult>, Integer, Hash)> ip_allocations_list_by_resource_group_with_http_info(api_version, subscription_id, resource_group_name)

```ruby
begin
  
  data, status_code, headers = api_instance.ip_allocations_list_by_resource_group_with_http_info(api_version, subscription_id, resource_group_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IpAllocationListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling IpAllocationsApi->ip_allocations_list_by_resource_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |

### Return type

[**IpAllocationListResult**](IpAllocationListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ip_allocations_update_tags

> <IpAllocation> ip_allocations_update_tags(api_version, subscription_id, resource_group_name, ip_allocation_name, parameters)



Updates a IpAllocation tags.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::IpAllocationsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
ip_allocation_name = 'ip_allocation_name_example' # String | The name of the IpAllocation.
parameters = AzureRest::TagsObject.new # TagsObject | Parameters supplied to update IpAllocation tags.

begin
  
  result = api_instance.ip_allocations_update_tags(api_version, subscription_id, resource_group_name, ip_allocation_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling IpAllocationsApi->ip_allocations_update_tags: #{e}"
end
```

#### Using the ip_allocations_update_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IpAllocation>, Integer, Hash)> ip_allocations_update_tags_with_http_info(api_version, subscription_id, resource_group_name, ip_allocation_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.ip_allocations_update_tags_with_http_info(api_version, subscription_id, resource_group_name, ip_allocation_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IpAllocation>
rescue AzureRest::ApiError => e
  puts "Error when calling IpAllocationsApi->ip_allocations_update_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **ip_allocation_name** | **String** | The name of the IpAllocation. |  |
| **parameters** | [**TagsObject**](TagsObject.md) | Parameters supplied to update IpAllocation tags. |  |

### Return type

[**IpAllocation**](IpAllocation.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

