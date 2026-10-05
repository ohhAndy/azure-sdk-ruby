# AzureRest::BackupsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**backups_get**](BackupsApi.md#backups_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/flexibleServers/{serverName}/backups/{backupName} |  |
| [**backups_list_by_server**](BackupsApi.md#backups_list_by_server) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/flexibleServers/{serverName}/backups |  |
| [**backups_put**](BackupsApi.md#backups_put) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/flexibleServers/{serverName}/backups/{backupName} |  |


## backups_get

> <ServerBackup> backups_get(api_version, subscription_id, resource_group_name, server_name, backup_name)



List all the backups for a given server.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::BackupsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.
backup_name = 'backup_name_example' # String | The name of the backup.

begin
  
  result = api_instance.backups_get(api_version, subscription_id, resource_group_name, server_name, backup_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling BackupsApi->backups_get: #{e}"
end
```

#### Using the backups_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServerBackup>, Integer, Hash)> backups_get_with_http_info(api_version, subscription_id, resource_group_name, server_name, backup_name)

```ruby
begin
  
  data, status_code, headers = api_instance.backups_get_with_http_info(api_version, subscription_id, resource_group_name, server_name, backup_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServerBackup>
rescue AzureRest::ApiError => e
  puts "Error when calling BackupsApi->backups_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **backup_name** | **String** | The name of the backup. |  |

### Return type

[**ServerBackup**](ServerBackup.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## backups_list_by_server

> <ServerBackupListResult> backups_list_by_server(api_version, subscription_id, resource_group_name, server_name)



List all the backups for a given server.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::BackupsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.

begin
  
  result = api_instance.backups_list_by_server(api_version, subscription_id, resource_group_name, server_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling BackupsApi->backups_list_by_server: #{e}"
end
```

#### Using the backups_list_by_server_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServerBackupListResult>, Integer, Hash)> backups_list_by_server_with_http_info(api_version, subscription_id, resource_group_name, server_name)

```ruby
begin
  
  data, status_code, headers = api_instance.backups_list_by_server_with_http_info(api_version, subscription_id, resource_group_name, server_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServerBackupListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling BackupsApi->backups_list_by_server_with_http_info: #{e}"
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

[**ServerBackupListResult**](ServerBackupListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## backups_put

> <ServerBackup> backups_put(api_version, subscription_id, resource_group_name, server_name, backup_name)



Create backup for a given server with specified backup name.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::BackupsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.
backup_name = 'backup_name_example' # String | The name of the backup.

begin
  
  result = api_instance.backups_put(api_version, subscription_id, resource_group_name, server_name, backup_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling BackupsApi->backups_put: #{e}"
end
```

#### Using the backups_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServerBackup>, Integer, Hash)> backups_put_with_http_info(api_version, subscription_id, resource_group_name, server_name, backup_name)

```ruby
begin
  
  data, status_code, headers = api_instance.backups_put_with_http_info(api_version, subscription_id, resource_group_name, server_name, backup_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServerBackup>
rescue AzureRest::ApiError => e
  puts "Error when calling BackupsApi->backups_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **backup_name** | **String** | The name of the backup. |  |

### Return type

[**ServerBackup**](ServerBackup.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

