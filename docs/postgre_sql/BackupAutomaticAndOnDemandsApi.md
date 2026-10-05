# AzureRest::BackupAutomaticAndOnDemandsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**backups_automatic_and_on_demand_create**](BackupAutomaticAndOnDemandsApi.md#backups_automatic_and_on_demand_create) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/flexibleServers/{serverName}/backups/{backupName} |  |
| [**backups_automatic_and_on_demand_delete**](BackupAutomaticAndOnDemandsApi.md#backups_automatic_and_on_demand_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/flexibleServers/{serverName}/backups/{backupName} |  |
| [**backups_automatic_and_on_demand_get**](BackupAutomaticAndOnDemandsApi.md#backups_automatic_and_on_demand_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/flexibleServers/{serverName}/backups/{backupName} |  |
| [**backups_automatic_and_on_demand_list_by_server**](BackupAutomaticAndOnDemandsApi.md#backups_automatic_and_on_demand_list_by_server) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/flexibleServers/{serverName}/backups |  |


## backups_automatic_and_on_demand_create

> backups_automatic_and_on_demand_create(api_version, subscription_id, resource_group_name, server_name, backup_name)



Creates an on demand backup of a server.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::BackupAutomaticAndOnDemandsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.
backup_name = 'backup_name_example' # String | Name of the backup.

begin
  
  api_instance.backups_automatic_and_on_demand_create(api_version, subscription_id, resource_group_name, server_name, backup_name)
rescue AzureRest::ApiError => e
  puts "Error when calling BackupAutomaticAndOnDemandsApi->backups_automatic_and_on_demand_create: #{e}"
end
```

#### Using the backups_automatic_and_on_demand_create_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> backups_automatic_and_on_demand_create_with_http_info(api_version, subscription_id, resource_group_name, server_name, backup_name)

```ruby
begin
  
  data, status_code, headers = api_instance.backups_automatic_and_on_demand_create_with_http_info(api_version, subscription_id, resource_group_name, server_name, backup_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling BackupAutomaticAndOnDemandsApi->backups_automatic_and_on_demand_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **backup_name** | **String** | Name of the backup. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## backups_automatic_and_on_demand_delete

> backups_automatic_and_on_demand_delete(api_version, subscription_id, resource_group_name, server_name, backup_name)



Deletes a specific backup, given its name.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::BackupAutomaticAndOnDemandsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.
backup_name = 'backup_name_example' # String | Name of the backup.

begin
  
  api_instance.backups_automatic_and_on_demand_delete(api_version, subscription_id, resource_group_name, server_name, backup_name)
rescue AzureRest::ApiError => e
  puts "Error when calling BackupAutomaticAndOnDemandsApi->backups_automatic_and_on_demand_delete: #{e}"
end
```

#### Using the backups_automatic_and_on_demand_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> backups_automatic_and_on_demand_delete_with_http_info(api_version, subscription_id, resource_group_name, server_name, backup_name)

```ruby
begin
  
  data, status_code, headers = api_instance.backups_automatic_and_on_demand_delete_with_http_info(api_version, subscription_id, resource_group_name, server_name, backup_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling BackupAutomaticAndOnDemandsApi->backups_automatic_and_on_demand_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **backup_name** | **String** | Name of the backup. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## backups_automatic_and_on_demand_get

> <BackupAutomaticAndOnDemand> backups_automatic_and_on_demand_get(api_version, subscription_id, resource_group_name, server_name, backup_name)



Gets information of an on demand backup, given its name.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::BackupAutomaticAndOnDemandsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.
backup_name = 'backup_name_example' # String | Name of the backup.

begin
  
  result = api_instance.backups_automatic_and_on_demand_get(api_version, subscription_id, resource_group_name, server_name, backup_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling BackupAutomaticAndOnDemandsApi->backups_automatic_and_on_demand_get: #{e}"
end
```

#### Using the backups_automatic_and_on_demand_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BackupAutomaticAndOnDemand>, Integer, Hash)> backups_automatic_and_on_demand_get_with_http_info(api_version, subscription_id, resource_group_name, server_name, backup_name)

```ruby
begin
  
  data, status_code, headers = api_instance.backups_automatic_and_on_demand_get_with_http_info(api_version, subscription_id, resource_group_name, server_name, backup_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BackupAutomaticAndOnDemand>
rescue AzureRest::ApiError => e
  puts "Error when calling BackupAutomaticAndOnDemandsApi->backups_automatic_and_on_demand_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **backup_name** | **String** | Name of the backup. |  |

### Return type

[**BackupAutomaticAndOnDemand**](BackupAutomaticAndOnDemand.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## backups_automatic_and_on_demand_list_by_server

> <BackupAutomaticAndOnDemandList> backups_automatic_and_on_demand_list_by_server(api_version, subscription_id, resource_group_name, server_name)



Lists all available backups of a server.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::BackupAutomaticAndOnDemandsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.

begin
  
  result = api_instance.backups_automatic_and_on_demand_list_by_server(api_version, subscription_id, resource_group_name, server_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling BackupAutomaticAndOnDemandsApi->backups_automatic_and_on_demand_list_by_server: #{e}"
end
```

#### Using the backups_automatic_and_on_demand_list_by_server_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BackupAutomaticAndOnDemandList>, Integer, Hash)> backups_automatic_and_on_demand_list_by_server_with_http_info(api_version, subscription_id, resource_group_name, server_name)

```ruby
begin
  
  data, status_code, headers = api_instance.backups_automatic_and_on_demand_list_by_server_with_http_info(api_version, subscription_id, resource_group_name, server_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BackupAutomaticAndOnDemandList>
rescue AzureRest::ApiError => e
  puts "Error when calling BackupAutomaticAndOnDemandsApi->backups_automatic_and_on_demand_list_by_server_with_http_info: #{e}"
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

[**BackupAutomaticAndOnDemandList**](BackupAutomaticAndOnDemandList.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

