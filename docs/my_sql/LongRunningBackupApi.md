# AzureRest::LongRunningBackupApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**long_running_backup_create**](LongRunningBackupApi.md#long_running_backup_create) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/flexibleServers/{serverName}/backupsV2/{backupName} |  |


## long_running_backup_create

> <ServerBackupV2> long_running_backup_create(api_version, subscription_id, resource_group_name, server_name, backup_name, opts)



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

api_instance = AzureRest::LongRunningBackupApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.
backup_name = 'backup_name_example' # String | The name of the backup.
opts = {
  parameters: AzureRest::ServerBackupV2.new # ServerBackupV2 | The required parameters for creating and exporting backup of the given server.
}

begin
  
  result = api_instance.long_running_backup_create(api_version, subscription_id, resource_group_name, server_name, backup_name, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling LongRunningBackupApi->long_running_backup_create: #{e}"
end
```

#### Using the long_running_backup_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServerBackupV2>, Integer, Hash)> long_running_backup_create_with_http_info(api_version, subscription_id, resource_group_name, server_name, backup_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.long_running_backup_create_with_http_info(api_version, subscription_id, resource_group_name, server_name, backup_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServerBackupV2>
rescue AzureRest::ApiError => e
  puts "Error when calling LongRunningBackupApi->long_running_backup_create_with_http_info: #{e}"
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
| **parameters** | [**ServerBackupV2**](ServerBackupV2.md) | The required parameters for creating and exporting backup of the given server. | [optional] |

### Return type

[**ServerBackupV2**](ServerBackupV2.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

