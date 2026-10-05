# AzureRest::BackupAndExportApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**backup_and_export_create**](BackupAndExportApi.md#backup_and_export_create) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/flexibleServers/{serverName}/backupAndExport |  |
| [**backup_and_export_validate_backup**](BackupAndExportApi.md#backup_and_export_validate_backup) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/flexibleServers/{serverName}/validateBackup |  |


## backup_and_export_create

> <BackupAndExportResponse> backup_and_export_create(api_version, subscription_id, resource_group_name, server_name, parameters)



Exports the backup of the given server by creating a backup if not existing.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::BackupAndExportApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.
parameters = AzureRest::BackupAndExportRequest.new({backup_settings: AzureRest::BackupSettings.new({backup_name: 'backup_name_example'}), target_details: AzureRest::BackupStoreDetails.new({object_type: 'object_type_example'})}) # BackupAndExportRequest | The required parameters for creating and exporting backup of the given server.

begin
  
  result = api_instance.backup_and_export_create(api_version, subscription_id, resource_group_name, server_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling BackupAndExportApi->backup_and_export_create: #{e}"
end
```

#### Using the backup_and_export_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BackupAndExportResponse>, Integer, Hash)> backup_and_export_create_with_http_info(api_version, subscription_id, resource_group_name, server_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.backup_and_export_create_with_http_info(api_version, subscription_id, resource_group_name, server_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BackupAndExportResponse>
rescue AzureRest::ApiError => e
  puts "Error when calling BackupAndExportApi->backup_and_export_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **parameters** | [**BackupAndExportRequest**](BackupAndExportRequest.md) | The required parameters for creating and exporting backup of the given server. |  |

### Return type

[**BackupAndExportResponse**](BackupAndExportResponse.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## backup_and_export_validate_backup

> <ValidateBackupResponse> backup_and_export_validate_backup(api_version, subscription_id, resource_group_name, server_name)



Validates if backup can be performed for given server.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::BackupAndExportApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.

begin
  
  result = api_instance.backup_and_export_validate_backup(api_version, subscription_id, resource_group_name, server_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling BackupAndExportApi->backup_and_export_validate_backup: #{e}"
end
```

#### Using the backup_and_export_validate_backup_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ValidateBackupResponse>, Integer, Hash)> backup_and_export_validate_backup_with_http_info(api_version, subscription_id, resource_group_name, server_name)

```ruby
begin
  
  data, status_code, headers = api_instance.backup_and_export_validate_backup_with_http_info(api_version, subscription_id, resource_group_name, server_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ValidateBackupResponse>
rescue AzureRest::ApiError => e
  puts "Error when calling BackupAndExportApi->backup_and_export_validate_backup_with_http_info: #{e}"
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

[**ValidateBackupResponse**](ValidateBackupResponse.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

