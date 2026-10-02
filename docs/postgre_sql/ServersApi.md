# AzureSDK::ServersApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**backups_long_term_retention_check_prerequisites**](ServersApi.md#backups_long_term_retention_check_prerequisites) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/flexibleServers/{serverName}/ltrPreBackup |  |
| [**backups_long_term_retention_start**](ServersApi.md#backups_long_term_retention_start) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/flexibleServers/{serverName}/startLtrBackup |  |
| [**capabilities_by_server_list**](ServersApi.md#capabilities_by_server_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/flexibleServers/{serverName}/capabilities |  |
| [**captured_logs_list_by_server**](ServersApi.md#captured_logs_list_by_server) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/flexibleServers/{serverName}/logFiles |  |
| [**migrations_check_name_availability**](ServersApi.md#migrations_check_name_availability) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/flexibleServers/{serverName}/checkMigrationNameAvailability | Check the validity and availability of the given name, to assign it to a new migration. |
| [**replicas_list_by_server**](ServersApi.md#replicas_list_by_server) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/flexibleServers/{serverName}/replicas |  |
| [**servers_create_or_update**](ServersApi.md#servers_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/flexibleServers/{serverName} |  |
| [**servers_delete**](ServersApi.md#servers_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/flexibleServers/{serverName} |  |
| [**servers_get**](ServersApi.md#servers_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/flexibleServers/{serverName} |  |
| [**servers_list_by_resource_group**](ServersApi.md#servers_list_by_resource_group) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/flexibleServers |  |
| [**servers_list_by_subscription**](ServersApi.md#servers_list_by_subscription) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.DBforPostgreSQL/flexibleServers |  |
| [**servers_restart**](ServersApi.md#servers_restart) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/flexibleServers/{serverName}/restart |  |
| [**servers_start**](ServersApi.md#servers_start) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/flexibleServers/{serverName}/start |  |
| [**servers_stop**](ServersApi.md#servers_stop) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/flexibleServers/{serverName}/stop |  |
| [**servers_update**](ServersApi.md#servers_update) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/flexibleServers/{serverName} |  |


## backups_long_term_retention_check_prerequisites

> <LtrPreBackupResponse> backups_long_term_retention_check_prerequisites(api_version, subscription_id, resource_group_name, server_name, parameters)



Performs all checks required for a long term retention backup operation to succeed.

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
parameters = AzureSDK::LtrPreBackupRequest.new({backup_settings: AzureSDK::BackupSettings.new({backup_name: 'backup_name_example'})}) # LtrPreBackupRequest | Request body for operation

begin
  
  result = api_instance.backups_long_term_retention_check_prerequisites(api_version, subscription_id, resource_group_name, server_name, parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ServersApi->backups_long_term_retention_check_prerequisites: #{e}"
end
```

#### Using the backups_long_term_retention_check_prerequisites_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LtrPreBackupResponse>, Integer, Hash)> backups_long_term_retention_check_prerequisites_with_http_info(api_version, subscription_id, resource_group_name, server_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.backups_long_term_retention_check_prerequisites_with_http_info(api_version, subscription_id, resource_group_name, server_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LtrPreBackupResponse>
rescue AzureSDK::ApiError => e
  puts "Error when calling ServersApi->backups_long_term_retention_check_prerequisites_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **parameters** | [**LtrPreBackupRequest**](LtrPreBackupRequest.md) | Request body for operation |  |

### Return type

[**LtrPreBackupResponse**](LtrPreBackupResponse.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## backups_long_term_retention_start

> <BackupsLongTermRetentionResponse> backups_long_term_retention_start(api_version, subscription_id, resource_group_name, server_name, parameters)



Initiates a long term retention backup.

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
parameters = AzureSDK::BackupsLongTermRetentionRequest.new({backup_settings: AzureSDK::BackupSettings.new({backup_name: 'backup_name_example'}), target_details: AzureSDK::BackupStoreDetails.new({sas_uri_list: ['sas_uri_list_example']})}) # BackupsLongTermRetentionRequest | Request body for operation

begin
  
  result = api_instance.backups_long_term_retention_start(api_version, subscription_id, resource_group_name, server_name, parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ServersApi->backups_long_term_retention_start: #{e}"
end
```

#### Using the backups_long_term_retention_start_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BackupsLongTermRetentionResponse>, Integer, Hash)> backups_long_term_retention_start_with_http_info(api_version, subscription_id, resource_group_name, server_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.backups_long_term_retention_start_with_http_info(api_version, subscription_id, resource_group_name, server_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BackupsLongTermRetentionResponse>
rescue AzureSDK::ApiError => e
  puts "Error when calling ServersApi->backups_long_term_retention_start_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **parameters** | [**BackupsLongTermRetentionRequest**](BackupsLongTermRetentionRequest.md) | Request body for operation |  |

### Return type

[**BackupsLongTermRetentionResponse**](BackupsLongTermRetentionResponse.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## capabilities_by_server_list

> <CapabilityList> capabilities_by_server_list(api_version, subscription_id, resource_group_name, server_name)



Lists the capabilities available for a given server.

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
  
  result = api_instance.capabilities_by_server_list(api_version, subscription_id, resource_group_name, server_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ServersApi->capabilities_by_server_list: #{e}"
end
```

#### Using the capabilities_by_server_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapabilityList>, Integer, Hash)> capabilities_by_server_list_with_http_info(api_version, subscription_id, resource_group_name, server_name)

```ruby
begin
  
  data, status_code, headers = api_instance.capabilities_by_server_list_with_http_info(api_version, subscription_id, resource_group_name, server_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapabilityList>
rescue AzureSDK::ApiError => e
  puts "Error when calling ServersApi->capabilities_by_server_list_with_http_info: #{e}"
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

[**CapabilityList**](CapabilityList.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## captured_logs_list_by_server

> <CapturedLogList> captured_logs_list_by_server(api_version, subscription_id, resource_group_name, server_name)



Lists all captured logs for download in a server.

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
  
  result = api_instance.captured_logs_list_by_server(api_version, subscription_id, resource_group_name, server_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ServersApi->captured_logs_list_by_server: #{e}"
end
```

#### Using the captured_logs_list_by_server_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapturedLogList>, Integer, Hash)> captured_logs_list_by_server_with_http_info(api_version, subscription_id, resource_group_name, server_name)

```ruby
begin
  
  data, status_code, headers = api_instance.captured_logs_list_by_server_with_http_info(api_version, subscription_id, resource_group_name, server_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapturedLogList>
rescue AzureSDK::ApiError => e
  puts "Error when calling ServersApi->captured_logs_list_by_server_with_http_info: #{e}"
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

[**CapturedLogList**](CapturedLogList.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## migrations_check_name_availability

> <MigrationNameAvailability> migrations_check_name_availability(api_version, subscription_id, resource_group_name, server_name, parameters)

Check the validity and availability of the given name, to assign it to a new migration.

Checks if a proposed migration name is valid and available.

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
parameters = AzureSDK::MigrationNameAvailability.new({name: 'name_example', type: 'type_example'}) # MigrationNameAvailability | Parameters required to check if a migration name is valid and available.

begin
  # Check the validity and availability of the given name, to assign it to a new migration.
  result = api_instance.migrations_check_name_availability(api_version, subscription_id, resource_group_name, server_name, parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ServersApi->migrations_check_name_availability: #{e}"
end
```

#### Using the migrations_check_name_availability_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MigrationNameAvailability>, Integer, Hash)> migrations_check_name_availability_with_http_info(api_version, subscription_id, resource_group_name, server_name, parameters)

```ruby
begin
  # Check the validity and availability of the given name, to assign it to a new migration.
  data, status_code, headers = api_instance.migrations_check_name_availability_with_http_info(api_version, subscription_id, resource_group_name, server_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MigrationNameAvailability>
rescue AzureSDK::ApiError => e
  puts "Error when calling ServersApi->migrations_check_name_availability_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **parameters** | [**MigrationNameAvailability**](MigrationNameAvailability.md) | Parameters required to check if a migration name is valid and available. |  |

### Return type

[**MigrationNameAvailability**](MigrationNameAvailability.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## replicas_list_by_server

> <ServerList> replicas_list_by_server(api_version, subscription_id, resource_group_name, server_name)



Lists all read replicas of a server.

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
  
  result = api_instance.replicas_list_by_server(api_version, subscription_id, resource_group_name, server_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ServersApi->replicas_list_by_server: #{e}"
end
```

#### Using the replicas_list_by_server_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServerList>, Integer, Hash)> replicas_list_by_server_with_http_info(api_version, subscription_id, resource_group_name, server_name)

```ruby
begin
  
  data, status_code, headers = api_instance.replicas_list_by_server_with_http_info(api_version, subscription_id, resource_group_name, server_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServerList>
rescue AzureSDK::ApiError => e
  puts "Error when calling ServersApi->replicas_list_by_server_with_http_info: #{e}"
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

[**ServerList**](ServerList.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## servers_create_or_update

> servers_create_or_update(api_version, subscription_id, resource_group_name, server_name, parameters)



Creates a new server.

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
parameters = AzureSDK::Server.new({location: 'location_example'}) # Server | Parameters required to create a new server or to update an existing server.

begin
  
  api_instance.servers_create_or_update(api_version, subscription_id, resource_group_name, server_name, parameters)
rescue AzureSDK::ApiError => e
  puts "Error when calling ServersApi->servers_create_or_update: #{e}"
end
```

#### Using the servers_create_or_update_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> servers_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, server_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.servers_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, server_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
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
| **parameters** | [**Server**](Server.md) | Parameters required to create a new server or to update an existing server. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## servers_delete

> servers_delete(api_version, subscription_id, resource_group_name, server_name)



Deletes or drops an existing server.

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

> <Server> servers_get(api_version, subscription_id, resource_group_name, server_name)



Gets information about an existing server.

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
  
  result = api_instance.servers_get(api_version, subscription_id, resource_group_name, server_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ServersApi->servers_get: #{e}"
end
```

#### Using the servers_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Server>, Integer, Hash)> servers_get_with_http_info(api_version, subscription_id, resource_group_name, server_name)

```ruby
begin
  
  data, status_code, headers = api_instance.servers_get_with_http_info(api_version, subscription_id, resource_group_name, server_name)
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

### Return type

[**Server**](Server.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## servers_list_by_resource_group

> <ServerList> servers_list_by_resource_group(api_version, subscription_id, resource_group_name)



Lists all servers in a resource group.

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

begin
  
  result = api_instance.servers_list_by_resource_group(api_version, subscription_id, resource_group_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ServersApi->servers_list_by_resource_group: #{e}"
end
```

#### Using the servers_list_by_resource_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServerList>, Integer, Hash)> servers_list_by_resource_group_with_http_info(api_version, subscription_id, resource_group_name)

```ruby
begin
  
  data, status_code, headers = api_instance.servers_list_by_resource_group_with_http_info(api_version, subscription_id, resource_group_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServerList>
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

### Return type

[**ServerList**](ServerList.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## servers_list_by_subscription

> <ServerList> servers_list_by_subscription(api_version, subscription_id)



Lists all servers in a subscription.

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

begin
  
  result = api_instance.servers_list_by_subscription(api_version, subscription_id)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ServersApi->servers_list_by_subscription: #{e}"
end
```

#### Using the servers_list_by_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServerList>, Integer, Hash)> servers_list_by_subscription_with_http_info(api_version, subscription_id)

```ruby
begin
  
  data, status_code, headers = api_instance.servers_list_by_subscription_with_http_info(api_version, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServerList>
rescue AzureSDK::ApiError => e
  puts "Error when calling ServersApi->servers_list_by_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |

### Return type

[**ServerList**](ServerList.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## servers_restart

> servers_restart(api_version, subscription_id, resource_group_name, server_name, opts)



Restarts PostgreSQL database engine in a server.

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
  parameters: AzureSDK::RestartParameter.new # RestartParameter | Parameters to restart a server.
}

begin
  
  api_instance.servers_restart(api_version, subscription_id, resource_group_name, server_name, opts)
rescue AzureSDK::ApiError => e
  puts "Error when calling ServersApi->servers_restart: #{e}"
end
```

#### Using the servers_restart_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> servers_restart_with_http_info(api_version, subscription_id, resource_group_name, server_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.servers_restart_with_http_info(api_version, subscription_id, resource_group_name, server_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling ServersApi->servers_restart_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **parameters** | [**RestartParameter**](RestartParameter.md) | Parameters to restart a server. | [optional] |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## servers_start

> servers_start(api_version, subscription_id, resource_group_name, server_name)



Starts a stopped server.

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
  
  api_instance.servers_start(api_version, subscription_id, resource_group_name, server_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling ServersApi->servers_start: #{e}"
end
```

#### Using the servers_start_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> servers_start_with_http_info(api_version, subscription_id, resource_group_name, server_name)

```ruby
begin
  
  data, status_code, headers = api_instance.servers_start_with_http_info(api_version, subscription_id, resource_group_name, server_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling ServersApi->servers_start_with_http_info: #{e}"
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


## servers_stop

> servers_stop(api_version, subscription_id, resource_group_name, server_name)



Stops a server.

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
  
  api_instance.servers_stop(api_version, subscription_id, resource_group_name, server_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling ServersApi->servers_stop: #{e}"
end
```

#### Using the servers_stop_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> servers_stop_with_http_info(api_version, subscription_id, resource_group_name, server_name)

```ruby
begin
  
  data, status_code, headers = api_instance.servers_stop_with_http_info(api_version, subscription_id, resource_group_name, server_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling ServersApi->servers_stop_with_http_info: #{e}"
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


## servers_update

> servers_update(api_version, subscription_id, resource_group_name, server_name, parameters)



Updates an existing server. The request body can contain one or multiple of the properties present in the normal server definition.

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
parameters = AzureSDK::ServerForPatch.new # ServerForPatch | Parameters required to update a server.

begin
  
  api_instance.servers_update(api_version, subscription_id, resource_group_name, server_name, parameters)
rescue AzureSDK::ApiError => e
  puts "Error when calling ServersApi->servers_update: #{e}"
end
```

#### Using the servers_update_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> servers_update_with_http_info(api_version, subscription_id, resource_group_name, server_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.servers_update_with_http_info(api_version, subscription_id, resource_group_name, server_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
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
| **parameters** | [**ServerForPatch**](ServerForPatch.md) | Parameters required to update a server. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

