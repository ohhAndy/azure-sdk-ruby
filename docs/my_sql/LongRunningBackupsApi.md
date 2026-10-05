# AzureRest::LongRunningBackupsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**long_running_backups_get**](LongRunningBackupsApi.md#long_running_backups_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/flexibleServers/{serverName}/backupsV2/{backupName} |  |
| [**long_running_backups_list**](LongRunningBackupsApi.md#long_running_backups_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/flexibleServers/{serverName}/backupsV2 |  |


## long_running_backups_get

> <ServerBackupV2> long_running_backups_get(api_version, subscription_id, resource_group_name, server_name, backup_name)



Get backup for a given server.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::LongRunningBackupsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.
backup_name = 'backup_name_example' # String | The name of the backup.

begin
  
  result = api_instance.long_running_backups_get(api_version, subscription_id, resource_group_name, server_name, backup_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling LongRunningBackupsApi->long_running_backups_get: #{e}"
end
```

#### Using the long_running_backups_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServerBackupV2>, Integer, Hash)> long_running_backups_get_with_http_info(api_version, subscription_id, resource_group_name, server_name, backup_name)

```ruby
begin
  
  data, status_code, headers = api_instance.long_running_backups_get_with_http_info(api_version, subscription_id, resource_group_name, server_name, backup_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServerBackupV2>
rescue AzureRest::ApiError => e
  puts "Error when calling LongRunningBackupsApi->long_running_backups_get_with_http_info: #{e}"
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

[**ServerBackupV2**](ServerBackupV2.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## long_running_backups_list

> <ServerBackupV2ListResult> long_running_backups_list(api_version, subscription_id, resource_group_name, server_name)



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

api_instance = AzureRest::LongRunningBackupsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.

begin
  
  result = api_instance.long_running_backups_list(api_version, subscription_id, resource_group_name, server_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling LongRunningBackupsApi->long_running_backups_list: #{e}"
end
```

#### Using the long_running_backups_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServerBackupV2ListResult>, Integer, Hash)> long_running_backups_list_with_http_info(api_version, subscription_id, resource_group_name, server_name)

```ruby
begin
  
  data, status_code, headers = api_instance.long_running_backups_list_with_http_info(api_version, subscription_id, resource_group_name, server_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServerBackupV2ListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling LongRunningBackupsApi->long_running_backups_list_with_http_info: #{e}"
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

[**ServerBackupV2ListResult**](ServerBackupV2ListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

