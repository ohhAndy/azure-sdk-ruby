# AzureRest::ResourceGroupsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**resource_groups_check_existence**](ResourceGroupsApi.md#resource_groups_check_existence) | **HEAD** /subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName} |  |
| [**resource_groups_create_or_update**](ResourceGroupsApi.md#resource_groups_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName} |  |
| [**resource_groups_delete**](ResourceGroupsApi.md#resource_groups_delete) | **DELETE** /subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName} | Deletes a resource group. |
| [**resource_groups_export_template**](ResourceGroupsApi.md#resource_groups_export_template) | **POST** /subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/exportTemplate |  |
| [**resource_groups_get**](ResourceGroupsApi.md#resource_groups_get) | **GET** /subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName} |  |
| [**resource_groups_list**](ResourceGroupsApi.md#resource_groups_list) | **GET** /subscriptions/{subscriptionId}/resourcegroups |  |
| [**resource_groups_update**](ResourceGroupsApi.md#resource_groups_update) | **PATCH** /subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName} | Updates a resource group. |
| [**resources_list_by_resource_group**](ResourceGroupsApi.md#resources_list_by_resource_group) | **GET** /subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/resources |  |


## resource_groups_check_existence

> resource_groups_check_existence(api_version, subscription_id, resource_group_name)



Checks whether a resource group exists.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ResourceGroupsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group to get. The name is case insensitive.

begin
  
  api_instance.resource_groups_check_existence(api_version, subscription_id, resource_group_name)
rescue AzureRest::ApiError => e
  puts "Error when calling ResourceGroupsApi->resource_groups_check_existence: #{e}"
end
```

#### Using the resource_groups_check_existence_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> resource_groups_check_existence_with_http_info(api_version, subscription_id, resource_group_name)

```ruby
begin
  
  data, status_code, headers = api_instance.resource_groups_check_existence_with_http_info(api_version, subscription_id, resource_group_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling ResourceGroupsApi->resource_groups_check_existence_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group to get. The name is case insensitive. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## resource_groups_create_or_update

> <ResourceGroup> resource_groups_create_or_update(api_version, subscription_id, resource_group_name, parameters)



Creates or updates a resource group.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ResourceGroupsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group to get. The name is case insensitive.
parameters = AzureRest::ResourceGroup.new({location: 'location_example'}) # ResourceGroup | Parameters supplied to the create or update a resource group.

begin
  
  result = api_instance.resource_groups_create_or_update(api_version, subscription_id, resource_group_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ResourceGroupsApi->resource_groups_create_or_update: #{e}"
end
```

#### Using the resource_groups_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourceGroup>, Integer, Hash)> resource_groups_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.resource_groups_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourceGroup>
rescue AzureRest::ApiError => e
  puts "Error when calling ResourceGroupsApi->resource_groups_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group to get. The name is case insensitive. |  |
| **parameters** | [**ResourceGroup**](ResourceGroup.md) | Parameters supplied to the create or update a resource group. |  |

### Return type

[**ResourceGroup**](ResourceGroup.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## resource_groups_delete

> resource_groups_delete(api_version, subscription_id, resource_group_name, opts)

Deletes a resource group.

When you delete a resource group, all of its resources are also deleted. Deleting a resource group deletes all of its template deployments and currently stored operations.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ResourceGroupsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group to get. The name is case insensitive.
opts = {
  force_deletion_types: 'force_deletion_types_example' # String | The resource types you want to force delete. Currently, only the following is supported: forceDeletionTypes=Microsoft.Compute/virtualMachines,Microsoft.Compute/virtualMachineScaleSets
}

begin
  # Deletes a resource group.
  api_instance.resource_groups_delete(api_version, subscription_id, resource_group_name, opts)
rescue AzureRest::ApiError => e
  puts "Error when calling ResourceGroupsApi->resource_groups_delete: #{e}"
end
```

#### Using the resource_groups_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> resource_groups_delete_with_http_info(api_version, subscription_id, resource_group_name, opts)

```ruby
begin
  # Deletes a resource group.
  data, status_code, headers = api_instance.resource_groups_delete_with_http_info(api_version, subscription_id, resource_group_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling ResourceGroupsApi->resource_groups_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group to get. The name is case insensitive. |  |
| **force_deletion_types** | **String** | The resource types you want to force delete. Currently, only the following is supported: forceDeletionTypes&#x3D;Microsoft.Compute/virtualMachines,Microsoft.Compute/virtualMachineScaleSets | [optional] |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## resource_groups_export_template

> <ResourceGroupExportResult> resource_groups_export_template(api_version, subscription_id, resource_group_name, parameters)



Captures the specified resource group as a template.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ResourceGroupsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group to get. The name is case insensitive.
parameters = AzureRest::ExportTemplateRequest.new # ExportTemplateRequest | Parameters for exporting the template.

begin
  
  result = api_instance.resource_groups_export_template(api_version, subscription_id, resource_group_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ResourceGroupsApi->resource_groups_export_template: #{e}"
end
```

#### Using the resource_groups_export_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourceGroupExportResult>, Integer, Hash)> resource_groups_export_template_with_http_info(api_version, subscription_id, resource_group_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.resource_groups_export_template_with_http_info(api_version, subscription_id, resource_group_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourceGroupExportResult>
rescue AzureRest::ApiError => e
  puts "Error when calling ResourceGroupsApi->resource_groups_export_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group to get. The name is case insensitive. |  |
| **parameters** | [**ExportTemplateRequest**](ExportTemplateRequest.md) | Parameters for exporting the template. |  |

### Return type

[**ResourceGroupExportResult**](ResourceGroupExportResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## resource_groups_get

> <ResourceGroup> resource_groups_get(api_version, subscription_id, resource_group_name)



Gets a resource group.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ResourceGroupsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group to get. The name is case insensitive.

begin
  
  result = api_instance.resource_groups_get(api_version, subscription_id, resource_group_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ResourceGroupsApi->resource_groups_get: #{e}"
end
```

#### Using the resource_groups_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourceGroup>, Integer, Hash)> resource_groups_get_with_http_info(api_version, subscription_id, resource_group_name)

```ruby
begin
  
  data, status_code, headers = api_instance.resource_groups_get_with_http_info(api_version, subscription_id, resource_group_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourceGroup>
rescue AzureRest::ApiError => e
  puts "Error when calling ResourceGroupsApi->resource_groups_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group to get. The name is case insensitive. |  |

### Return type

[**ResourceGroup**](ResourceGroup.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## resource_groups_list

> <ResourceGroupListResult> resource_groups_list(api_version, subscription_id, opts)



Gets all the resource groups for a subscription.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ResourceGroupsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
opts = {
  filter: 'filter_example', # String | The filter to apply on the operation.<br><br>You can filter by tag names and values. For example, to filter for a tag name and value, use $filter=tagName eq 'tag1' and tagValue eq 'Value1'
  top: 56 # Integer | The number of results to return. If null is passed, returns all resource groups.
}

begin
  
  result = api_instance.resource_groups_list(api_version, subscription_id, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ResourceGroupsApi->resource_groups_list: #{e}"
end
```

#### Using the resource_groups_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourceGroupListResult>, Integer, Hash)> resource_groups_list_with_http_info(api_version, subscription_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.resource_groups_list_with_http_info(api_version, subscription_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourceGroupListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling ResourceGroupsApi->resource_groups_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **filter** | **String** | The filter to apply on the operation.&lt;br&gt;&lt;br&gt;You can filter by tag names and values. For example, to filter for a tag name and value, use $filter&#x3D;tagName eq &#39;tag1&#39; and tagValue eq &#39;Value1&#39; | [optional] |
| **top** | **Integer** | The number of results to return. If null is passed, returns all resource groups. | [optional] |

### Return type

[**ResourceGroupListResult**](ResourceGroupListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## resource_groups_update

> <ResourceGroup> resource_groups_update(api_version, subscription_id, resource_group_name, parameters)

Updates a resource group.

Resource groups can be updated through a simple PATCH operation to a group address. The format of the request is the same as that for creating a resource group. If a field is unspecified, the current value is retained.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ResourceGroupsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group to get. The name is case insensitive.
parameters = AzureRest::ResourceGroupPatchable.new # ResourceGroupPatchable | Parameters supplied to update a resource group.

begin
  # Updates a resource group.
  result = api_instance.resource_groups_update(api_version, subscription_id, resource_group_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ResourceGroupsApi->resource_groups_update: #{e}"
end
```

#### Using the resource_groups_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourceGroup>, Integer, Hash)> resource_groups_update_with_http_info(api_version, subscription_id, resource_group_name, parameters)

```ruby
begin
  # Updates a resource group.
  data, status_code, headers = api_instance.resource_groups_update_with_http_info(api_version, subscription_id, resource_group_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourceGroup>
rescue AzureRest::ApiError => e
  puts "Error when calling ResourceGroupsApi->resource_groups_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group to get. The name is case insensitive. |  |
| **parameters** | [**ResourceGroupPatchable**](ResourceGroupPatchable.md) | Parameters supplied to update a resource group. |  |

### Return type

[**ResourceGroup**](ResourceGroup.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## resources_list_by_resource_group

> <ResourceListResult> resources_list_by_resource_group(api_version, subscription_id, resource_group_name, opts)



Get all the resources for a resource group.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ResourceGroupsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group to get. The name is case insensitive.
opts = {
  filter: 'filter_example', # String | The filter to apply on the operation.<br><br>The properties you can use for eq (equals) or ne (not equals) are: location, resourceType, name, resourceGroup, identity, identity/principalId, plan, plan/publisher, plan/product, plan/name, plan/version, and plan/promotionCode.<br><br>For example, to filter by a resource type, use: $filter=resourceType eq 'Microsoft.Network/virtualNetworks'<br><br>You can use substringof(value, property) in the filter. The properties you can use for substring are: name and resourceGroup.<br><br>For example, to get all resources with 'demo' anywhere in the name, use: $filter=substringof('demo', name)<br><br>You can link more than one substringof together by adding and/or operators.<br><br>You can filter by tag names and values. For example, to filter for a tag name and value, use $filter=tagName eq 'tag1' and tagValue eq 'Value1'. When you filter by a tag name and value, the tags for each resource are not returned in the results.<br><br>You can use some properties together when filtering. The combinations you can use are: substringof and/or resourceType, plan and plan/publisher and plan/name, identity and identity/principalId.
  expand: 'expand_example', # String | Comma-separated list of additional properties to be included in the response. Valid values include `createdTime`, `changedTime` and `provisioningState`. For example, `$expand=createdTime,changedTime`.
  top: 56 # Integer | The number of results to return. If null is passed, returns all resources.
}

begin
  
  result = api_instance.resources_list_by_resource_group(api_version, subscription_id, resource_group_name, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ResourceGroupsApi->resources_list_by_resource_group: #{e}"
end
```

#### Using the resources_list_by_resource_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourceListResult>, Integer, Hash)> resources_list_by_resource_group_with_http_info(api_version, subscription_id, resource_group_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.resources_list_by_resource_group_with_http_info(api_version, subscription_id, resource_group_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourceListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling ResourceGroupsApi->resources_list_by_resource_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group to get. The name is case insensitive. |  |
| **filter** | **String** | The filter to apply on the operation.&lt;br&gt;&lt;br&gt;The properties you can use for eq (equals) or ne (not equals) are: location, resourceType, name, resourceGroup, identity, identity/principalId, plan, plan/publisher, plan/product, plan/name, plan/version, and plan/promotionCode.&lt;br&gt;&lt;br&gt;For example, to filter by a resource type, use: $filter&#x3D;resourceType eq &#39;Microsoft.Network/virtualNetworks&#39;&lt;br&gt;&lt;br&gt;You can use substringof(value, property) in the filter. The properties you can use for substring are: name and resourceGroup.&lt;br&gt;&lt;br&gt;For example, to get all resources with &#39;demo&#39; anywhere in the name, use: $filter&#x3D;substringof(&#39;demo&#39;, name)&lt;br&gt;&lt;br&gt;You can link more than one substringof together by adding and/or operators.&lt;br&gt;&lt;br&gt;You can filter by tag names and values. For example, to filter for a tag name and value, use $filter&#x3D;tagName eq &#39;tag1&#39; and tagValue eq &#39;Value1&#39;. When you filter by a tag name and value, the tags for each resource are not returned in the results.&lt;br&gt;&lt;br&gt;You can use some properties together when filtering. The combinations you can use are: substringof and/or resourceType, plan and plan/publisher and plan/name, identity and identity/principalId. | [optional] |
| **expand** | **String** | Comma-separated list of additional properties to be included in the response. Valid values include &#x60;createdTime&#x60;, &#x60;changedTime&#x60; and &#x60;provisioningState&#x60;. For example, &#x60;$expand&#x3D;createdTime,changedTime&#x60;. | [optional] |
| **top** | **Integer** | The number of results to return. If null is passed, returns all resources. | [optional] |

### Return type

[**ResourceListResult**](ResourceListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

