# AzureRest::IpGroupsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ip_groups_create_or_update**](IpGroupsApi.md#ip_groups_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/ipGroups/{ipGroupsName} |  |
| [**ip_groups_delete**](IpGroupsApi.md#ip_groups_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/ipGroups/{ipGroupsName} |  |
| [**ip_groups_get**](IpGroupsApi.md#ip_groups_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/ipGroups/{ipGroupsName} |  |
| [**ip_groups_list**](IpGroupsApi.md#ip_groups_list) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Network/ipGroups |  |
| [**ip_groups_list_by_resource_group**](IpGroupsApi.md#ip_groups_list_by_resource_group) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/ipGroups |  |
| [**ip_groups_update_groups**](IpGroupsApi.md#ip_groups_update_groups) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/ipGroups/{ipGroupsName} |  |


## ip_groups_create_or_update

> <IpGroup> ip_groups_create_or_update(api_version, subscription_id, resource_group_name, ip_groups_name, parameters)



Creates or updates an ipGroups in a specified resource group.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::IpGroupsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
ip_groups_name = 'ip_groups_name_example' # String | The name of the ipGroups.
parameters = AzureRest::IpGroup.new # IpGroup | Parameters supplied to the create or update IpGroups operation.

begin
  
  result = api_instance.ip_groups_create_or_update(api_version, subscription_id, resource_group_name, ip_groups_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling IpGroupsApi->ip_groups_create_or_update: #{e}"
end
```

#### Using the ip_groups_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IpGroup>, Integer, Hash)> ip_groups_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, ip_groups_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.ip_groups_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, ip_groups_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IpGroup>
rescue AzureRest::ApiError => e
  puts "Error when calling IpGroupsApi->ip_groups_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **ip_groups_name** | **String** | The name of the ipGroups. |  |
| **parameters** | [**IpGroup**](IpGroup.md) | Parameters supplied to the create or update IpGroups operation. |  |

### Return type

[**IpGroup**](IpGroup.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ip_groups_delete

> ip_groups_delete(api_version, subscription_id, resource_group_name, ip_groups_name)



Deletes the specified ipGroups.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::IpGroupsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
ip_groups_name = 'ip_groups_name_example' # String | The name of the ipGroups.

begin
  
  api_instance.ip_groups_delete(api_version, subscription_id, resource_group_name, ip_groups_name)
rescue AzureRest::ApiError => e
  puts "Error when calling IpGroupsApi->ip_groups_delete: #{e}"
end
```

#### Using the ip_groups_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> ip_groups_delete_with_http_info(api_version, subscription_id, resource_group_name, ip_groups_name)

```ruby
begin
  
  data, status_code, headers = api_instance.ip_groups_delete_with_http_info(api_version, subscription_id, resource_group_name, ip_groups_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling IpGroupsApi->ip_groups_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **ip_groups_name** | **String** | The name of the ipGroups. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ip_groups_get

> <IpGroup> ip_groups_get(api_version, subscription_id, resource_group_name, ip_groups_name, opts)



Gets the specified ipGroups.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::IpGroupsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
ip_groups_name = 'ip_groups_name_example' # String | The name of the ipGroups.
opts = {
  expand: 'expand_example' # String | Expands resourceIds (of Firewalls/Network Security Groups etc.) back referenced by the IpGroups resource.
}

begin
  
  result = api_instance.ip_groups_get(api_version, subscription_id, resource_group_name, ip_groups_name, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling IpGroupsApi->ip_groups_get: #{e}"
end
```

#### Using the ip_groups_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IpGroup>, Integer, Hash)> ip_groups_get_with_http_info(api_version, subscription_id, resource_group_name, ip_groups_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.ip_groups_get_with_http_info(api_version, subscription_id, resource_group_name, ip_groups_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IpGroup>
rescue AzureRest::ApiError => e
  puts "Error when calling IpGroupsApi->ip_groups_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **ip_groups_name** | **String** | The name of the ipGroups. |  |
| **expand** | **String** | Expands resourceIds (of Firewalls/Network Security Groups etc.) back referenced by the IpGroups resource. | [optional] |

### Return type

[**IpGroup**](IpGroup.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ip_groups_list

> <IpGroupListResult> ip_groups_list(api_version, subscription_id)



Gets all IpGroups in a subscription.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::IpGroupsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.

begin
  
  result = api_instance.ip_groups_list(api_version, subscription_id)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling IpGroupsApi->ip_groups_list: #{e}"
end
```

#### Using the ip_groups_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IpGroupListResult>, Integer, Hash)> ip_groups_list_with_http_info(api_version, subscription_id)

```ruby
begin
  
  data, status_code, headers = api_instance.ip_groups_list_with_http_info(api_version, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IpGroupListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling IpGroupsApi->ip_groups_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |

### Return type

[**IpGroupListResult**](IpGroupListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ip_groups_list_by_resource_group

> <IpGroupListResult> ip_groups_list_by_resource_group(api_version, subscription_id, resource_group_name)



Gets all IpGroups in a resource group.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::IpGroupsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.

begin
  
  result = api_instance.ip_groups_list_by_resource_group(api_version, subscription_id, resource_group_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling IpGroupsApi->ip_groups_list_by_resource_group: #{e}"
end
```

#### Using the ip_groups_list_by_resource_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IpGroupListResult>, Integer, Hash)> ip_groups_list_by_resource_group_with_http_info(api_version, subscription_id, resource_group_name)

```ruby
begin
  
  data, status_code, headers = api_instance.ip_groups_list_by_resource_group_with_http_info(api_version, subscription_id, resource_group_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IpGroupListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling IpGroupsApi->ip_groups_list_by_resource_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |

### Return type

[**IpGroupListResult**](IpGroupListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ip_groups_update_groups

> <IpGroup> ip_groups_update_groups(api_version, subscription_id, resource_group_name, ip_groups_name, parameters)



Updates tags of an IpGroups resource.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::IpGroupsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
ip_groups_name = 'ip_groups_name_example' # String | The name of the ipGroups.
parameters = AzureRest::TagsObject.new # TagsObject | Parameters supplied to the update ipGroups operation.

begin
  
  result = api_instance.ip_groups_update_groups(api_version, subscription_id, resource_group_name, ip_groups_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling IpGroupsApi->ip_groups_update_groups: #{e}"
end
```

#### Using the ip_groups_update_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IpGroup>, Integer, Hash)> ip_groups_update_groups_with_http_info(api_version, subscription_id, resource_group_name, ip_groups_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.ip_groups_update_groups_with_http_info(api_version, subscription_id, resource_group_name, ip_groups_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IpGroup>
rescue AzureRest::ApiError => e
  puts "Error when calling IpGroupsApi->ip_groups_update_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **ip_groups_name** | **String** | The name of the ipGroups. |  |
| **parameters** | [**TagsObject**](TagsObject.md) | Parameters supplied to the update ipGroups operation. |  |

### Return type

[**IpGroup**](IpGroup.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

