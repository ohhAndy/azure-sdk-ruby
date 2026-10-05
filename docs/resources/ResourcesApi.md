# AzureRest::ResourcesApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**resources_check_existence**](ResourcesApi.md#resources_check_existence) | **HEAD** /subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{parentResourcePath}/{resourceType}/{resourceName} |  |
| [**resources_check_existence_by_id**](ResourcesApi.md#resources_check_existence_by_id) | **HEAD** /{resourceId} |  |
| [**resources_create_or_update**](ResourcesApi.md#resources_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{parentResourcePath}/{resourceType}/{resourceName} |  |
| [**resources_create_or_update_by_id**](ResourcesApi.md#resources_create_or_update_by_id) | **PUT** /{resourceId} |  |
| [**resources_delete**](ResourcesApi.md#resources_delete) | **DELETE** /subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{parentResourcePath}/{resourceType}/{resourceName} |  |
| [**resources_delete_by_id**](ResourcesApi.md#resources_delete_by_id) | **DELETE** /{resourceId} |  |
| [**resources_get**](ResourcesApi.md#resources_get) | **GET** /subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{parentResourcePath}/{resourceType}/{resourceName} |  |
| [**resources_get_by_id**](ResourcesApi.md#resources_get_by_id) | **GET** /{resourceId} |  |
| [**resources_list**](ResourcesApi.md#resources_list) | **GET** /subscriptions/{subscriptionId}/resources |  |
| [**resources_move_resources**](ResourcesApi.md#resources_move_resources) | **POST** /subscriptions/{subscriptionId}/resourcegroups/{sourceResourceGroupName}/moveResources | Moves resources from one resource group to another resource group. |
| [**resources_update**](ResourcesApi.md#resources_update) | **PATCH** /subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{parentResourcePath}/{resourceType}/{resourceName} |  |
| [**resources_update_by_id**](ResourcesApi.md#resources_update_by_id) | **PATCH** /{resourceId} |  |
| [**resources_validate_move_resources**](ResourcesApi.md#resources_validate_move_resources) | **POST** /subscriptions/{subscriptionId}/resourcegroups/{sourceResourceGroupName}/validateMoveResources | Validates whether resources can be moved from one resource group to another resource group. |


## resources_check_existence

> resources_check_existence(subscription_id, resource_group_name, resource_provider_namespace, parent_resource_path, resource_type, resource_name, api_version)



Checks whether a resource exists.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ResourcesApi.new
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group containing the resource to get. The name is case insensitive.
resource_provider_namespace = 'resource_provider_namespace_example' # String | The resource provider of the resource to check.
parent_resource_path = 'parent_resource_path_example' # String | The parent resource identity.
resource_type = 'resource_type_example' # String | The resource type.
resource_name = 'resource_name_example' # String | The name of the resource to check whether it exists.
api_version = 'api_version_example' # String | The API version to use for this operation.

begin
  
  api_instance.resources_check_existence(subscription_id, resource_group_name, resource_provider_namespace, parent_resource_path, resource_type, resource_name, api_version)
rescue AzureRest::ApiError => e
  puts "Error when calling ResourcesApi->resources_check_existence: #{e}"
end
```

#### Using the resources_check_existence_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> resources_check_existence_with_http_info(subscription_id, resource_group_name, resource_provider_namespace, parent_resource_path, resource_type, resource_name, api_version)

```ruby
begin
  
  data, status_code, headers = api_instance.resources_check_existence_with_http_info(subscription_id, resource_group_name, resource_provider_namespace, parent_resource_path, resource_type, resource_name, api_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling ResourcesApi->resources_check_existence_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group containing the resource to get. The name is case insensitive. |  |
| **resource_provider_namespace** | **String** | The resource provider of the resource to check. |  |
| **parent_resource_path** | **String** | The parent resource identity. |  |
| **resource_type** | **String** | The resource type. |  |
| **resource_name** | **String** | The name of the resource to check whether it exists. |  |
| **api_version** | **String** | The API version to use for this operation. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## resources_check_existence_by_id

> resources_check_existence_by_id(resource_id, api_version)



Checks by ID whether a resource exists. This API currently works only for a limited set of Resource providers. In the event that a Resource provider does not implement this API, ARM will respond with a 405. The alternative then is to use the GET API to check for the existence of the resource.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ResourcesApi.new
resource_id = 'resource_id_example' # String | 
api_version = 'api_version_example' # String | The API version to use for this operation.

begin
  
  api_instance.resources_check_existence_by_id(resource_id, api_version)
rescue AzureRest::ApiError => e
  puts "Error when calling ResourcesApi->resources_check_existence_by_id: #{e}"
end
```

#### Using the resources_check_existence_by_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> resources_check_existence_by_id_with_http_info(resource_id, api_version)

```ruby
begin
  
  data, status_code, headers = api_instance.resources_check_existence_by_id_with_http_info(resource_id, api_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling ResourcesApi->resources_check_existence_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource_id** | **String** |  |  |
| **api_version** | **String** | The API version to use for this operation. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## resources_create_or_update

> <GenericResource> resources_create_or_update(subscription_id, resource_group_name, resource_provider_namespace, parent_resource_path, resource_type, resource_name, api_version, parameters)



Creates a resource.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ResourcesApi.new
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group containing the resource to get. The name is case insensitive.
resource_provider_namespace = 'resource_provider_namespace_example' # String | The resource provider of the resource to check.
parent_resource_path = 'parent_resource_path_example' # String | The parent resource identity.
resource_type = 'resource_type_example' # String | The resource type.
resource_name = 'resource_name_example' # String | The name of the resource to check whether it exists.
api_version = 'api_version_example' # String | The API version to use for this operation.
parameters = AzureRest::GenericResource.new # GenericResource | Resource create parameters.

begin
  
  result = api_instance.resources_create_or_update(subscription_id, resource_group_name, resource_provider_namespace, parent_resource_path, resource_type, resource_name, api_version, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ResourcesApi->resources_create_or_update: #{e}"
end
```

#### Using the resources_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GenericResource>, Integer, Hash)> resources_create_or_update_with_http_info(subscription_id, resource_group_name, resource_provider_namespace, parent_resource_path, resource_type, resource_name, api_version, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.resources_create_or_update_with_http_info(subscription_id, resource_group_name, resource_provider_namespace, parent_resource_path, resource_type, resource_name, api_version, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GenericResource>
rescue AzureRest::ApiError => e
  puts "Error when calling ResourcesApi->resources_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group containing the resource to get. The name is case insensitive. |  |
| **resource_provider_namespace** | **String** | The resource provider of the resource to check. |  |
| **parent_resource_path** | **String** | The parent resource identity. |  |
| **resource_type** | **String** | The resource type. |  |
| **resource_name** | **String** | The name of the resource to check whether it exists. |  |
| **api_version** | **String** | The API version to use for this operation. |  |
| **parameters** | [**GenericResource**](GenericResource.md) | Resource create parameters. |  |

### Return type

[**GenericResource**](GenericResource.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## resources_create_or_update_by_id

> <GenericResource> resources_create_or_update_by_id(resource_id, api_version, parameters)



Create a resource by ID.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ResourcesApi.new
resource_id = 'resource_id_example' # String | 
api_version = 'api_version_example' # String | The API version to use for this operation.
parameters = AzureRest::GenericResource.new # GenericResource | Resource create parameters.

begin
  
  result = api_instance.resources_create_or_update_by_id(resource_id, api_version, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ResourcesApi->resources_create_or_update_by_id: #{e}"
end
```

#### Using the resources_create_or_update_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GenericResource>, Integer, Hash)> resources_create_or_update_by_id_with_http_info(resource_id, api_version, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.resources_create_or_update_by_id_with_http_info(resource_id, api_version, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GenericResource>
rescue AzureRest::ApiError => e
  puts "Error when calling ResourcesApi->resources_create_or_update_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource_id** | **String** |  |  |
| **api_version** | **String** | The API version to use for this operation. |  |
| **parameters** | [**GenericResource**](GenericResource.md) | Resource create parameters. |  |

### Return type

[**GenericResource**](GenericResource.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## resources_delete

> resources_delete(subscription_id, resource_group_name, resource_provider_namespace, parent_resource_path, resource_type, resource_name, api_version)



Deletes a resource.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ResourcesApi.new
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group containing the resource to get. The name is case insensitive.
resource_provider_namespace = 'resource_provider_namespace_example' # String | The resource provider of the resource to check.
parent_resource_path = 'parent_resource_path_example' # String | The parent resource identity.
resource_type = 'resource_type_example' # String | The resource type.
resource_name = 'resource_name_example' # String | The name of the resource to check whether it exists.
api_version = 'api_version_example' # String | The API version to use for this operation.

begin
  
  api_instance.resources_delete(subscription_id, resource_group_name, resource_provider_namespace, parent_resource_path, resource_type, resource_name, api_version)
rescue AzureRest::ApiError => e
  puts "Error when calling ResourcesApi->resources_delete: #{e}"
end
```

#### Using the resources_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> resources_delete_with_http_info(subscription_id, resource_group_name, resource_provider_namespace, parent_resource_path, resource_type, resource_name, api_version)

```ruby
begin
  
  data, status_code, headers = api_instance.resources_delete_with_http_info(subscription_id, resource_group_name, resource_provider_namespace, parent_resource_path, resource_type, resource_name, api_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling ResourcesApi->resources_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group containing the resource to get. The name is case insensitive. |  |
| **resource_provider_namespace** | **String** | The resource provider of the resource to check. |  |
| **parent_resource_path** | **String** | The parent resource identity. |  |
| **resource_type** | **String** | The resource type. |  |
| **resource_name** | **String** | The name of the resource to check whether it exists. |  |
| **api_version** | **String** | The API version to use for this operation. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## resources_delete_by_id

> resources_delete_by_id(resource_id, api_version)



Deletes a resource by ID.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ResourcesApi.new
resource_id = 'resource_id_example' # String | 
api_version = 'api_version_example' # String | The API version to use for this operation.

begin
  
  api_instance.resources_delete_by_id(resource_id, api_version)
rescue AzureRest::ApiError => e
  puts "Error when calling ResourcesApi->resources_delete_by_id: #{e}"
end
```

#### Using the resources_delete_by_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> resources_delete_by_id_with_http_info(resource_id, api_version)

```ruby
begin
  
  data, status_code, headers = api_instance.resources_delete_by_id_with_http_info(resource_id, api_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling ResourcesApi->resources_delete_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource_id** | **String** |  |  |
| **api_version** | **String** | The API version to use for this operation. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## resources_get

> <GenericResource> resources_get(subscription_id, resource_group_name, resource_provider_namespace, parent_resource_path, resource_type, resource_name, api_version)



Gets a resource.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ResourcesApi.new
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group containing the resource to get. The name is case insensitive.
resource_provider_namespace = 'resource_provider_namespace_example' # String | The resource provider of the resource to check.
parent_resource_path = 'parent_resource_path_example' # String | The parent resource identity.
resource_type = 'resource_type_example' # String | The resource type.
resource_name = 'resource_name_example' # String | The name of the resource to check whether it exists.
api_version = 'api_version_example' # String | The API version to use for this operation.

begin
  
  result = api_instance.resources_get(subscription_id, resource_group_name, resource_provider_namespace, parent_resource_path, resource_type, resource_name, api_version)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ResourcesApi->resources_get: #{e}"
end
```

#### Using the resources_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GenericResource>, Integer, Hash)> resources_get_with_http_info(subscription_id, resource_group_name, resource_provider_namespace, parent_resource_path, resource_type, resource_name, api_version)

```ruby
begin
  
  data, status_code, headers = api_instance.resources_get_with_http_info(subscription_id, resource_group_name, resource_provider_namespace, parent_resource_path, resource_type, resource_name, api_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GenericResource>
rescue AzureRest::ApiError => e
  puts "Error when calling ResourcesApi->resources_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group containing the resource to get. The name is case insensitive. |  |
| **resource_provider_namespace** | **String** | The resource provider of the resource to check. |  |
| **parent_resource_path** | **String** | The parent resource identity. |  |
| **resource_type** | **String** | The resource type. |  |
| **resource_name** | **String** | The name of the resource to check whether it exists. |  |
| **api_version** | **String** | The API version to use for this operation. |  |

### Return type

[**GenericResource**](GenericResource.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## resources_get_by_id

> <GenericResource> resources_get_by_id(resource_id, api_version)



Gets a resource by ID.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ResourcesApi.new
resource_id = 'resource_id_example' # String | 
api_version = 'api_version_example' # String | The API version to use for this operation.

begin
  
  result = api_instance.resources_get_by_id(resource_id, api_version)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ResourcesApi->resources_get_by_id: #{e}"
end
```

#### Using the resources_get_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GenericResource>, Integer, Hash)> resources_get_by_id_with_http_info(resource_id, api_version)

```ruby
begin
  
  data, status_code, headers = api_instance.resources_get_by_id_with_http_info(resource_id, api_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GenericResource>
rescue AzureRest::ApiError => e
  puts "Error when calling ResourcesApi->resources_get_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource_id** | **String** |  |  |
| **api_version** | **String** | The API version to use for this operation. |  |

### Return type

[**GenericResource**](GenericResource.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## resources_list

> <ResourceListResult> resources_list(api_version, subscription_id, opts)



Get all the resources in a subscription.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ResourcesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
opts = {
  filter: 'filter_example', # String | The filter to apply on the operation.<br><br>Filter comparison operators include `eq` (equals) and `ne` (not equals) and may be used with the following properties: `location`, `resourceType`, `name`, `resourceGroup`, `identity`, `identity/principalId`, `plan`, `plan/publisher`, `plan/product`, `plan/name`, `plan/version`, and `plan/promotionCode`.<br><br>For example, to filter by a resource type, use `$filter=resourceType eq 'Microsoft.Network/virtualNetworks'`<br><br><br>`substringof(value, property)` can  be used to filter for substrings of the following currently-supported properties: `name` and `resourceGroup`<br><br>For example, to get all resources with 'demo' anywhere in the resource name, use `$filter=substringof('demo', name)`<br><br>Multiple substring operations can also be combined using `and`/`or` operators.<br><br>Note that any truncated number of results queried via `$top` may also not be compatible when using a filter.<br><br><br>Resources can be filtered by tag names and values. For example, to filter for a tag name and value, use `$filter=tagName eq 'tag1' and tagValue eq 'Value1'`. Note that when resources are filtered by tag name and value, <b>the original tags for each resource will not be returned in the results.</b> Any list of additional properties queried via `$expand` may also not be compatible when filtering by tag names/values. <br><br>For tag names only, resources can be filtered by prefix using the following syntax: `$filter=startswith(tagName, 'depart')`. This query will return all resources with a tag name prefixed by the phrase `depart` (i.e.`department`, `departureDate`, `departureTime`, etc.)<br><br><br>Note that some properties can be combined when filtering resources, which include the following: `substringof() and/or resourceType`, `plan and plan/publisher and plan/name`, and `identity and identity/principalId`.
  expand: 'expand_example', # String | Comma-separated list of additional properties to be included in the response. Valid values include `createdTime`, `changedTime` and `provisioningState`. For example, `$expand=createdTime,changedTime`.
  top: 56 # Integer | The number of recommendations per page if a paged version of this API is being used.
}

begin
  
  result = api_instance.resources_list(api_version, subscription_id, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ResourcesApi->resources_list: #{e}"
end
```

#### Using the resources_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourceListResult>, Integer, Hash)> resources_list_with_http_info(api_version, subscription_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.resources_list_with_http_info(api_version, subscription_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourceListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling ResourcesApi->resources_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **filter** | **String** | The filter to apply on the operation.&lt;br&gt;&lt;br&gt;Filter comparison operators include &#x60;eq&#x60; (equals) and &#x60;ne&#x60; (not equals) and may be used with the following properties: &#x60;location&#x60;, &#x60;resourceType&#x60;, &#x60;name&#x60;, &#x60;resourceGroup&#x60;, &#x60;identity&#x60;, &#x60;identity/principalId&#x60;, &#x60;plan&#x60;, &#x60;plan/publisher&#x60;, &#x60;plan/product&#x60;, &#x60;plan/name&#x60;, &#x60;plan/version&#x60;, and &#x60;plan/promotionCode&#x60;.&lt;br&gt;&lt;br&gt;For example, to filter by a resource type, use &#x60;$filter&#x3D;resourceType eq &#39;Microsoft.Network/virtualNetworks&#39;&#x60;&lt;br&gt;&lt;br&gt;&lt;br&gt;&#x60;substringof(value, property)&#x60; can  be used to filter for substrings of the following currently-supported properties: &#x60;name&#x60; and &#x60;resourceGroup&#x60;&lt;br&gt;&lt;br&gt;For example, to get all resources with &#39;demo&#39; anywhere in the resource name, use &#x60;$filter&#x3D;substringof(&#39;demo&#39;, name)&#x60;&lt;br&gt;&lt;br&gt;Multiple substring operations can also be combined using &#x60;and&#x60;/&#x60;or&#x60; operators.&lt;br&gt;&lt;br&gt;Note that any truncated number of results queried via &#x60;$top&#x60; may also not be compatible when using a filter.&lt;br&gt;&lt;br&gt;&lt;br&gt;Resources can be filtered by tag names and values. For example, to filter for a tag name and value, use &#x60;$filter&#x3D;tagName eq &#39;tag1&#39; and tagValue eq &#39;Value1&#39;&#x60;. Note that when resources are filtered by tag name and value, &lt;b&gt;the original tags for each resource will not be returned in the results.&lt;/b&gt; Any list of additional properties queried via &#x60;$expand&#x60; may also not be compatible when filtering by tag names/values. &lt;br&gt;&lt;br&gt;For tag names only, resources can be filtered by prefix using the following syntax: &#x60;$filter&#x3D;startswith(tagName, &#39;depart&#39;)&#x60;. This query will return all resources with a tag name prefixed by the phrase &#x60;depart&#x60; (i.e.&#x60;department&#x60;, &#x60;departureDate&#x60;, &#x60;departureTime&#x60;, etc.)&lt;br&gt;&lt;br&gt;&lt;br&gt;Note that some properties can be combined when filtering resources, which include the following: &#x60;substringof() and/or resourceType&#x60;, &#x60;plan and plan/publisher and plan/name&#x60;, and &#x60;identity and identity/principalId&#x60;. | [optional] |
| **expand** | **String** | Comma-separated list of additional properties to be included in the response. Valid values include &#x60;createdTime&#x60;, &#x60;changedTime&#x60; and &#x60;provisioningState&#x60;. For example, &#x60;$expand&#x3D;createdTime,changedTime&#x60;. | [optional] |
| **top** | **Integer** | The number of recommendations per page if a paged version of this API is being used. | [optional] |

### Return type

[**ResourceListResult**](ResourceListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## resources_move_resources

> resources_move_resources(api_version, subscription_id, source_resource_group_name, parameters)

Moves resources from one resource group to another resource group.

The resources to be moved must be in the same source resource group in the source subscription being used. The target resource group may be in a different subscription. When moving resources, both the source group and the target group are locked for the duration of the operation. Write and delete operations are blocked on the groups until the move completes.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ResourcesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
source_resource_group_name = 'source_resource_group_name_example' # String | The name of the resource group to get. The name is case insensitive.
parameters = AzureRest::ResourcesMoveInfo.new # ResourcesMoveInfo | Parameters for moving resources.

begin
  # Moves resources from one resource group to another resource group.
  api_instance.resources_move_resources(api_version, subscription_id, source_resource_group_name, parameters)
rescue AzureRest::ApiError => e
  puts "Error when calling ResourcesApi->resources_move_resources: #{e}"
end
```

#### Using the resources_move_resources_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> resources_move_resources_with_http_info(api_version, subscription_id, source_resource_group_name, parameters)

```ruby
begin
  # Moves resources from one resource group to another resource group.
  data, status_code, headers = api_instance.resources_move_resources_with_http_info(api_version, subscription_id, source_resource_group_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling ResourcesApi->resources_move_resources_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **source_resource_group_name** | **String** | The name of the resource group to get. The name is case insensitive. |  |
| **parameters** | [**ResourcesMoveInfo**](ResourcesMoveInfo.md) | Parameters for moving resources. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## resources_update

> <GenericResource> resources_update(subscription_id, resource_group_name, resource_provider_namespace, parent_resource_path, resource_type, resource_name, api_version, parameters)



Updates a resource.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ResourcesApi.new
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group containing the resource to get. The name is case insensitive.
resource_provider_namespace = 'resource_provider_namespace_example' # String | The resource provider of the resource to check.
parent_resource_path = 'parent_resource_path_example' # String | The parent resource identity.
resource_type = 'resource_type_example' # String | The resource type.
resource_name = 'resource_name_example' # String | The name of the resource to check whether it exists.
api_version = 'api_version_example' # String | The API version to use for this operation.
parameters = AzureRest::GenericResource.new # GenericResource | Resource create parameters.

begin
  
  result = api_instance.resources_update(subscription_id, resource_group_name, resource_provider_namespace, parent_resource_path, resource_type, resource_name, api_version, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ResourcesApi->resources_update: #{e}"
end
```

#### Using the resources_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GenericResource>, Integer, Hash)> resources_update_with_http_info(subscription_id, resource_group_name, resource_provider_namespace, parent_resource_path, resource_type, resource_name, api_version, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.resources_update_with_http_info(subscription_id, resource_group_name, resource_provider_namespace, parent_resource_path, resource_type, resource_name, api_version, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GenericResource>
rescue AzureRest::ApiError => e
  puts "Error when calling ResourcesApi->resources_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group containing the resource to get. The name is case insensitive. |  |
| **resource_provider_namespace** | **String** | The resource provider of the resource to check. |  |
| **parent_resource_path** | **String** | The parent resource identity. |  |
| **resource_type** | **String** | The resource type. |  |
| **resource_name** | **String** | The name of the resource to check whether it exists. |  |
| **api_version** | **String** | The API version to use for this operation. |  |
| **parameters** | [**GenericResource**](GenericResource.md) | Resource create parameters. |  |

### Return type

[**GenericResource**](GenericResource.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## resources_update_by_id

> <GenericResource> resources_update_by_id(resource_id, api_version, parameters)



Update a resource by ID.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ResourcesApi.new
resource_id = 'resource_id_example' # String | 
api_version = 'api_version_example' # String | The API version to use for this operation.
parameters = AzureRest::GenericResource.new # GenericResource | Resource create parameters.

begin
  
  result = api_instance.resources_update_by_id(resource_id, api_version, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ResourcesApi->resources_update_by_id: #{e}"
end
```

#### Using the resources_update_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GenericResource>, Integer, Hash)> resources_update_by_id_with_http_info(resource_id, api_version, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.resources_update_by_id_with_http_info(resource_id, api_version, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GenericResource>
rescue AzureRest::ApiError => e
  puts "Error when calling ResourcesApi->resources_update_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource_id** | **String** |  |  |
| **api_version** | **String** | The API version to use for this operation. |  |
| **parameters** | [**GenericResource**](GenericResource.md) | Resource create parameters. |  |

### Return type

[**GenericResource**](GenericResource.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## resources_validate_move_resources

> resources_validate_move_resources(api_version, subscription_id, source_resource_group_name, parameters)

Validates whether resources can be moved from one resource group to another resource group.

This operation checks whether the specified resources can be moved to the target. The resources to be moved must be in the same source resource group in the source subscription being used. The target resource group may be in a different subscription. If validation succeeds, it returns HTTP response code 204 (no content). If validation fails, it returns HTTP response code 409 (Conflict) with an error message. Retrieve the URL in the Location header value to check the result of the long-running operation.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ResourcesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
source_resource_group_name = 'source_resource_group_name_example' # String | The name of the resource group to get. The name is case insensitive.
parameters = AzureRest::ResourcesMoveInfo.new # ResourcesMoveInfo | Parameters for moving resources.

begin
  # Validates whether resources can be moved from one resource group to another resource group.
  api_instance.resources_validate_move_resources(api_version, subscription_id, source_resource_group_name, parameters)
rescue AzureRest::ApiError => e
  puts "Error when calling ResourcesApi->resources_validate_move_resources: #{e}"
end
```

#### Using the resources_validate_move_resources_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> resources_validate_move_resources_with_http_info(api_version, subscription_id, source_resource_group_name, parameters)

```ruby
begin
  # Validates whether resources can be moved from one resource group to another resource group.
  data, status_code, headers = api_instance.resources_validate_move_resources_with_http_info(api_version, subscription_id, source_resource_group_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling ResourcesApi->resources_validate_move_resources_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **source_resource_group_name** | **String** | The name of the resource group to get. The name is case insensitive. |  |
| **parameters** | [**ResourcesMoveInfo**](ResourcesMoveInfo.md) | Parameters for moving resources. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

