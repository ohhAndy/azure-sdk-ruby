# AzureRest::ApplicationSecurityGroupsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**application_security_groups_create_or_update**](ApplicationSecurityGroupsApi.md#application_security_groups_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/applicationSecurityGroups/{applicationSecurityGroupName} |  |
| [**application_security_groups_delete**](ApplicationSecurityGroupsApi.md#application_security_groups_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/applicationSecurityGroups/{applicationSecurityGroupName} |  |
| [**application_security_groups_get**](ApplicationSecurityGroupsApi.md#application_security_groups_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/applicationSecurityGroups/{applicationSecurityGroupName} |  |
| [**application_security_groups_list**](ApplicationSecurityGroupsApi.md#application_security_groups_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/applicationSecurityGroups |  |
| [**application_security_groups_list_all**](ApplicationSecurityGroupsApi.md#application_security_groups_list_all) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Network/applicationSecurityGroups |  |
| [**application_security_groups_update_tags**](ApplicationSecurityGroupsApi.md#application_security_groups_update_tags) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/applicationSecurityGroups/{applicationSecurityGroupName} |  |


## application_security_groups_create_or_update

> <ApplicationSecurityGroup> application_security_groups_create_or_update(api_version, subscription_id, resource_group_name, application_security_group_name, parameters)



Creates or updates an application security group.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ApplicationSecurityGroupsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
application_security_group_name = 'application_security_group_name_example' # String | The name of the application security group.
parameters = AzureRest::ApplicationSecurityGroup.new # ApplicationSecurityGroup | Parameters supplied to the create or update ApplicationSecurityGroup operation.

begin
  
  result = api_instance.application_security_groups_create_or_update(api_version, subscription_id, resource_group_name, application_security_group_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ApplicationSecurityGroupsApi->application_security_groups_create_or_update: #{e}"
end
```

#### Using the application_security_groups_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationSecurityGroup>, Integer, Hash)> application_security_groups_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, application_security_group_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.application_security_groups_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, application_security_group_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationSecurityGroup>
rescue AzureRest::ApiError => e
  puts "Error when calling ApplicationSecurityGroupsApi->application_security_groups_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **application_security_group_name** | **String** | The name of the application security group. |  |
| **parameters** | [**ApplicationSecurityGroup**](ApplicationSecurityGroup.md) | Parameters supplied to the create or update ApplicationSecurityGroup operation. |  |

### Return type

[**ApplicationSecurityGroup**](ApplicationSecurityGroup.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## application_security_groups_delete

> application_security_groups_delete(api_version, subscription_id, resource_group_name, application_security_group_name)



Deletes the specified application security group.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ApplicationSecurityGroupsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
application_security_group_name = 'application_security_group_name_example' # String | The name of the application security group.

begin
  
  api_instance.application_security_groups_delete(api_version, subscription_id, resource_group_name, application_security_group_name)
rescue AzureRest::ApiError => e
  puts "Error when calling ApplicationSecurityGroupsApi->application_security_groups_delete: #{e}"
end
```

#### Using the application_security_groups_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> application_security_groups_delete_with_http_info(api_version, subscription_id, resource_group_name, application_security_group_name)

```ruby
begin
  
  data, status_code, headers = api_instance.application_security_groups_delete_with_http_info(api_version, subscription_id, resource_group_name, application_security_group_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling ApplicationSecurityGroupsApi->application_security_groups_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **application_security_group_name** | **String** | The name of the application security group. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## application_security_groups_get

> <ApplicationSecurityGroup> application_security_groups_get(api_version, subscription_id, resource_group_name, application_security_group_name)



Gets information about the specified application security group.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ApplicationSecurityGroupsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
application_security_group_name = 'application_security_group_name_example' # String | The name of the application security group.

begin
  
  result = api_instance.application_security_groups_get(api_version, subscription_id, resource_group_name, application_security_group_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ApplicationSecurityGroupsApi->application_security_groups_get: #{e}"
end
```

#### Using the application_security_groups_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationSecurityGroup>, Integer, Hash)> application_security_groups_get_with_http_info(api_version, subscription_id, resource_group_name, application_security_group_name)

```ruby
begin
  
  data, status_code, headers = api_instance.application_security_groups_get_with_http_info(api_version, subscription_id, resource_group_name, application_security_group_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationSecurityGroup>
rescue AzureRest::ApiError => e
  puts "Error when calling ApplicationSecurityGroupsApi->application_security_groups_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **application_security_group_name** | **String** | The name of the application security group. |  |

### Return type

[**ApplicationSecurityGroup**](ApplicationSecurityGroup.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## application_security_groups_list

> <ApplicationSecurityGroupListResult> application_security_groups_list(api_version, subscription_id, resource_group_name)



Gets all the application security groups in a resource group.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ApplicationSecurityGroupsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.

begin
  
  result = api_instance.application_security_groups_list(api_version, subscription_id, resource_group_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ApplicationSecurityGroupsApi->application_security_groups_list: #{e}"
end
```

#### Using the application_security_groups_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationSecurityGroupListResult>, Integer, Hash)> application_security_groups_list_with_http_info(api_version, subscription_id, resource_group_name)

```ruby
begin
  
  data, status_code, headers = api_instance.application_security_groups_list_with_http_info(api_version, subscription_id, resource_group_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationSecurityGroupListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling ApplicationSecurityGroupsApi->application_security_groups_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |

### Return type

[**ApplicationSecurityGroupListResult**](ApplicationSecurityGroupListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## application_security_groups_list_all

> <ApplicationSecurityGroupListResult> application_security_groups_list_all(api_version, subscription_id)



Gets all application security groups in a subscription.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ApplicationSecurityGroupsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.

begin
  
  result = api_instance.application_security_groups_list_all(api_version, subscription_id)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ApplicationSecurityGroupsApi->application_security_groups_list_all: #{e}"
end
```

#### Using the application_security_groups_list_all_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationSecurityGroupListResult>, Integer, Hash)> application_security_groups_list_all_with_http_info(api_version, subscription_id)

```ruby
begin
  
  data, status_code, headers = api_instance.application_security_groups_list_all_with_http_info(api_version, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationSecurityGroupListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling ApplicationSecurityGroupsApi->application_security_groups_list_all_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |

### Return type

[**ApplicationSecurityGroupListResult**](ApplicationSecurityGroupListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## application_security_groups_update_tags

> <ApplicationSecurityGroup> application_security_groups_update_tags(api_version, subscription_id, resource_group_name, application_security_group_name, parameters)



Updates an application security group's tags.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ApplicationSecurityGroupsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
application_security_group_name = 'application_security_group_name_example' # String | The name of the application security group.
parameters = AzureRest::TagsObject.new # TagsObject | Parameters supplied to update application security group tags.

begin
  
  result = api_instance.application_security_groups_update_tags(api_version, subscription_id, resource_group_name, application_security_group_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ApplicationSecurityGroupsApi->application_security_groups_update_tags: #{e}"
end
```

#### Using the application_security_groups_update_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationSecurityGroup>, Integer, Hash)> application_security_groups_update_tags_with_http_info(api_version, subscription_id, resource_group_name, application_security_group_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.application_security_groups_update_tags_with_http_info(api_version, subscription_id, resource_group_name, application_security_group_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationSecurityGroup>
rescue AzureRest::ApiError => e
  puts "Error when calling ApplicationSecurityGroupsApi->application_security_groups_update_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **application_security_group_name** | **String** | The name of the application security group. |  |
| **parameters** | [**TagsObject**](TagsObject.md) | Parameters supplied to update application security group tags. |  |

### Return type

[**ApplicationSecurityGroup**](ApplicationSecurityGroup.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

