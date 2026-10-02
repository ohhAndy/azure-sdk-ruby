# AzureSDK::ContextCacheContainersApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**context_cache_containers_create_or_update**](ContextCacheContainersApi.md#context_cache_containers_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/contextCaches/{contextCacheName}/contextCacheContainers/{contextCacheContainerName} |  |
| [**context_cache_containers_delete**](ContextCacheContainersApi.md#context_cache_containers_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/contextCaches/{contextCacheName}/contextCacheContainers/{contextCacheContainerName} |  |
| [**context_cache_containers_get**](ContextCacheContainersApi.md#context_cache_containers_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/contextCaches/{contextCacheName}/contextCacheContainers/{contextCacheContainerName} |  |
| [**context_cache_containers_list_by_context_cache**](ContextCacheContainersApi.md#context_cache_containers_list_by_context_cache) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/contextCaches/{contextCacheName}/contextCacheContainers |  |
| [**context_cache_containers_update**](ContextCacheContainersApi.md#context_cache_containers_update) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/contextCaches/{contextCacheName}/contextCacheContainers/{contextCacheContainerName} |  |


## context_cache_containers_create_or_update

> <ContextCacheContainer> context_cache_containers_create_or_update(api_version, subscription_id, resource_group_name, context_cache_name, context_cache_container_name, resource)



Create or update a container in a Context Cache.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ContextCacheContainersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
context_cache_name = 'context_cache_name_example' # String | The name of the context cache
context_cache_container_name = 'context_cache_container_name_example' # String | The name of the context cache container
resource = AzureSDK::ContextCacheContainer.new({properties: AzureSDK::ContextCacheContainerProperties.new({model_name: 'model_name_example', provider: AzureSDK::AiProvider::OPEN_AI})}) # ContextCacheContainer | Resource create parameters.

begin
  
  result = api_instance.context_cache_containers_create_or_update(api_version, subscription_id, resource_group_name, context_cache_name, context_cache_container_name, resource)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ContextCacheContainersApi->context_cache_containers_create_or_update: #{e}"
end
```

#### Using the context_cache_containers_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContextCacheContainer>, Integer, Hash)> context_cache_containers_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, context_cache_name, context_cache_container_name, resource)

```ruby
begin
  
  data, status_code, headers = api_instance.context_cache_containers_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, context_cache_name, context_cache_container_name, resource)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContextCacheContainer>
rescue AzureSDK::ApiError => e
  puts "Error when calling ContextCacheContainersApi->context_cache_containers_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **context_cache_name** | **String** | The name of the context cache |  |
| **context_cache_container_name** | **String** | The name of the context cache container |  |
| **resource** | [**ContextCacheContainer**](ContextCacheContainer.md) | Resource create parameters. |  |

### Return type

[**ContextCacheContainer**](ContextCacheContainer.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## context_cache_containers_delete

> context_cache_containers_delete(api_version, subscription_id, resource_group_name, context_cache_name, context_cache_container_name)



Delete a container from a Context Cache.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ContextCacheContainersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
context_cache_name = 'context_cache_name_example' # String | The name of the context cache
context_cache_container_name = 'context_cache_container_name_example' # String | The name of the context cache container

begin
  
  api_instance.context_cache_containers_delete(api_version, subscription_id, resource_group_name, context_cache_name, context_cache_container_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling ContextCacheContainersApi->context_cache_containers_delete: #{e}"
end
```

#### Using the context_cache_containers_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> context_cache_containers_delete_with_http_info(api_version, subscription_id, resource_group_name, context_cache_name, context_cache_container_name)

```ruby
begin
  
  data, status_code, headers = api_instance.context_cache_containers_delete_with_http_info(api_version, subscription_id, resource_group_name, context_cache_name, context_cache_container_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling ContextCacheContainersApi->context_cache_containers_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **context_cache_name** | **String** | The name of the context cache |  |
| **context_cache_container_name** | **String** | The name of the context cache container |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## context_cache_containers_get

> <ContextCacheContainer> context_cache_containers_get(api_version, subscription_id, resource_group_name, context_cache_name, context_cache_container_name)



Get a container in a Context Cache.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ContextCacheContainersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
context_cache_name = 'context_cache_name_example' # String | The name of the context cache
context_cache_container_name = 'context_cache_container_name_example' # String | The name of the context cache container

begin
  
  result = api_instance.context_cache_containers_get(api_version, subscription_id, resource_group_name, context_cache_name, context_cache_container_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ContextCacheContainersApi->context_cache_containers_get: #{e}"
end
```

#### Using the context_cache_containers_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContextCacheContainer>, Integer, Hash)> context_cache_containers_get_with_http_info(api_version, subscription_id, resource_group_name, context_cache_name, context_cache_container_name)

```ruby
begin
  
  data, status_code, headers = api_instance.context_cache_containers_get_with_http_info(api_version, subscription_id, resource_group_name, context_cache_name, context_cache_container_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContextCacheContainer>
rescue AzureSDK::ApiError => e
  puts "Error when calling ContextCacheContainersApi->context_cache_containers_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **context_cache_name** | **String** | The name of the context cache |  |
| **context_cache_container_name** | **String** | The name of the context cache container |  |

### Return type

[**ContextCacheContainer**](ContextCacheContainer.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## context_cache_containers_list_by_context_cache

> <ContextCacheContainerListResult> context_cache_containers_list_by_context_cache(api_version, subscription_id, resource_group_name, context_cache_name)



List all containers in a Context Cache.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ContextCacheContainersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
context_cache_name = 'context_cache_name_example' # String | The name of the context cache

begin
  
  result = api_instance.context_cache_containers_list_by_context_cache(api_version, subscription_id, resource_group_name, context_cache_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ContextCacheContainersApi->context_cache_containers_list_by_context_cache: #{e}"
end
```

#### Using the context_cache_containers_list_by_context_cache_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContextCacheContainerListResult>, Integer, Hash)> context_cache_containers_list_by_context_cache_with_http_info(api_version, subscription_id, resource_group_name, context_cache_name)

```ruby
begin
  
  data, status_code, headers = api_instance.context_cache_containers_list_by_context_cache_with_http_info(api_version, subscription_id, resource_group_name, context_cache_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContextCacheContainerListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling ContextCacheContainersApi->context_cache_containers_list_by_context_cache_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **context_cache_name** | **String** | The name of the context cache |  |

### Return type

[**ContextCacheContainerListResult**](ContextCacheContainerListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## context_cache_containers_update

> <ContextCacheContainer> context_cache_containers_update(api_version, subscription_id, resource_group_name, context_cache_name, context_cache_container_name, properties)



Update a container in a Context Cache.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ContextCacheContainersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
context_cache_name = 'context_cache_name_example' # String | The name of the context cache
context_cache_container_name = 'context_cache_container_name_example' # String | The name of the context cache container
properties = AzureSDK::ContextCacheContainerUpdate.new # ContextCacheContainerUpdate | The resource properties to be updated.

begin
  
  result = api_instance.context_cache_containers_update(api_version, subscription_id, resource_group_name, context_cache_name, context_cache_container_name, properties)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ContextCacheContainersApi->context_cache_containers_update: #{e}"
end
```

#### Using the context_cache_containers_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContextCacheContainer>, Integer, Hash)> context_cache_containers_update_with_http_info(api_version, subscription_id, resource_group_name, context_cache_name, context_cache_container_name, properties)

```ruby
begin
  
  data, status_code, headers = api_instance.context_cache_containers_update_with_http_info(api_version, subscription_id, resource_group_name, context_cache_name, context_cache_container_name, properties)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContextCacheContainer>
rescue AzureSDK::ApiError => e
  puts "Error when calling ContextCacheContainersApi->context_cache_containers_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **context_cache_name** | **String** | The name of the context cache |  |
| **context_cache_container_name** | **String** | The name of the context cache container |  |
| **properties** | [**ContextCacheContainerUpdate**](ContextCacheContainerUpdate.md) | The resource properties to be updated. |  |

### Return type

[**ContextCacheContainer**](ContextCacheContainer.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

