# AzureRest::StorageTaskAssignmentsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**storage_task_assignment_instances_report_list**](StorageTaskAssignmentsApi.md#storage_task_assignment_instances_report_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/storageTaskAssignments/{storageTaskAssignmentName}/reports |  |
| [**storage_task_assignments_create**](StorageTaskAssignmentsApi.md#storage_task_assignments_create) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/storageTaskAssignments/{storageTaskAssignmentName} |  |
| [**storage_task_assignments_delete**](StorageTaskAssignmentsApi.md#storage_task_assignments_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/storageTaskAssignments/{storageTaskAssignmentName} |  |
| [**storage_task_assignments_get**](StorageTaskAssignmentsApi.md#storage_task_assignments_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/storageTaskAssignments/{storageTaskAssignmentName} |  |
| [**storage_task_assignments_list**](StorageTaskAssignmentsApi.md#storage_task_assignments_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/storageTaskAssignments |  |
| [**storage_task_assignments_stop_assignment**](StorageTaskAssignmentsApi.md#storage_task_assignments_stop_assignment) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/storageTaskAssignments/{storageTaskAssignmentName}/stopAssignment |  |
| [**storage_task_assignments_update**](StorageTaskAssignmentsApi.md#storage_task_assignments_update) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/storageTaskAssignments/{storageTaskAssignmentName} |  |


## storage_task_assignment_instances_report_list

> <StorageTaskReportSummary> storage_task_assignment_instances_report_list(api_version, subscription_id, resource_group_name, account_name, storage_task_assignment_name, opts)



Fetch the report summary of a single storage task assignment's instances

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::StorageTaskAssignmentsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
storage_task_assignment_name = 'storage_task_assignment_name_example' # String | The name of the storage task assignment within the specified resource group. Storage task assignment names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
opts = {
  maxpagesize: 56, # Integer | Optional, specifies the maximum number of storage task assignment instances to be included in the list response.
  filter: 'filter_example' # String | Optional. When specified, it can be used to query using reporting properties. See [Constructing Filter Strings](https://learn.microsoft.com/rest/api/storageservices/querying-tables-and-entities#constructing-filter-strings) for details.
}

begin
  
  result = api_instance.storage_task_assignment_instances_report_list(api_version, subscription_id, resource_group_name, account_name, storage_task_assignment_name, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling StorageTaskAssignmentsApi->storage_task_assignment_instances_report_list: #{e}"
end
```

#### Using the storage_task_assignment_instances_report_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StorageTaskReportSummary>, Integer, Hash)> storage_task_assignment_instances_report_list_with_http_info(api_version, subscription_id, resource_group_name, account_name, storage_task_assignment_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.storage_task_assignment_instances_report_list_with_http_info(api_version, subscription_id, resource_group_name, account_name, storage_task_assignment_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StorageTaskReportSummary>
rescue AzureRest::ApiError => e
  puts "Error when calling StorageTaskAssignmentsApi->storage_task_assignment_instances_report_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **storage_task_assignment_name** | **String** | The name of the storage task assignment within the specified resource group. Storage task assignment names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **maxpagesize** | **Integer** | Optional, specifies the maximum number of storage task assignment instances to be included in the list response. | [optional] |
| **filter** | **String** | Optional. When specified, it can be used to query using reporting properties. See [Constructing Filter Strings](https://learn.microsoft.com/rest/api/storageservices/querying-tables-and-entities#constructing-filter-strings) for details. | [optional] |

### Return type

[**StorageTaskReportSummary**](StorageTaskReportSummary.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## storage_task_assignments_create

> <StorageTaskAssignment> storage_task_assignments_create(api_version, subscription_id, resource_group_name, account_name, storage_task_assignment_name, parameters)



Asynchronously creates a new storage task assignment sub-resource with the specified parameters. If a storage task assignment is already created and a subsequent create request is issued with different properties, the storage task assignment properties will be updated. If a storage task assignment is already created and a subsequent create or update request is issued with the exact same set of properties, the request will succeed.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::StorageTaskAssignmentsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
storage_task_assignment_name = 'storage_task_assignment_name_example' # String | The name of the storage task assignment within the specified resource group. Storage task assignment names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
parameters = AzureRest::StorageTaskAssignment.new # StorageTaskAssignment | The parameters to create a Storage Task Assignment.

begin
  
  result = api_instance.storage_task_assignments_create(api_version, subscription_id, resource_group_name, account_name, storage_task_assignment_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling StorageTaskAssignmentsApi->storage_task_assignments_create: #{e}"
end
```

#### Using the storage_task_assignments_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StorageTaskAssignment>, Integer, Hash)> storage_task_assignments_create_with_http_info(api_version, subscription_id, resource_group_name, account_name, storage_task_assignment_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.storage_task_assignments_create_with_http_info(api_version, subscription_id, resource_group_name, account_name, storage_task_assignment_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StorageTaskAssignment>
rescue AzureRest::ApiError => e
  puts "Error when calling StorageTaskAssignmentsApi->storage_task_assignments_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **storage_task_assignment_name** | **String** | The name of the storage task assignment within the specified resource group. Storage task assignment names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **parameters** | [**StorageTaskAssignment**](StorageTaskAssignment.md) | The parameters to create a Storage Task Assignment. |  |

### Return type

[**StorageTaskAssignment**](StorageTaskAssignment.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## storage_task_assignments_delete

> storage_task_assignments_delete(api_version, subscription_id, resource_group_name, account_name, storage_task_assignment_name)



Delete the storage task assignment sub-resource

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::StorageTaskAssignmentsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
storage_task_assignment_name = 'storage_task_assignment_name_example' # String | The name of the storage task assignment within the specified resource group. Storage task assignment names must be between 3 and 24 characters in length and use numbers and lower-case letters only.

begin
  
  api_instance.storage_task_assignments_delete(api_version, subscription_id, resource_group_name, account_name, storage_task_assignment_name)
rescue AzureRest::ApiError => e
  puts "Error when calling StorageTaskAssignmentsApi->storage_task_assignments_delete: #{e}"
end
```

#### Using the storage_task_assignments_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> storage_task_assignments_delete_with_http_info(api_version, subscription_id, resource_group_name, account_name, storage_task_assignment_name)

```ruby
begin
  
  data, status_code, headers = api_instance.storage_task_assignments_delete_with_http_info(api_version, subscription_id, resource_group_name, account_name, storage_task_assignment_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling StorageTaskAssignmentsApi->storage_task_assignments_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **storage_task_assignment_name** | **String** | The name of the storage task assignment within the specified resource group. Storage task assignment names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## storage_task_assignments_get

> <StorageTaskAssignment> storage_task_assignments_get(api_version, subscription_id, resource_group_name, account_name, storage_task_assignment_name)



Get the storage task assignment properties

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::StorageTaskAssignmentsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
storage_task_assignment_name = 'storage_task_assignment_name_example' # String | The name of the storage task assignment within the specified resource group. Storage task assignment names must be between 3 and 24 characters in length and use numbers and lower-case letters only.

begin
  
  result = api_instance.storage_task_assignments_get(api_version, subscription_id, resource_group_name, account_name, storage_task_assignment_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling StorageTaskAssignmentsApi->storage_task_assignments_get: #{e}"
end
```

#### Using the storage_task_assignments_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StorageTaskAssignment>, Integer, Hash)> storage_task_assignments_get_with_http_info(api_version, subscription_id, resource_group_name, account_name, storage_task_assignment_name)

```ruby
begin
  
  data, status_code, headers = api_instance.storage_task_assignments_get_with_http_info(api_version, subscription_id, resource_group_name, account_name, storage_task_assignment_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StorageTaskAssignment>
rescue AzureRest::ApiError => e
  puts "Error when calling StorageTaskAssignmentsApi->storage_task_assignments_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **storage_task_assignment_name** | **String** | The name of the storage task assignment within the specified resource group. Storage task assignment names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |

### Return type

[**StorageTaskAssignment**](StorageTaskAssignment.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## storage_task_assignments_list

> <StorageTaskAssignmentsList> storage_task_assignments_list(api_version, subscription_id, resource_group_name, account_name, opts)



List all the storage task assignments in an account

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::StorageTaskAssignmentsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
opts = {
  top: 56 # Integer | Optional, specifies the maximum number of storage task assignment Ids to be included in the list response.
}

begin
  
  result = api_instance.storage_task_assignments_list(api_version, subscription_id, resource_group_name, account_name, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling StorageTaskAssignmentsApi->storage_task_assignments_list: #{e}"
end
```

#### Using the storage_task_assignments_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StorageTaskAssignmentsList>, Integer, Hash)> storage_task_assignments_list_with_http_info(api_version, subscription_id, resource_group_name, account_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.storage_task_assignments_list_with_http_info(api_version, subscription_id, resource_group_name, account_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StorageTaskAssignmentsList>
rescue AzureRest::ApiError => e
  puts "Error when calling StorageTaskAssignmentsApi->storage_task_assignments_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **top** | **Integer** | Optional, specifies the maximum number of storage task assignment Ids to be included in the list response. | [optional] |

### Return type

[**StorageTaskAssignmentsList**](StorageTaskAssignmentsList.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## storage_task_assignments_stop_assignment

> storage_task_assignments_stop_assignment(api_version, subscription_id, resource_group_name, account_name, storage_task_assignment_name)



Stops any active running storage action for the storage task assignment

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::StorageTaskAssignmentsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
storage_task_assignment_name = 'storage_task_assignment_name_example' # String | The name of the storage task assignment within the specified resource group. Storage task assignment names must be between 3 and 24 characters in length and use numbers and lower-case letters only.

begin
  
  api_instance.storage_task_assignments_stop_assignment(api_version, subscription_id, resource_group_name, account_name, storage_task_assignment_name)
rescue AzureRest::ApiError => e
  puts "Error when calling StorageTaskAssignmentsApi->storage_task_assignments_stop_assignment: #{e}"
end
```

#### Using the storage_task_assignments_stop_assignment_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> storage_task_assignments_stop_assignment_with_http_info(api_version, subscription_id, resource_group_name, account_name, storage_task_assignment_name)

```ruby
begin
  
  data, status_code, headers = api_instance.storage_task_assignments_stop_assignment_with_http_info(api_version, subscription_id, resource_group_name, account_name, storage_task_assignment_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling StorageTaskAssignmentsApi->storage_task_assignments_stop_assignment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **storage_task_assignment_name** | **String** | The name of the storage task assignment within the specified resource group. Storage task assignment names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## storage_task_assignments_update

> <StorageTaskAssignment> storage_task_assignments_update(api_version, subscription_id, resource_group_name, account_name, storage_task_assignment_name, parameters)



Update storage task assignment properties

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::StorageTaskAssignmentsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
storage_task_assignment_name = 'storage_task_assignment_name_example' # String | The name of the storage task assignment within the specified resource group. Storage task assignment names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
parameters = AzureRest::StorageTaskAssignmentUpdateParameters.new # StorageTaskAssignmentUpdateParameters | The parameters to update a Storage Task Assignment.

begin
  
  result = api_instance.storage_task_assignments_update(api_version, subscription_id, resource_group_name, account_name, storage_task_assignment_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling StorageTaskAssignmentsApi->storage_task_assignments_update: #{e}"
end
```

#### Using the storage_task_assignments_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StorageTaskAssignment>, Integer, Hash)> storage_task_assignments_update_with_http_info(api_version, subscription_id, resource_group_name, account_name, storage_task_assignment_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.storage_task_assignments_update_with_http_info(api_version, subscription_id, resource_group_name, account_name, storage_task_assignment_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StorageTaskAssignment>
rescue AzureRest::ApiError => e
  puts "Error when calling StorageTaskAssignmentsApi->storage_task_assignments_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **storage_task_assignment_name** | **String** | The name of the storage task assignment within the specified resource group. Storage task assignment names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **parameters** | [**StorageTaskAssignmentUpdateParameters**](StorageTaskAssignmentUpdateParameters.md) | The parameters to update a Storage Task Assignment. |  |

### Return type

[**StorageTaskAssignment**](StorageTaskAssignment.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

