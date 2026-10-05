# AzureRest::PublicIPPrefixesApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**public_ip_prefixes_create_or_update**](PublicIPPrefixesApi.md#public_ip_prefixes_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/publicIPPrefixes/{publicIpPrefixName} |  |
| [**public_ip_prefixes_delete**](PublicIPPrefixesApi.md#public_ip_prefixes_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/publicIPPrefixes/{publicIpPrefixName} |  |
| [**public_ip_prefixes_get**](PublicIPPrefixesApi.md#public_ip_prefixes_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/publicIPPrefixes/{publicIpPrefixName} |  |
| [**public_ip_prefixes_list**](PublicIPPrefixesApi.md#public_ip_prefixes_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/publicIPPrefixes |  |
| [**public_ip_prefixes_list_all**](PublicIPPrefixesApi.md#public_ip_prefixes_list_all) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Network/publicIPPrefixes |  |
| [**public_ip_prefixes_update_tags**](PublicIPPrefixesApi.md#public_ip_prefixes_update_tags) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/publicIPPrefixes/{publicIpPrefixName} |  |


## public_ip_prefixes_create_or_update

> <PublicIPPrefix> public_ip_prefixes_create_or_update(api_version, subscription_id, resource_group_name, public_ip_prefix_name, parameters)



Creates or updates a static or dynamic public IP prefix.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::PublicIPPrefixesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
public_ip_prefix_name = 'public_ip_prefix_name_example' # String | The name of the public IP prefix.
parameters = AzureRest::PublicIPPrefix.new # PublicIPPrefix | Parameters supplied to the create or update public IP prefix operation.

begin
  
  result = api_instance.public_ip_prefixes_create_or_update(api_version, subscription_id, resource_group_name, public_ip_prefix_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling PublicIPPrefixesApi->public_ip_prefixes_create_or_update: #{e}"
end
```

#### Using the public_ip_prefixes_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PublicIPPrefix>, Integer, Hash)> public_ip_prefixes_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, public_ip_prefix_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.public_ip_prefixes_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, public_ip_prefix_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PublicIPPrefix>
rescue AzureRest::ApiError => e
  puts "Error when calling PublicIPPrefixesApi->public_ip_prefixes_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **public_ip_prefix_name** | **String** | The name of the public IP prefix. |  |
| **parameters** | [**PublicIPPrefix**](PublicIPPrefix.md) | Parameters supplied to the create or update public IP prefix operation. |  |

### Return type

[**PublicIPPrefix**](PublicIPPrefix.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## public_ip_prefixes_delete

> public_ip_prefixes_delete(api_version, subscription_id, resource_group_name, public_ip_prefix_name)



Deletes the specified public IP prefix.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::PublicIPPrefixesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
public_ip_prefix_name = 'public_ip_prefix_name_example' # String | The name of the public IP prefix.

begin
  
  api_instance.public_ip_prefixes_delete(api_version, subscription_id, resource_group_name, public_ip_prefix_name)
rescue AzureRest::ApiError => e
  puts "Error when calling PublicIPPrefixesApi->public_ip_prefixes_delete: #{e}"
end
```

#### Using the public_ip_prefixes_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> public_ip_prefixes_delete_with_http_info(api_version, subscription_id, resource_group_name, public_ip_prefix_name)

```ruby
begin
  
  data, status_code, headers = api_instance.public_ip_prefixes_delete_with_http_info(api_version, subscription_id, resource_group_name, public_ip_prefix_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling PublicIPPrefixesApi->public_ip_prefixes_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **public_ip_prefix_name** | **String** | The name of the public IP prefix. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## public_ip_prefixes_get

> <PublicIPPrefix> public_ip_prefixes_get(api_version, subscription_id, resource_group_name, public_ip_prefix_name, opts)



Gets the specified public IP prefix in a specified resource group.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::PublicIPPrefixesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
public_ip_prefix_name = 'public_ip_prefix_name_example' # String | The name of the public IP prefix.
opts = {
  expand: 'expand_example' # String | Expands referenced resources.
}

begin
  
  result = api_instance.public_ip_prefixes_get(api_version, subscription_id, resource_group_name, public_ip_prefix_name, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling PublicIPPrefixesApi->public_ip_prefixes_get: #{e}"
end
```

#### Using the public_ip_prefixes_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PublicIPPrefix>, Integer, Hash)> public_ip_prefixes_get_with_http_info(api_version, subscription_id, resource_group_name, public_ip_prefix_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.public_ip_prefixes_get_with_http_info(api_version, subscription_id, resource_group_name, public_ip_prefix_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PublicIPPrefix>
rescue AzureRest::ApiError => e
  puts "Error when calling PublicIPPrefixesApi->public_ip_prefixes_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **public_ip_prefix_name** | **String** | The name of the public IP prefix. |  |
| **expand** | **String** | Expands referenced resources. | [optional] |

### Return type

[**PublicIPPrefix**](PublicIPPrefix.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## public_ip_prefixes_list

> <PublicIPPrefixListResult> public_ip_prefixes_list(api_version, subscription_id, resource_group_name)



Gets all public IP prefixes in a resource group.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::PublicIPPrefixesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.

begin
  
  result = api_instance.public_ip_prefixes_list(api_version, subscription_id, resource_group_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling PublicIPPrefixesApi->public_ip_prefixes_list: #{e}"
end
```

#### Using the public_ip_prefixes_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PublicIPPrefixListResult>, Integer, Hash)> public_ip_prefixes_list_with_http_info(api_version, subscription_id, resource_group_name)

```ruby
begin
  
  data, status_code, headers = api_instance.public_ip_prefixes_list_with_http_info(api_version, subscription_id, resource_group_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PublicIPPrefixListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling PublicIPPrefixesApi->public_ip_prefixes_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |

### Return type

[**PublicIPPrefixListResult**](PublicIPPrefixListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## public_ip_prefixes_list_all

> <PublicIPPrefixListResult> public_ip_prefixes_list_all(api_version, subscription_id)



Gets all the public IP prefixes in a subscription.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::PublicIPPrefixesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.

begin
  
  result = api_instance.public_ip_prefixes_list_all(api_version, subscription_id)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling PublicIPPrefixesApi->public_ip_prefixes_list_all: #{e}"
end
```

#### Using the public_ip_prefixes_list_all_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PublicIPPrefixListResult>, Integer, Hash)> public_ip_prefixes_list_all_with_http_info(api_version, subscription_id)

```ruby
begin
  
  data, status_code, headers = api_instance.public_ip_prefixes_list_all_with_http_info(api_version, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PublicIPPrefixListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling PublicIPPrefixesApi->public_ip_prefixes_list_all_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |

### Return type

[**PublicIPPrefixListResult**](PublicIPPrefixListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## public_ip_prefixes_update_tags

> <PublicIPPrefix> public_ip_prefixes_update_tags(api_version, subscription_id, resource_group_name, public_ip_prefix_name, parameters)



Updates public IP prefix tags.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::PublicIPPrefixesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
public_ip_prefix_name = 'public_ip_prefix_name_example' # String | The name of the public IP prefix.
parameters = AzureRest::TagsObject.new # TagsObject | Parameters supplied to update public IP prefix tags.

begin
  
  result = api_instance.public_ip_prefixes_update_tags(api_version, subscription_id, resource_group_name, public_ip_prefix_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling PublicIPPrefixesApi->public_ip_prefixes_update_tags: #{e}"
end
```

#### Using the public_ip_prefixes_update_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PublicIPPrefix>, Integer, Hash)> public_ip_prefixes_update_tags_with_http_info(api_version, subscription_id, resource_group_name, public_ip_prefix_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.public_ip_prefixes_update_tags_with_http_info(api_version, subscription_id, resource_group_name, public_ip_prefix_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PublicIPPrefix>
rescue AzureRest::ApiError => e
  puts "Error when calling PublicIPPrefixesApi->public_ip_prefixes_update_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **public_ip_prefix_name** | **String** | The name of the public IP prefix. |  |
| **parameters** | [**TagsObject**](TagsObject.md) | Parameters supplied to update public IP prefix tags. |  |

### Return type

[**PublicIPPrefix**](PublicIPPrefix.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

