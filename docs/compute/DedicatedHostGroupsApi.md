# AzureRest::DedicatedHostGroupsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**dedicated_host_groups_create_or_update**](DedicatedHostGroupsApi.md#dedicated_host_groups_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/hostGroups/{hostGroupName} |  |
| [**dedicated_host_groups_delete**](DedicatedHostGroupsApi.md#dedicated_host_groups_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/hostGroups/{hostGroupName} |  |
| [**dedicated_host_groups_get**](DedicatedHostGroupsApi.md#dedicated_host_groups_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/hostGroups/{hostGroupName} |  |
| [**dedicated_host_groups_list_by_resource_group**](DedicatedHostGroupsApi.md#dedicated_host_groups_list_by_resource_group) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/hostGroups |  |
| [**dedicated_host_groups_list_by_subscription**](DedicatedHostGroupsApi.md#dedicated_host_groups_list_by_subscription) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Compute/hostGroups |  |
| [**dedicated_host_groups_update**](DedicatedHostGroupsApi.md#dedicated_host_groups_update) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/hostGroups/{hostGroupName} |  |


## dedicated_host_groups_create_or_update

> <DedicatedHostGroup> dedicated_host_groups_create_or_update(api_version, subscription_id, resource_group_name, host_group_name, parameters)



Create or update a dedicated host group. For details of Dedicated Host and Dedicated Host Groups please see [Dedicated Host Documentation] (https://go.microsoft.com/fwlink/?linkid=2082596)

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::DedicatedHostGroupsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
host_group_name = 'host_group_name_example' # String | The name of the dedicated host group.
parameters = AzureRest::DedicatedHostGroup.new({location: 'location_example'}) # DedicatedHostGroup | Parameters supplied to the Create Dedicated Host Group.

begin
  
  result = api_instance.dedicated_host_groups_create_or_update(api_version, subscription_id, resource_group_name, host_group_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling DedicatedHostGroupsApi->dedicated_host_groups_create_or_update: #{e}"
end
```

#### Using the dedicated_host_groups_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DedicatedHostGroup>, Integer, Hash)> dedicated_host_groups_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, host_group_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.dedicated_host_groups_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, host_group_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DedicatedHostGroup>
rescue AzureRest::ApiError => e
  puts "Error when calling DedicatedHostGroupsApi->dedicated_host_groups_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **host_group_name** | **String** | The name of the dedicated host group. |  |
| **parameters** | [**DedicatedHostGroup**](DedicatedHostGroup.md) | Parameters supplied to the Create Dedicated Host Group. |  |

### Return type

[**DedicatedHostGroup**](DedicatedHostGroup.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## dedicated_host_groups_delete

> dedicated_host_groups_delete(api_version, subscription_id, resource_group_name, host_group_name)



Delete a dedicated host group.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::DedicatedHostGroupsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
host_group_name = 'host_group_name_example' # String | The name of the dedicated host group.

begin
  
  api_instance.dedicated_host_groups_delete(api_version, subscription_id, resource_group_name, host_group_name)
rescue AzureRest::ApiError => e
  puts "Error when calling DedicatedHostGroupsApi->dedicated_host_groups_delete: #{e}"
end
```

#### Using the dedicated_host_groups_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dedicated_host_groups_delete_with_http_info(api_version, subscription_id, resource_group_name, host_group_name)

```ruby
begin
  
  data, status_code, headers = api_instance.dedicated_host_groups_delete_with_http_info(api_version, subscription_id, resource_group_name, host_group_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling DedicatedHostGroupsApi->dedicated_host_groups_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **host_group_name** | **String** | The name of the dedicated host group. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## dedicated_host_groups_get

> <DedicatedHostGroup> dedicated_host_groups_get(api_version, subscription_id, resource_group_name, host_group_name, opts)



Retrieves information about a dedicated host group.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::DedicatedHostGroupsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
host_group_name = 'host_group_name_example' # String | The name of the dedicated host group.
opts = {
  expand: 'instanceView' # String | The expand expression to apply on the operation. 'InstanceView' will retrieve the list of instance views of the dedicated hosts under the dedicated host group. 'UserData' is not supported for dedicated host group.
}

begin
  
  result = api_instance.dedicated_host_groups_get(api_version, subscription_id, resource_group_name, host_group_name, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling DedicatedHostGroupsApi->dedicated_host_groups_get: #{e}"
end
```

#### Using the dedicated_host_groups_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DedicatedHostGroup>, Integer, Hash)> dedicated_host_groups_get_with_http_info(api_version, subscription_id, resource_group_name, host_group_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dedicated_host_groups_get_with_http_info(api_version, subscription_id, resource_group_name, host_group_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DedicatedHostGroup>
rescue AzureRest::ApiError => e
  puts "Error when calling DedicatedHostGroupsApi->dedicated_host_groups_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **host_group_name** | **String** | The name of the dedicated host group. |  |
| **expand** | **String** | The expand expression to apply on the operation. &#39;InstanceView&#39; will retrieve the list of instance views of the dedicated hosts under the dedicated host group. &#39;UserData&#39; is not supported for dedicated host group. | [optional] |

### Return type

[**DedicatedHostGroup**](DedicatedHostGroup.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## dedicated_host_groups_list_by_resource_group

> <DedicatedHostGroupListResult> dedicated_host_groups_list_by_resource_group(api_version, subscription_id, resource_group_name)



Lists all of the dedicated host groups in the specified resource group. Use the nextLink property in the response to get the next page of dedicated host groups.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::DedicatedHostGroupsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.

begin
  
  result = api_instance.dedicated_host_groups_list_by_resource_group(api_version, subscription_id, resource_group_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling DedicatedHostGroupsApi->dedicated_host_groups_list_by_resource_group: #{e}"
end
```

#### Using the dedicated_host_groups_list_by_resource_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DedicatedHostGroupListResult>, Integer, Hash)> dedicated_host_groups_list_by_resource_group_with_http_info(api_version, subscription_id, resource_group_name)

```ruby
begin
  
  data, status_code, headers = api_instance.dedicated_host_groups_list_by_resource_group_with_http_info(api_version, subscription_id, resource_group_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DedicatedHostGroupListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling DedicatedHostGroupsApi->dedicated_host_groups_list_by_resource_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |

### Return type

[**DedicatedHostGroupListResult**](DedicatedHostGroupListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## dedicated_host_groups_list_by_subscription

> <DedicatedHostGroupListResult> dedicated_host_groups_list_by_subscription(api_version, subscription_id)



Lists all of the dedicated host groups in the subscription. Use the nextLink property in the response to get the next page of dedicated host groups.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::DedicatedHostGroupsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.

begin
  
  result = api_instance.dedicated_host_groups_list_by_subscription(api_version, subscription_id)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling DedicatedHostGroupsApi->dedicated_host_groups_list_by_subscription: #{e}"
end
```

#### Using the dedicated_host_groups_list_by_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DedicatedHostGroupListResult>, Integer, Hash)> dedicated_host_groups_list_by_subscription_with_http_info(api_version, subscription_id)

```ruby
begin
  
  data, status_code, headers = api_instance.dedicated_host_groups_list_by_subscription_with_http_info(api_version, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DedicatedHostGroupListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling DedicatedHostGroupsApi->dedicated_host_groups_list_by_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |

### Return type

[**DedicatedHostGroupListResult**](DedicatedHostGroupListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## dedicated_host_groups_update

> <DedicatedHostGroup> dedicated_host_groups_update(api_version, subscription_id, resource_group_name, host_group_name, parameters)



Update an dedicated host group.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::DedicatedHostGroupsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
host_group_name = 'host_group_name_example' # String | The name of the dedicated host group.
parameters = AzureRest::DedicatedHostGroupUpdate.new # DedicatedHostGroupUpdate | Parameters supplied to the Update Dedicated Host Group operation.

begin
  
  result = api_instance.dedicated_host_groups_update(api_version, subscription_id, resource_group_name, host_group_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling DedicatedHostGroupsApi->dedicated_host_groups_update: #{e}"
end
```

#### Using the dedicated_host_groups_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DedicatedHostGroup>, Integer, Hash)> dedicated_host_groups_update_with_http_info(api_version, subscription_id, resource_group_name, host_group_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.dedicated_host_groups_update_with_http_info(api_version, subscription_id, resource_group_name, host_group_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DedicatedHostGroup>
rescue AzureRest::ApiError => e
  puts "Error when calling DedicatedHostGroupsApi->dedicated_host_groups_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **host_group_name** | **String** | The name of the dedicated host group. |  |
| **parameters** | [**DedicatedHostGroupUpdate**](DedicatedHostGroupUpdate.md) | Parameters supplied to the Update Dedicated Host Group operation. |  |

### Return type

[**DedicatedHostGroup**](DedicatedHostGroup.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

