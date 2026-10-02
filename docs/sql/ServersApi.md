# AzureSDK::ServersApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**servers_check_name_availability**](ServersApi.md#servers_check_name_availability) | **POST** /subscriptions/{subscriptionId}/providers/Microsoft.Sql/checkNameAvailability |  |
| [**servers_create_or_update**](ServersApi.md#servers_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName} |  |
| [**servers_delete**](ServersApi.md#servers_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName} |  |
| [**servers_get**](ServersApi.md#servers_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName} |  |
| [**servers_import_database**](ServersApi.md#servers_import_database) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/import |  |
| [**servers_list**](ServersApi.md#servers_list) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Sql/servers |  |
| [**servers_list_by_resource_group**](ServersApi.md#servers_list_by_resource_group) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers |  |
| [**servers_refresh_status**](ServersApi.md#servers_refresh_status) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/refreshExternalGovernanceStatus |  |
| [**servers_update**](ServersApi.md#servers_update) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName} |  |


## servers_check_name_availability

> <CheckNameAvailabilityResponse> servers_check_name_availability(api_version, subscription_id, parameters)



Determines whether a resource can be created with the specified name.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ServersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
parameters = AzureSDK::CheckNameAvailabilityRequest.new({name: 'name_example', type: AzureSDK::CheckNameAvailabilityResourceType::MICROSOFT_SQL_SERVERS}) # CheckNameAvailabilityRequest | The request body

begin
  
  result = api_instance.servers_check_name_availability(api_version, subscription_id, parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ServersApi->servers_check_name_availability: #{e}"
end
```

#### Using the servers_check_name_availability_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckNameAvailabilityResponse>, Integer, Hash)> servers_check_name_availability_with_http_info(api_version, subscription_id, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.servers_check_name_availability_with_http_info(api_version, subscription_id, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckNameAvailabilityResponse>
rescue AzureSDK::ApiError => e
  puts "Error when calling ServersApi->servers_check_name_availability_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **parameters** | [**CheckNameAvailabilityRequest**](CheckNameAvailabilityRequest.md) | The request body |  |

### Return type

[**CheckNameAvailabilityResponse**](CheckNameAvailabilityResponse.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## servers_create_or_update

> <Server> servers_create_or_update(api_version, subscription_id, resource_group_name, server_name, parameters)



Creates or updates a server.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ServersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.
parameters = AzureSDK::Server.new({location: 'location_example'}) # Server | The requested server resource state.

begin
  
  result = api_instance.servers_create_or_update(api_version, subscription_id, resource_group_name, server_name, parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ServersApi->servers_create_or_update: #{e}"
end
```

#### Using the servers_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Server>, Integer, Hash)> servers_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, server_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.servers_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, server_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Server>
rescue AzureSDK::ApiError => e
  puts "Error when calling ServersApi->servers_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **parameters** | [**Server**](Server.md) | The requested server resource state. |  |

### Return type

[**Server**](Server.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## servers_delete

> servers_delete(api_version, subscription_id, resource_group_name, server_name)



Deletes a server.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ServersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.

begin
  
  api_instance.servers_delete(api_version, subscription_id, resource_group_name, server_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling ServersApi->servers_delete: #{e}"
end
```

#### Using the servers_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> servers_delete_with_http_info(api_version, subscription_id, resource_group_name, server_name)

```ruby
begin
  
  data, status_code, headers = api_instance.servers_delete_with_http_info(api_version, subscription_id, resource_group_name, server_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling ServersApi->servers_delete_with_http_info: #{e}"
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

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## servers_get

> <Server> servers_get(api_version, subscription_id, resource_group_name, server_name, opts)



Gets a server.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ServersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.
opts = {
  expand: 'expand_example' # String | The child resources to include in the response.
}

begin
  
  result = api_instance.servers_get(api_version, subscription_id, resource_group_name, server_name, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ServersApi->servers_get: #{e}"
end
```

#### Using the servers_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Server>, Integer, Hash)> servers_get_with_http_info(api_version, subscription_id, resource_group_name, server_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.servers_get_with_http_info(api_version, subscription_id, resource_group_name, server_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Server>
rescue AzureSDK::ApiError => e
  puts "Error when calling ServersApi->servers_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **expand** | **String** | The child resources to include in the response. | [optional] |

### Return type

[**Server**](Server.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## servers_import_database

> <ImportExportOperationResult> servers_import_database(api_version, subscription_id, resource_group_name, server_name, parameters)



Imports a bacpac into a new database.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ServersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.
parameters = AzureSDK::ImportNewDatabaseDefinition.new({storage_key_type: AzureSDK::StorageKeyType::SHARED_ACCESS_KEY, storage_key: 'storage_key_example', storage_uri: 'storage_uri_example', administrator_login: 'administrator_login_example'}) # ImportNewDatabaseDefinition | The database import request parameters.

begin
  
  result = api_instance.servers_import_database(api_version, subscription_id, resource_group_name, server_name, parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ServersApi->servers_import_database: #{e}"
end
```

#### Using the servers_import_database_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ImportExportOperationResult>, Integer, Hash)> servers_import_database_with_http_info(api_version, subscription_id, resource_group_name, server_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.servers_import_database_with_http_info(api_version, subscription_id, resource_group_name, server_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ImportExportOperationResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling ServersApi->servers_import_database_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **parameters** | [**ImportNewDatabaseDefinition**](ImportNewDatabaseDefinition.md) | The database import request parameters. |  |

### Return type

[**ImportExportOperationResult**](ImportExportOperationResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## servers_list

> <ServerListResult> servers_list(api_version, subscription_id, opts)



Gets a list of all servers in the subscription.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ServersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
opts = {
  expand: 'expand_example' # String | The child resources to include in the response.
}

begin
  
  result = api_instance.servers_list(api_version, subscription_id, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ServersApi->servers_list: #{e}"
end
```

#### Using the servers_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServerListResult>, Integer, Hash)> servers_list_with_http_info(api_version, subscription_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.servers_list_with_http_info(api_version, subscription_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServerListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling ServersApi->servers_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **expand** | **String** | The child resources to include in the response. | [optional] |

### Return type

[**ServerListResult**](ServerListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## servers_list_by_resource_group

> <ServerListResult> servers_list_by_resource_group(api_version, subscription_id, resource_group_name, opts)



Gets a list of servers in a resource groups.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ServersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
opts = {
  expand: 'expand_example' # String | The child resources to include in the response.
}

begin
  
  result = api_instance.servers_list_by_resource_group(api_version, subscription_id, resource_group_name, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ServersApi->servers_list_by_resource_group: #{e}"
end
```

#### Using the servers_list_by_resource_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServerListResult>, Integer, Hash)> servers_list_by_resource_group_with_http_info(api_version, subscription_id, resource_group_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.servers_list_by_resource_group_with_http_info(api_version, subscription_id, resource_group_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServerListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling ServersApi->servers_list_by_resource_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **expand** | **String** | The child resources to include in the response. | [optional] |

### Return type

[**ServerListResult**](ServerListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## servers_refresh_status

> <RefreshExternalGovernanceStatusOperationResult> servers_refresh_status(api_version, subscription_id, resource_group_name, server_name)



Refresh external governance enablement status.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ServersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.

begin
  
  result = api_instance.servers_refresh_status(api_version, subscription_id, resource_group_name, server_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ServersApi->servers_refresh_status: #{e}"
end
```

#### Using the servers_refresh_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RefreshExternalGovernanceStatusOperationResult>, Integer, Hash)> servers_refresh_status_with_http_info(api_version, subscription_id, resource_group_name, server_name)

```ruby
begin
  
  data, status_code, headers = api_instance.servers_refresh_status_with_http_info(api_version, subscription_id, resource_group_name, server_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RefreshExternalGovernanceStatusOperationResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling ServersApi->servers_refresh_status_with_http_info: #{e}"
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

[**RefreshExternalGovernanceStatusOperationResult**](RefreshExternalGovernanceStatusOperationResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## servers_update

> <Server> servers_update(api_version, subscription_id, resource_group_name, server_name, parameters)



Updates a server.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ServersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.
parameters = AzureSDK::ServerUpdate.new # ServerUpdate | The requested server resource state.

begin
  
  result = api_instance.servers_update(api_version, subscription_id, resource_group_name, server_name, parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ServersApi->servers_update: #{e}"
end
```

#### Using the servers_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Server>, Integer, Hash)> servers_update_with_http_info(api_version, subscription_id, resource_group_name, server_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.servers_update_with_http_info(api_version, subscription_id, resource_group_name, server_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Server>
rescue AzureSDK::ApiError => e
  puts "Error when calling ServersApi->servers_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **parameters** | [**ServerUpdate**](ServerUpdate.md) | The requested server resource state. |  |

### Return type

[**Server**](Server.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

