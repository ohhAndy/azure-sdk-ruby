# AzureRest::BackupsLongTermRetentionOperationsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**backups_long_term_retention_get**](BackupsLongTermRetentionOperationsApi.md#backups_long_term_retention_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/flexibleServers/{serverName}/ltrBackupOperations/{backupName} |  |
| [**backups_long_term_retention_list_by_server**](BackupsLongTermRetentionOperationsApi.md#backups_long_term_retention_list_by_server) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/flexibleServers/{serverName}/ltrBackupOperations |  |


## backups_long_term_retention_get

> <BackupsLongTermRetentionOperation> backups_long_term_retention_get(api_version, subscription_id, resource_group_name, server_name, backup_name)



Gets the results of a long retention backup operation for a server.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::BackupsLongTermRetentionOperationsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.
backup_name = 'backup_name_example' # String | The name of the backup.

begin
  
  result = api_instance.backups_long_term_retention_get(api_version, subscription_id, resource_group_name, server_name, backup_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling BackupsLongTermRetentionOperationsApi->backups_long_term_retention_get: #{e}"
end
```

#### Using the backups_long_term_retention_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BackupsLongTermRetentionOperation>, Integer, Hash)> backups_long_term_retention_get_with_http_info(api_version, subscription_id, resource_group_name, server_name, backup_name)

```ruby
begin
  
  data, status_code, headers = api_instance.backups_long_term_retention_get_with_http_info(api_version, subscription_id, resource_group_name, server_name, backup_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BackupsLongTermRetentionOperation>
rescue AzureRest::ApiError => e
  puts "Error when calling BackupsLongTermRetentionOperationsApi->backups_long_term_retention_get_with_http_info: #{e}"
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

[**BackupsLongTermRetentionOperation**](BackupsLongTermRetentionOperation.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## backups_long_term_retention_list_by_server

> <LtrServerBackupOperationList> backups_long_term_retention_list_by_server(api_version, subscription_id, resource_group_name, server_name)



Lists the results of the long term retention backup operations for a server.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::BackupsLongTermRetentionOperationsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.

begin
  
  result = api_instance.backups_long_term_retention_list_by_server(api_version, subscription_id, resource_group_name, server_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling BackupsLongTermRetentionOperationsApi->backups_long_term_retention_list_by_server: #{e}"
end
```

#### Using the backups_long_term_retention_list_by_server_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LtrServerBackupOperationList>, Integer, Hash)> backups_long_term_retention_list_by_server_with_http_info(api_version, subscription_id, resource_group_name, server_name)

```ruby
begin
  
  data, status_code, headers = api_instance.backups_long_term_retention_list_by_server_with_http_info(api_version, subscription_id, resource_group_name, server_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LtrServerBackupOperationList>
rescue AzureRest::ApiError => e
  puts "Error when calling BackupsLongTermRetentionOperationsApi->backups_long_term_retention_list_by_server_with_http_info: #{e}"
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

[**LtrServerBackupOperationList**](LtrServerBackupOperationList.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

