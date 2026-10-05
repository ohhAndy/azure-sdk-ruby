# AzureRest::NetworkSecurityGroupsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**network_security_groups_create_or_update**](NetworkSecurityGroupsApi.md#network_security_groups_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkSecurityGroups/{networkSecurityGroupName} |  |
| [**network_security_groups_delete**](NetworkSecurityGroupsApi.md#network_security_groups_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkSecurityGroups/{networkSecurityGroupName} |  |
| [**network_security_groups_get**](NetworkSecurityGroupsApi.md#network_security_groups_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkSecurityGroups/{networkSecurityGroupName} |  |
| [**network_security_groups_list**](NetworkSecurityGroupsApi.md#network_security_groups_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkSecurityGroups |  |
| [**network_security_groups_list_all**](NetworkSecurityGroupsApi.md#network_security_groups_list_all) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Network/networkSecurityGroups |  |
| [**network_security_groups_update_tags**](NetworkSecurityGroupsApi.md#network_security_groups_update_tags) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkSecurityGroups/{networkSecurityGroupName} |  |


## network_security_groups_create_or_update

> <NetworkSecurityGroup> network_security_groups_create_or_update(api_version, subscription_id, resource_group_name, network_security_group_name, parameters)



Creates or updates a network security group in the specified resource group.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::NetworkSecurityGroupsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_security_group_name = 'network_security_group_name_example' # String | The name of the network security group.
parameters = AzureRest::NetworkSecurityGroup.new # NetworkSecurityGroup | Parameters supplied to the create or update network security group operation.

begin
  
  result = api_instance.network_security_groups_create_or_update(api_version, subscription_id, resource_group_name, network_security_group_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling NetworkSecurityGroupsApi->network_security_groups_create_or_update: #{e}"
end
```

#### Using the network_security_groups_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkSecurityGroup>, Integer, Hash)> network_security_groups_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, network_security_group_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.network_security_groups_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, network_security_group_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkSecurityGroup>
rescue AzureRest::ApiError => e
  puts "Error when calling NetworkSecurityGroupsApi->network_security_groups_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_security_group_name** | **String** | The name of the network security group. |  |
| **parameters** | [**NetworkSecurityGroup**](NetworkSecurityGroup.md) | Parameters supplied to the create or update network security group operation. |  |

### Return type

[**NetworkSecurityGroup**](NetworkSecurityGroup.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## network_security_groups_delete

> network_security_groups_delete(api_version, subscription_id, resource_group_name, network_security_group_name)



Deletes the specified network security group.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::NetworkSecurityGroupsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_security_group_name = 'network_security_group_name_example' # String | The name of the network security group.

begin
  
  api_instance.network_security_groups_delete(api_version, subscription_id, resource_group_name, network_security_group_name)
rescue AzureRest::ApiError => e
  puts "Error when calling NetworkSecurityGroupsApi->network_security_groups_delete: #{e}"
end
```

#### Using the network_security_groups_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> network_security_groups_delete_with_http_info(api_version, subscription_id, resource_group_name, network_security_group_name)

```ruby
begin
  
  data, status_code, headers = api_instance.network_security_groups_delete_with_http_info(api_version, subscription_id, resource_group_name, network_security_group_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling NetworkSecurityGroupsApi->network_security_groups_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_security_group_name** | **String** | The name of the network security group. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## network_security_groups_get

> <NetworkSecurityGroup> network_security_groups_get(api_version, subscription_id, resource_group_name, network_security_group_name, opts)



Gets the specified network security group.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::NetworkSecurityGroupsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_security_group_name = 'network_security_group_name_example' # String | The name of the network security group.
opts = {
  expand: 'expand_example' # String | Expands referenced resources.
}

begin
  
  result = api_instance.network_security_groups_get(api_version, subscription_id, resource_group_name, network_security_group_name, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling NetworkSecurityGroupsApi->network_security_groups_get: #{e}"
end
```

#### Using the network_security_groups_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkSecurityGroup>, Integer, Hash)> network_security_groups_get_with_http_info(api_version, subscription_id, resource_group_name, network_security_group_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.network_security_groups_get_with_http_info(api_version, subscription_id, resource_group_name, network_security_group_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkSecurityGroup>
rescue AzureRest::ApiError => e
  puts "Error when calling NetworkSecurityGroupsApi->network_security_groups_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_security_group_name** | **String** | The name of the network security group. |  |
| **expand** | **String** | Expands referenced resources. | [optional] |

### Return type

[**NetworkSecurityGroup**](NetworkSecurityGroup.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## network_security_groups_list

> <NetworkSecurityGroupListResult> network_security_groups_list(api_version, subscription_id, resource_group_name)



Gets all network security groups in a resource group.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::NetworkSecurityGroupsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.

begin
  
  result = api_instance.network_security_groups_list(api_version, subscription_id, resource_group_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling NetworkSecurityGroupsApi->network_security_groups_list: #{e}"
end
```

#### Using the network_security_groups_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkSecurityGroupListResult>, Integer, Hash)> network_security_groups_list_with_http_info(api_version, subscription_id, resource_group_name)

```ruby
begin
  
  data, status_code, headers = api_instance.network_security_groups_list_with_http_info(api_version, subscription_id, resource_group_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkSecurityGroupListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling NetworkSecurityGroupsApi->network_security_groups_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |

### Return type

[**NetworkSecurityGroupListResult**](NetworkSecurityGroupListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## network_security_groups_list_all

> <NetworkSecurityGroupListResult> network_security_groups_list_all(api_version, subscription_id)



Gets all network security groups in a subscription.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::NetworkSecurityGroupsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.

begin
  
  result = api_instance.network_security_groups_list_all(api_version, subscription_id)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling NetworkSecurityGroupsApi->network_security_groups_list_all: #{e}"
end
```

#### Using the network_security_groups_list_all_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkSecurityGroupListResult>, Integer, Hash)> network_security_groups_list_all_with_http_info(api_version, subscription_id)

```ruby
begin
  
  data, status_code, headers = api_instance.network_security_groups_list_all_with_http_info(api_version, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkSecurityGroupListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling NetworkSecurityGroupsApi->network_security_groups_list_all_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |

### Return type

[**NetworkSecurityGroupListResult**](NetworkSecurityGroupListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## network_security_groups_update_tags

> <NetworkSecurityGroup> network_security_groups_update_tags(api_version, subscription_id, resource_group_name, network_security_group_name, parameters)



Updates a network security group tags.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::NetworkSecurityGroupsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_security_group_name = 'network_security_group_name_example' # String | The name of the network security group.
parameters = AzureRest::TagsObject.new # TagsObject | Parameters supplied to update network security group tags.

begin
  
  result = api_instance.network_security_groups_update_tags(api_version, subscription_id, resource_group_name, network_security_group_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling NetworkSecurityGroupsApi->network_security_groups_update_tags: #{e}"
end
```

#### Using the network_security_groups_update_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkSecurityGroup>, Integer, Hash)> network_security_groups_update_tags_with_http_info(api_version, subscription_id, resource_group_name, network_security_group_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.network_security_groups_update_tags_with_http_info(api_version, subscription_id, resource_group_name, network_security_group_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkSecurityGroup>
rescue AzureRest::ApiError => e
  puts "Error when calling NetworkSecurityGroupsApi->network_security_groups_update_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_security_group_name** | **String** | The name of the network security group. |  |
| **parameters** | [**TagsObject**](TagsObject.md) | Parameters supplied to update network security group tags. |  |

### Return type

[**NetworkSecurityGroup**](NetworkSecurityGroup.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

