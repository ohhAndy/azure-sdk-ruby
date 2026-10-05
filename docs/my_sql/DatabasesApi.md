# AzureRest::DatabasesApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**databases_create_or_update**](DatabasesApi.md#databases_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/flexibleServers/{serverName}/databases/{databaseName} |  |
| [**databases_delete**](DatabasesApi.md#databases_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/flexibleServers/{serverName}/databases/{databaseName} |  |
| [**databases_get**](DatabasesApi.md#databases_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/flexibleServers/{serverName}/databases/{databaseName} |  |
| [**databases_list_by_server**](DatabasesApi.md#databases_list_by_server) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/flexibleServers/{serverName}/databases |  |


## databases_create_or_update

> <Database> databases_create_or_update(api_version, subscription_id, resource_group_name, server_name, database_name, parameters)



Creates a new database or updates an existing database.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::DatabasesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.
database_name = 'database_name_example' # String | The name of the database.
parameters = AzureRest::Database.new # Database | The required parameters for creating or updating a database.

begin
  
  result = api_instance.databases_create_or_update(api_version, subscription_id, resource_group_name, server_name, database_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling DatabasesApi->databases_create_or_update: #{e}"
end
```

#### Using the databases_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Database>, Integer, Hash)> databases_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, server_name, database_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.databases_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, server_name, database_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Database>
rescue AzureRest::ApiError => e
  puts "Error when calling DatabasesApi->databases_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **database_name** | **String** | The name of the database. |  |
| **parameters** | [**Database**](Database.md) | The required parameters for creating or updating a database. |  |

### Return type

[**Database**](Database.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## databases_delete

> databases_delete(api_version, subscription_id, resource_group_name, server_name, database_name)



Deletes a database.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::DatabasesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.
database_name = 'database_name_example' # String | The name of the database.

begin
  
  api_instance.databases_delete(api_version, subscription_id, resource_group_name, server_name, database_name)
rescue AzureRest::ApiError => e
  puts "Error when calling DatabasesApi->databases_delete: #{e}"
end
```

#### Using the databases_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> databases_delete_with_http_info(api_version, subscription_id, resource_group_name, server_name, database_name)

```ruby
begin
  
  data, status_code, headers = api_instance.databases_delete_with_http_info(api_version, subscription_id, resource_group_name, server_name, database_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling DatabasesApi->databases_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **database_name** | **String** | The name of the database. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## databases_get

> <Database> databases_get(api_version, subscription_id, resource_group_name, server_name, database_name)



Gets information about a database.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::DatabasesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.
database_name = 'database_name_example' # String | The name of the database.

begin
  
  result = api_instance.databases_get(api_version, subscription_id, resource_group_name, server_name, database_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling DatabasesApi->databases_get: #{e}"
end
```

#### Using the databases_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Database>, Integer, Hash)> databases_get_with_http_info(api_version, subscription_id, resource_group_name, server_name, database_name)

```ruby
begin
  
  data, status_code, headers = api_instance.databases_get_with_http_info(api_version, subscription_id, resource_group_name, server_name, database_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Database>
rescue AzureRest::ApiError => e
  puts "Error when calling DatabasesApi->databases_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **database_name** | **String** | The name of the database. |  |

### Return type

[**Database**](Database.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## databases_list_by_server

> <DatabaseListResult> databases_list_by_server(api_version, subscription_id, resource_group_name, server_name)



List all the databases in a given server.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::DatabasesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.

begin
  
  result = api_instance.databases_list_by_server(api_version, subscription_id, resource_group_name, server_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling DatabasesApi->databases_list_by_server: #{e}"
end
```

#### Using the databases_list_by_server_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DatabaseListResult>, Integer, Hash)> databases_list_by_server_with_http_info(api_version, subscription_id, resource_group_name, server_name)

```ruby
begin
  
  data, status_code, headers = api_instance.databases_list_by_server_with_http_info(api_version, subscription_id, resource_group_name, server_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DatabaseListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling DatabasesApi->databases_list_by_server_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |

### Return type

[**DatabaseListResult**](DatabaseListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

