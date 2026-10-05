# AzureRest::MigrationsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**migrations_cancel**](MigrationsApi.md#migrations_cancel) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/flexibleServers/{serverName}/migrations/{migrationName} |  |
| [**migrations_create**](MigrationsApi.md#migrations_create) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/flexibleServers/{serverName}/migrations/{migrationName} |  |
| [**migrations_get**](MigrationsApi.md#migrations_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/flexibleServers/{serverName}/migrations/{migrationName} |  |
| [**migrations_list_by_target_server**](MigrationsApi.md#migrations_list_by_target_server) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/flexibleServers/{serverName}/migrations |  |
| [**migrations_update**](MigrationsApi.md#migrations_update) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/flexibleServers/{serverName}/migrations/{migrationName} |  |


## migrations_cancel

> <Migration> migrations_cancel(api_version, subscription_id, resource_group_name, server_name, migration_name)



Cancels an active migration.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::MigrationsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.
migration_name = 'migration_name_example' # String | Name of migration.

begin
  
  result = api_instance.migrations_cancel(api_version, subscription_id, resource_group_name, server_name, migration_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling MigrationsApi->migrations_cancel: #{e}"
end
```

#### Using the migrations_cancel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Migration>, Integer, Hash)> migrations_cancel_with_http_info(api_version, subscription_id, resource_group_name, server_name, migration_name)

```ruby
begin
  
  data, status_code, headers = api_instance.migrations_cancel_with_http_info(api_version, subscription_id, resource_group_name, server_name, migration_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Migration>
rescue AzureRest::ApiError => e
  puts "Error when calling MigrationsApi->migrations_cancel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **migration_name** | **String** | Name of migration. |  |

### Return type

[**Migration**](Migration.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## migrations_create

> <Migration> migrations_create(api_version, subscription_id, resource_group_name, server_name, migration_name, parameters)



Creates a new migration.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::MigrationsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.
migration_name = 'migration_name_example' # String | Name of migration.
parameters = AzureRest::Migration.new({location: 'location_example'}) # Migration | Parameters required for creating a migration.

begin
  
  result = api_instance.migrations_create(api_version, subscription_id, resource_group_name, server_name, migration_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling MigrationsApi->migrations_create: #{e}"
end
```

#### Using the migrations_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Migration>, Integer, Hash)> migrations_create_with_http_info(api_version, subscription_id, resource_group_name, server_name, migration_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.migrations_create_with_http_info(api_version, subscription_id, resource_group_name, server_name, migration_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Migration>
rescue AzureRest::ApiError => e
  puts "Error when calling MigrationsApi->migrations_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **migration_name** | **String** | Name of migration. |  |
| **parameters** | [**Migration**](Migration.md) | Parameters required for creating a migration. |  |

### Return type

[**Migration**](Migration.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## migrations_get

> <Migration> migrations_get(api_version, subscription_id, resource_group_name, server_name, migration_name)



Gets information about a migration.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::MigrationsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.
migration_name = 'migration_name_example' # String | Name of migration.

begin
  
  result = api_instance.migrations_get(api_version, subscription_id, resource_group_name, server_name, migration_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling MigrationsApi->migrations_get: #{e}"
end
```

#### Using the migrations_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Migration>, Integer, Hash)> migrations_get_with_http_info(api_version, subscription_id, resource_group_name, server_name, migration_name)

```ruby
begin
  
  data, status_code, headers = api_instance.migrations_get_with_http_info(api_version, subscription_id, resource_group_name, server_name, migration_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Migration>
rescue AzureRest::ApiError => e
  puts "Error when calling MigrationsApi->migrations_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **migration_name** | **String** | Name of migration. |  |

### Return type

[**Migration**](Migration.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## migrations_list_by_target_server

> <MigrationList> migrations_list_by_target_server(api_version, subscription_id, resource_group_name, server_name, opts)



Lists all migrations of a target flexible server.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::MigrationsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.
opts = {
  migration_list_filter: 'Active' # String | Migration list filter. Indicates if the request should retrieve only active migrations or all migrations. Defaults to Active.
}

begin
  
  result = api_instance.migrations_list_by_target_server(api_version, subscription_id, resource_group_name, server_name, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling MigrationsApi->migrations_list_by_target_server: #{e}"
end
```

#### Using the migrations_list_by_target_server_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MigrationList>, Integer, Hash)> migrations_list_by_target_server_with_http_info(api_version, subscription_id, resource_group_name, server_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.migrations_list_by_target_server_with_http_info(api_version, subscription_id, resource_group_name, server_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MigrationList>
rescue AzureRest::ApiError => e
  puts "Error when calling MigrationsApi->migrations_list_by_target_server_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **migration_list_filter** | **String** | Migration list filter. Indicates if the request should retrieve only active migrations or all migrations. Defaults to Active. | [optional] |

### Return type

[**MigrationList**](MigrationList.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## migrations_update

> <Migration> migrations_update(api_version, subscription_id, resource_group_name, server_name, migration_name, parameters)



Updates an existing migration. The request body can contain one to many of the mutable properties present in the migration definition. Certain property updates initiate migration state transitions.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::MigrationsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.
migration_name = 'migration_name_example' # String | Name of migration.
parameters = AzureRest::MigrationResourceForPatch.new # MigrationResourceForPatch | Parameters required to update an existing migration.

begin
  
  result = api_instance.migrations_update(api_version, subscription_id, resource_group_name, server_name, migration_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling MigrationsApi->migrations_update: #{e}"
end
```

#### Using the migrations_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Migration>, Integer, Hash)> migrations_update_with_http_info(api_version, subscription_id, resource_group_name, server_name, migration_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.migrations_update_with_http_info(api_version, subscription_id, resource_group_name, server_name, migration_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Migration>
rescue AzureRest::ApiError => e
  puts "Error when calling MigrationsApi->migrations_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **migration_name** | **String** | Name of migration. |  |
| **parameters** | [**MigrationResourceForPatch**](MigrationResourceForPatch.md) | Parameters required to update an existing migration. |  |

### Return type

[**Migration**](Migration.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

