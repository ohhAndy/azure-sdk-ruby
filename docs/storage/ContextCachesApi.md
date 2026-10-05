# AzureRest::ContextCachesApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**context_caches_check_name_availability**](ContextCachesApi.md#context_caches_check_name_availability) | **POST** /subscriptions/{subscriptionId}/providers/Microsoft.Storage/contextCacheCheckNameAvailability |  |
| [**context_caches_create_or_update**](ContextCachesApi.md#context_caches_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/contextCaches/{contextCacheName} |  |
| [**context_caches_delete**](ContextCachesApi.md#context_caches_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/contextCaches/{contextCacheName} |  |
| [**context_caches_get**](ContextCachesApi.md#context_caches_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/contextCaches/{contextCacheName} |  |
| [**context_caches_list_by_resource_group**](ContextCachesApi.md#context_caches_list_by_resource_group) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/contextCaches |  |
| [**context_caches_list_by_subscription**](ContextCachesApi.md#context_caches_list_by_subscription) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Storage/contextCaches |  |
| [**context_caches_update**](ContextCachesApi.md#context_caches_update) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/contextCaches/{contextCacheName} |  |


## context_caches_check_name_availability

> <ContextCacheCheckNameAvailabilityResult> context_caches_check_name_availability(api_version, subscription_id, body)



Check the availability of a context cache resource name.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ContextCachesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
body = AzureRest::ContextCacheCheckNameAvailabilityParameters.new({name: 'name_example', type: 'Microsoft.Storage/contextCaches'}) # ContextCacheCheckNameAvailabilityParameters | The request body

begin
  
  result = api_instance.context_caches_check_name_availability(api_version, subscription_id, body)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ContextCachesApi->context_caches_check_name_availability: #{e}"
end
```

#### Using the context_caches_check_name_availability_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContextCacheCheckNameAvailabilityResult>, Integer, Hash)> context_caches_check_name_availability_with_http_info(api_version, subscription_id, body)

```ruby
begin
  
  data, status_code, headers = api_instance.context_caches_check_name_availability_with_http_info(api_version, subscription_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContextCacheCheckNameAvailabilityResult>
rescue AzureRest::ApiError => e
  puts "Error when calling ContextCachesApi->context_caches_check_name_availability_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **body** | [**ContextCacheCheckNameAvailabilityParameters**](ContextCacheCheckNameAvailabilityParameters.md) | The request body |  |

### Return type

[**ContextCacheCheckNameAvailabilityResult**](ContextCacheCheckNameAvailabilityResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## context_caches_create_or_update

> <ContextCache> context_caches_create_or_update(api_version, subscription_id, resource_group_name, context_cache_name, resource)



Create or update a Context Cache.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ContextCachesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
context_cache_name = 'context_cache_name_example' # String | The name of the context cache
resource = AzureRest::ContextCache.new({location: 'location_example', properties: AzureRest::ContextCacheProperties.new({account_kind: AzureRest::ContextCacheAccountKind::REGIONAL})}) # ContextCache | Resource create parameters.

begin
  
  result = api_instance.context_caches_create_or_update(api_version, subscription_id, resource_group_name, context_cache_name, resource)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ContextCachesApi->context_caches_create_or_update: #{e}"
end
```

#### Using the context_caches_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContextCache>, Integer, Hash)> context_caches_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, context_cache_name, resource)

```ruby
begin
  
  data, status_code, headers = api_instance.context_caches_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, context_cache_name, resource)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContextCache>
rescue AzureRest::ApiError => e
  puts "Error when calling ContextCachesApi->context_caches_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **context_cache_name** | **String** | The name of the context cache |  |
| **resource** | [**ContextCache**](ContextCache.md) | Resource create parameters. |  |

### Return type

[**ContextCache**](ContextCache.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## context_caches_delete

> context_caches_delete(api_version, subscription_id, resource_group_name, context_cache_name)



Delete a Context Cache.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ContextCachesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
context_cache_name = 'context_cache_name_example' # String | The name of the context cache

begin
  
  api_instance.context_caches_delete(api_version, subscription_id, resource_group_name, context_cache_name)
rescue AzureRest::ApiError => e
  puts "Error when calling ContextCachesApi->context_caches_delete: #{e}"
end
```

#### Using the context_caches_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> context_caches_delete_with_http_info(api_version, subscription_id, resource_group_name, context_cache_name)

```ruby
begin
  
  data, status_code, headers = api_instance.context_caches_delete_with_http_info(api_version, subscription_id, resource_group_name, context_cache_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling ContextCachesApi->context_caches_delete_with_http_info: #{e}"
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

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## context_caches_get

> <ContextCache> context_caches_get(api_version, subscription_id, resource_group_name, context_cache_name)



Get a Context Cache.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ContextCachesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
context_cache_name = 'context_cache_name_example' # String | The name of the context cache

begin
  
  result = api_instance.context_caches_get(api_version, subscription_id, resource_group_name, context_cache_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ContextCachesApi->context_caches_get: #{e}"
end
```

#### Using the context_caches_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContextCache>, Integer, Hash)> context_caches_get_with_http_info(api_version, subscription_id, resource_group_name, context_cache_name)

```ruby
begin
  
  data, status_code, headers = api_instance.context_caches_get_with_http_info(api_version, subscription_id, resource_group_name, context_cache_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContextCache>
rescue AzureRest::ApiError => e
  puts "Error when calling ContextCachesApi->context_caches_get_with_http_info: #{e}"
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

[**ContextCache**](ContextCache.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## context_caches_list_by_resource_group

> <ContextCacheListResult> context_caches_list_by_resource_group(api_version, subscription_id, resource_group_name)



List Context Caches by resource group.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ContextCachesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.

begin
  
  result = api_instance.context_caches_list_by_resource_group(api_version, subscription_id, resource_group_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ContextCachesApi->context_caches_list_by_resource_group: #{e}"
end
```

#### Using the context_caches_list_by_resource_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContextCacheListResult>, Integer, Hash)> context_caches_list_by_resource_group_with_http_info(api_version, subscription_id, resource_group_name)

```ruby
begin
  
  data, status_code, headers = api_instance.context_caches_list_by_resource_group_with_http_info(api_version, subscription_id, resource_group_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContextCacheListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling ContextCachesApi->context_caches_list_by_resource_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |

### Return type

[**ContextCacheListResult**](ContextCacheListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## context_caches_list_by_subscription

> <ContextCacheListResult> context_caches_list_by_subscription(api_version, subscription_id)



List Context Caches by subscription.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ContextCachesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.

begin
  
  result = api_instance.context_caches_list_by_subscription(api_version, subscription_id)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ContextCachesApi->context_caches_list_by_subscription: #{e}"
end
```

#### Using the context_caches_list_by_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContextCacheListResult>, Integer, Hash)> context_caches_list_by_subscription_with_http_info(api_version, subscription_id)

```ruby
begin
  
  data, status_code, headers = api_instance.context_caches_list_by_subscription_with_http_info(api_version, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContextCacheListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling ContextCachesApi->context_caches_list_by_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |

### Return type

[**ContextCacheListResult**](ContextCacheListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## context_caches_update

> <ContextCache> context_caches_update(api_version, subscription_id, resource_group_name, context_cache_name, properties)



Update a Context Cache.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ContextCachesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
context_cache_name = 'context_cache_name_example' # String | The name of the context cache
properties = AzureRest::ContextCacheUpdate.new # ContextCacheUpdate | The resource properties to be updated.

begin
  
  result = api_instance.context_caches_update(api_version, subscription_id, resource_group_name, context_cache_name, properties)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ContextCachesApi->context_caches_update: #{e}"
end
```

#### Using the context_caches_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContextCache>, Integer, Hash)> context_caches_update_with_http_info(api_version, subscription_id, resource_group_name, context_cache_name, properties)

```ruby
begin
  
  data, status_code, headers = api_instance.context_caches_update_with_http_info(api_version, subscription_id, resource_group_name, context_cache_name, properties)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContextCache>
rescue AzureRest::ApiError => e
  puts "Error when calling ContextCachesApi->context_caches_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **context_cache_name** | **String** | The name of the context cache |  |
| **properties** | [**ContextCacheUpdate**](ContextCacheUpdate.md) | The resource properties to be updated. |  |

### Return type

[**ContextCache**](ContextCache.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

