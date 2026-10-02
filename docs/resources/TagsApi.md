# AzureSDK::TagsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**tags_create_or_update**](TagsApi.md#tags_create_or_update) | **PUT** /subscriptions/{subscriptionId}/tagNames/{tagName} | Creates a predefined tag name. |
| [**tags_create_or_update_at_scope**](TagsApi.md#tags_create_or_update_at_scope) | **PUT** /{scope}/providers/Microsoft.Resources/tags/default | Creates or updates the entire set of tags on a resource or subscription. |
| [**tags_create_or_update_value**](TagsApi.md#tags_create_or_update_value) | **PUT** /subscriptions/{subscriptionId}/tagNames/{tagName}/tagValues/{tagValue} | Creates a predefined value for a predefined tag name. |
| [**tags_delete**](TagsApi.md#tags_delete) | **DELETE** /subscriptions/{subscriptionId}/tagNames/{tagName} | Deletes a predefined tag name. |
| [**tags_delete_at_scope**](TagsApi.md#tags_delete_at_scope) | **DELETE** /{scope}/providers/Microsoft.Resources/tags/default | Deletes the entire set of tags on a resource or subscription. |
| [**tags_delete_value**](TagsApi.md#tags_delete_value) | **DELETE** /subscriptions/{subscriptionId}/tagNames/{tagName}/tagValues/{tagValue} | Deletes a predefined tag value for a predefined tag name. |
| [**tags_get_at_scope**](TagsApi.md#tags_get_at_scope) | **GET** /{scope}/providers/Microsoft.Resources/tags/default | Gets the entire set of tags on a resource or subscription. |
| [**tags_list**](TagsApi.md#tags_list) | **GET** /subscriptions/{subscriptionId}/tagNames | Gets a summary of tag usage under the subscription. |
| [**tags_update_at_scope**](TagsApi.md#tags_update_at_scope) | **PATCH** /{scope}/providers/Microsoft.Resources/tags/default | Selectively updates the set of tags on a resource or subscription. |


## tags_create_or_update

> <TagDetails> tags_create_or_update(api_version, tag_name, subscription_id)

Creates a predefined tag name.

This operation allows adding a name to the list of predefined tag names for the given subscription. A tag name can have a maximum of 512 characters and is case-insensitive. Tag names cannot have the following prefixes which are reserved for Azure use: 'microsoft', 'azure', 'windows'.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::TagsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
tag_name = 'tag_name_example' # String | The name of the tag to create.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.

begin
  # Creates a predefined tag name.
  result = api_instance.tags_create_or_update(api_version, tag_name, subscription_id)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling TagsApi->tags_create_or_update: #{e}"
end
```

#### Using the tags_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TagDetails>, Integer, Hash)> tags_create_or_update_with_http_info(api_version, tag_name, subscription_id)

```ruby
begin
  # Creates a predefined tag name.
  data, status_code, headers = api_instance.tags_create_or_update_with_http_info(api_version, tag_name, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TagDetails>
rescue AzureSDK::ApiError => e
  puts "Error when calling TagsApi->tags_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **tag_name** | **String** | The name of the tag to create. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |

### Return type

[**TagDetails**](TagDetails.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## tags_create_or_update_at_scope

> <TagsResource> tags_create_or_update_at_scope(api_version, scope, parameters)

Creates or updates the entire set of tags on a resource or subscription.

This operation allows adding or replacing the entire set of tags on the specified resource or subscription. The specified entity can have a maximum of 50 tags.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::TagsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
scope = 'scope_example' # String | The fully qualified Azure Resource manager identifier of the resource.
parameters = AzureSDK::TagsResource.new({properties: AzureSDK::Tags.new}) # TagsResource | 

begin
  # Creates or updates the entire set of tags on a resource or subscription.
  result = api_instance.tags_create_or_update_at_scope(api_version, scope, parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling TagsApi->tags_create_or_update_at_scope: #{e}"
end
```

#### Using the tags_create_or_update_at_scope_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TagsResource>, Integer, Hash)> tags_create_or_update_at_scope_with_http_info(api_version, scope, parameters)

```ruby
begin
  # Creates or updates the entire set of tags on a resource or subscription.
  data, status_code, headers = api_instance.tags_create_or_update_at_scope_with_http_info(api_version, scope, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TagsResource>
rescue AzureSDK::ApiError => e
  puts "Error when calling TagsApi->tags_create_or_update_at_scope_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **scope** | **String** | The fully qualified Azure Resource manager identifier of the resource. |  |
| **parameters** | [**TagsResource**](TagsResource.md) |  |  |

### Return type

[**TagsResource**](TagsResource.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## tags_create_or_update_value

> <TagValue> tags_create_or_update_value(api_version, tag_name, tag_value, subscription_id)

Creates a predefined value for a predefined tag name.

This operation allows adding a value to the list of predefined values for an existing predefined tag name. A tag value can have a maximum of 256 characters.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::TagsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
tag_name = 'tag_name_example' # String | The name of the tag.
tag_value = 'tag_value_example' # String | The value of the tag to create.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.

begin
  # Creates a predefined value for a predefined tag name.
  result = api_instance.tags_create_or_update_value(api_version, tag_name, tag_value, subscription_id)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling TagsApi->tags_create_or_update_value: #{e}"
end
```

#### Using the tags_create_or_update_value_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TagValue>, Integer, Hash)> tags_create_or_update_value_with_http_info(api_version, tag_name, tag_value, subscription_id)

```ruby
begin
  # Creates a predefined value for a predefined tag name.
  data, status_code, headers = api_instance.tags_create_or_update_value_with_http_info(api_version, tag_name, tag_value, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TagValue>
rescue AzureSDK::ApiError => e
  puts "Error when calling TagsApi->tags_create_or_update_value_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **tag_name** | **String** | The name of the tag. |  |
| **tag_value** | **String** | The value of the tag to create. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |

### Return type

[**TagValue**](TagValue.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## tags_delete

> tags_delete(api_version, tag_name, subscription_id)

Deletes a predefined tag name.

This operation allows deleting a name from the list of predefined tag names for the given subscription. The name being deleted must not be in use as a tag name for any resource. All predefined values for the given name must have already been deleted.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::TagsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
tag_name = 'tag_name_example' # String | The name of the tag.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.

begin
  # Deletes a predefined tag name.
  api_instance.tags_delete(api_version, tag_name, subscription_id)
rescue AzureSDK::ApiError => e
  puts "Error when calling TagsApi->tags_delete: #{e}"
end
```

#### Using the tags_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> tags_delete_with_http_info(api_version, tag_name, subscription_id)

```ruby
begin
  # Deletes a predefined tag name.
  data, status_code, headers = api_instance.tags_delete_with_http_info(api_version, tag_name, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling TagsApi->tags_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **tag_name** | **String** | The name of the tag. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## tags_delete_at_scope

> tags_delete_at_scope(api_version, scope)

Deletes the entire set of tags on a resource or subscription.

Deletes the entire set of tags on a resource or subscription.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::TagsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
scope = 'scope_example' # String | The fully qualified Azure Resource manager identifier of the resource.

begin
  # Deletes the entire set of tags on a resource or subscription.
  api_instance.tags_delete_at_scope(api_version, scope)
rescue AzureSDK::ApiError => e
  puts "Error when calling TagsApi->tags_delete_at_scope: #{e}"
end
```

#### Using the tags_delete_at_scope_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> tags_delete_at_scope_with_http_info(api_version, scope)

```ruby
begin
  # Deletes the entire set of tags on a resource or subscription.
  data, status_code, headers = api_instance.tags_delete_at_scope_with_http_info(api_version, scope)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling TagsApi->tags_delete_at_scope_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **scope** | **String** | The fully qualified Azure Resource manager identifier of the resource. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## tags_delete_value

> tags_delete_value(api_version, tag_name, tag_value, subscription_id)

Deletes a predefined tag value for a predefined tag name.

This operation allows deleting a value from the list of predefined values for an existing predefined tag name. The value being deleted must not be in use as a tag value for the given tag name for any resource.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::TagsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
tag_name = 'tag_name_example' # String | The name of the tag.
tag_value = 'tag_value_example' # String | The value of the tag to delete.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.

begin
  # Deletes a predefined tag value for a predefined tag name.
  api_instance.tags_delete_value(api_version, tag_name, tag_value, subscription_id)
rescue AzureSDK::ApiError => e
  puts "Error when calling TagsApi->tags_delete_value: #{e}"
end
```

#### Using the tags_delete_value_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> tags_delete_value_with_http_info(api_version, tag_name, tag_value, subscription_id)

```ruby
begin
  # Deletes a predefined tag value for a predefined tag name.
  data, status_code, headers = api_instance.tags_delete_value_with_http_info(api_version, tag_name, tag_value, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling TagsApi->tags_delete_value_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **tag_name** | **String** | The name of the tag. |  |
| **tag_value** | **String** | The value of the tag to delete. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## tags_get_at_scope

> <TagsResource> tags_get_at_scope(api_version, scope)

Gets the entire set of tags on a resource or subscription.

Gets the entire set of tags on a resource or subscription.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::TagsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
scope = 'scope_example' # String | The fully qualified Azure Resource manager identifier of the resource.

begin
  # Gets the entire set of tags on a resource or subscription.
  result = api_instance.tags_get_at_scope(api_version, scope)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling TagsApi->tags_get_at_scope: #{e}"
end
```

#### Using the tags_get_at_scope_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TagsResource>, Integer, Hash)> tags_get_at_scope_with_http_info(api_version, scope)

```ruby
begin
  # Gets the entire set of tags on a resource or subscription.
  data, status_code, headers = api_instance.tags_get_at_scope_with_http_info(api_version, scope)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TagsResource>
rescue AzureSDK::ApiError => e
  puts "Error when calling TagsApi->tags_get_at_scope_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **scope** | **String** | The fully qualified Azure Resource manager identifier of the resource. |  |

### Return type

[**TagsResource**](TagsResource.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## tags_list

> <TagsListResult> tags_list(api_version, subscription_id)

Gets a summary of tag usage under the subscription.

This operation performs a union of predefined tags, resource tags, resource group tags and subscription tags, and returns a summary of usage for each tag name and value under the given subscription. In case of a large number of tags, this operation may return a previously cached result.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::TagsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.

begin
  # Gets a summary of tag usage under the subscription.
  result = api_instance.tags_list(api_version, subscription_id)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling TagsApi->tags_list: #{e}"
end
```

#### Using the tags_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TagsListResult>, Integer, Hash)> tags_list_with_http_info(api_version, subscription_id)

```ruby
begin
  # Gets a summary of tag usage under the subscription.
  data, status_code, headers = api_instance.tags_list_with_http_info(api_version, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TagsListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling TagsApi->tags_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |

### Return type

[**TagsListResult**](TagsListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## tags_update_at_scope

> <TagsResource> tags_update_at_scope(api_version, scope, parameters)

Selectively updates the set of tags on a resource or subscription.

This operation allows replacing, merging or selectively deleting tags on the specified resource or subscription. The specified entity can have a maximum of 50 tags at the end of the operation. The 'replace' option replaces the entire set of existing tags with a new set. The 'merge' option allows adding tags with new names and updating the values of tags with existing names. The 'delete' option allows selectively deleting tags based on given names or name/value pairs.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::TagsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
scope = 'scope_example' # String | The fully qualified Azure Resource manager identifier of the resource.
parameters = AzureSDK::TagsPatchResource.new # TagsPatchResource | 

begin
  # Selectively updates the set of tags on a resource or subscription.
  result = api_instance.tags_update_at_scope(api_version, scope, parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling TagsApi->tags_update_at_scope: #{e}"
end
```

#### Using the tags_update_at_scope_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TagsResource>, Integer, Hash)> tags_update_at_scope_with_http_info(api_version, scope, parameters)

```ruby
begin
  # Selectively updates the set of tags on a resource or subscription.
  data, status_code, headers = api_instance.tags_update_at_scope_with_http_info(api_version, scope, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TagsResource>
rescue AzureSDK::ApiError => e
  puts "Error when calling TagsApi->tags_update_at_scope_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **scope** | **String** | The fully qualified Azure Resource manager identifier of the resource. |  |
| **parameters** | [**TagsPatchResource**](TagsPatchResource.md) |  |  |

### Return type

[**TagsResource**](TagsResource.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

