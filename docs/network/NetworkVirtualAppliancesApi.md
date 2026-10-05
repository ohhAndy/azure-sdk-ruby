# AzureRest::NetworkVirtualAppliancesApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**network_virtual_appliances_abort_migration**](NetworkVirtualAppliancesApi.md#network_virtual_appliances_abort_migration) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkVirtualAppliances/{networkVirtualApplianceName}/abortMigration |  |
| [**network_virtual_appliances_commit_migration**](NetworkVirtualAppliancesApi.md#network_virtual_appliances_commit_migration) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkVirtualAppliances/{networkVirtualApplianceName}/commitMigration |  |
| [**network_virtual_appliances_create_or_update**](NetworkVirtualAppliancesApi.md#network_virtual_appliances_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkVirtualAppliances/{networkVirtualApplianceName} |  |
| [**network_virtual_appliances_delete**](NetworkVirtualAppliancesApi.md#network_virtual_appliances_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkVirtualAppliances/{networkVirtualApplianceName} |  |
| [**network_virtual_appliances_execute_migration**](NetworkVirtualAppliancesApi.md#network_virtual_appliances_execute_migration) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkVirtualAppliances/{networkVirtualApplianceName}/executeMigration |  |
| [**network_virtual_appliances_get**](NetworkVirtualAppliancesApi.md#network_virtual_appliances_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkVirtualAppliances/{networkVirtualApplianceName} |  |
| [**network_virtual_appliances_get_boot_diagnostic_logs**](NetworkVirtualAppliancesApi.md#network_virtual_appliances_get_boot_diagnostic_logs) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkVirtualAppliances/{networkVirtualApplianceName}/getBootDiagnosticLogs |  |
| [**network_virtual_appliances_list**](NetworkVirtualAppliancesApi.md#network_virtual_appliances_list) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Network/networkVirtualAppliances |  |
| [**network_virtual_appliances_list_by_resource_group**](NetworkVirtualAppliancesApi.md#network_virtual_appliances_list_by_resource_group) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkVirtualAppliances |  |
| [**network_virtual_appliances_prepare_migration**](NetworkVirtualAppliancesApi.md#network_virtual_appliances_prepare_migration) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkVirtualAppliances/{networkVirtualApplianceName}/prepareMigration |  |
| [**network_virtual_appliances_reimage**](NetworkVirtualAppliancesApi.md#network_virtual_appliances_reimage) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkVirtualAppliances/{networkVirtualApplianceName}/reimage |  |
| [**network_virtual_appliances_restart**](NetworkVirtualAppliancesApi.md#network_virtual_appliances_restart) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkVirtualAppliances/{networkVirtualApplianceName}/restart |  |
| [**network_virtual_appliances_update_tags**](NetworkVirtualAppliancesApi.md#network_virtual_appliances_update_tags) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkVirtualAppliances/{networkVirtualApplianceName} |  |


## network_virtual_appliances_abort_migration

> network_virtual_appliances_abort_migration(api_version, subscription_id, resource_group_name, network_virtual_appliance_name)



Aborts an in-progress migration of the specified Network Virtual Appliance and rolls back to the previous state.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::NetworkVirtualAppliancesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_virtual_appliance_name = 'network_virtual_appliance_name_example' # String | The name of Network Virtual Appliance.

begin
  
  api_instance.network_virtual_appliances_abort_migration(api_version, subscription_id, resource_group_name, network_virtual_appliance_name)
rescue AzureRest::ApiError => e
  puts "Error when calling NetworkVirtualAppliancesApi->network_virtual_appliances_abort_migration: #{e}"
end
```

#### Using the network_virtual_appliances_abort_migration_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> network_virtual_appliances_abort_migration_with_http_info(api_version, subscription_id, resource_group_name, network_virtual_appliance_name)

```ruby
begin
  
  data, status_code, headers = api_instance.network_virtual_appliances_abort_migration_with_http_info(api_version, subscription_id, resource_group_name, network_virtual_appliance_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling NetworkVirtualAppliancesApi->network_virtual_appliances_abort_migration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_virtual_appliance_name** | **String** | The name of Network Virtual Appliance. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## network_virtual_appliances_commit_migration

> network_virtual_appliances_commit_migration(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, body)



Commits the migration of the specified Network Virtual Appliance. This finalizes a previously executed migration workflow.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::NetworkVirtualAppliancesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_virtual_appliance_name = 'network_virtual_appliance_name_example' # String | The name of Network Virtual Appliance.
body = AzureRest::NetworkVirtualApplianceCommitMigrationRequest.new # NetworkVirtualApplianceCommitMigrationRequest | Parameters supplied to commit the migration of the Network Virtual Appliance.

begin
  
  api_instance.network_virtual_appliances_commit_migration(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, body)
rescue AzureRest::ApiError => e
  puts "Error when calling NetworkVirtualAppliancesApi->network_virtual_appliances_commit_migration: #{e}"
end
```

#### Using the network_virtual_appliances_commit_migration_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> network_virtual_appliances_commit_migration_with_http_info(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, body)

```ruby
begin
  
  data, status_code, headers = api_instance.network_virtual_appliances_commit_migration_with_http_info(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling NetworkVirtualAppliancesApi->network_virtual_appliances_commit_migration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_virtual_appliance_name** | **String** | The name of Network Virtual Appliance. |  |
| **body** | [**NetworkVirtualApplianceCommitMigrationRequest**](NetworkVirtualApplianceCommitMigrationRequest.md) | Parameters supplied to commit the migration of the Network Virtual Appliance. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## network_virtual_appliances_create_or_update

> <NetworkVirtualAppliance> network_virtual_appliances_create_or_update(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, parameters)



Creates or updates the specified Network Virtual Appliance.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::NetworkVirtualAppliancesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_virtual_appliance_name = 'network_virtual_appliance_name_example' # String | The name of Network Virtual Appliance.
parameters = AzureRest::NetworkVirtualAppliance.new # NetworkVirtualAppliance | Parameters supplied to the create or update Network Virtual Appliance.

begin
  
  result = api_instance.network_virtual_appliances_create_or_update(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling NetworkVirtualAppliancesApi->network_virtual_appliances_create_or_update: #{e}"
end
```

#### Using the network_virtual_appliances_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkVirtualAppliance>, Integer, Hash)> network_virtual_appliances_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.network_virtual_appliances_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkVirtualAppliance>
rescue AzureRest::ApiError => e
  puts "Error when calling NetworkVirtualAppliancesApi->network_virtual_appliances_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_virtual_appliance_name** | **String** | The name of Network Virtual Appliance. |  |
| **parameters** | [**NetworkVirtualAppliance**](NetworkVirtualAppliance.md) | Parameters supplied to the create or update Network Virtual Appliance. |  |

### Return type

[**NetworkVirtualAppliance**](NetworkVirtualAppliance.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## network_virtual_appliances_delete

> network_virtual_appliances_delete(api_version, subscription_id, resource_group_name, network_virtual_appliance_name)



Deletes the specified Network Virtual Appliance.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::NetworkVirtualAppliancesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_virtual_appliance_name = 'network_virtual_appliance_name_example' # String | The name of Network Virtual Appliance.

begin
  
  api_instance.network_virtual_appliances_delete(api_version, subscription_id, resource_group_name, network_virtual_appliance_name)
rescue AzureRest::ApiError => e
  puts "Error when calling NetworkVirtualAppliancesApi->network_virtual_appliances_delete: #{e}"
end
```

#### Using the network_virtual_appliances_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> network_virtual_appliances_delete_with_http_info(api_version, subscription_id, resource_group_name, network_virtual_appliance_name)

```ruby
begin
  
  data, status_code, headers = api_instance.network_virtual_appliances_delete_with_http_info(api_version, subscription_id, resource_group_name, network_virtual_appliance_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling NetworkVirtualAppliancesApi->network_virtual_appliances_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_virtual_appliance_name** | **String** | The name of Network Virtual Appliance. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## network_virtual_appliances_execute_migration

> network_virtual_appliances_execute_migration(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, body)



Executes the migration of the specified Network Virtual Appliance. This step performs the migration workflow that was previously prepared.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::NetworkVirtualAppliancesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_virtual_appliance_name = 'network_virtual_appliance_name_example' # String | The name of Network Virtual Appliance.
body = AzureRest::NetworkVirtualApplianceExecuteMigrationRequest.new # NetworkVirtualApplianceExecuteMigrationRequest | Parameters supplied to execute the migration of the Network Virtual Appliance.

begin
  
  api_instance.network_virtual_appliances_execute_migration(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, body)
rescue AzureRest::ApiError => e
  puts "Error when calling NetworkVirtualAppliancesApi->network_virtual_appliances_execute_migration: #{e}"
end
```

#### Using the network_virtual_appliances_execute_migration_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> network_virtual_appliances_execute_migration_with_http_info(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, body)

```ruby
begin
  
  data, status_code, headers = api_instance.network_virtual_appliances_execute_migration_with_http_info(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling NetworkVirtualAppliancesApi->network_virtual_appliances_execute_migration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_virtual_appliance_name** | **String** | The name of Network Virtual Appliance. |  |
| **body** | [**NetworkVirtualApplianceExecuteMigrationRequest**](NetworkVirtualApplianceExecuteMigrationRequest.md) | Parameters supplied to execute the migration of the Network Virtual Appliance. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## network_virtual_appliances_get

> <NetworkVirtualAppliance> network_virtual_appliances_get(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, opts)



Gets the specified Network Virtual Appliance.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::NetworkVirtualAppliancesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_virtual_appliance_name = 'network_virtual_appliance_name_example' # String | The name of Network Virtual Appliance.
opts = {
  expand: 'expand_example' # String | Expands referenced resources.
}

begin
  
  result = api_instance.network_virtual_appliances_get(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling NetworkVirtualAppliancesApi->network_virtual_appliances_get: #{e}"
end
```

#### Using the network_virtual_appliances_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkVirtualAppliance>, Integer, Hash)> network_virtual_appliances_get_with_http_info(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.network_virtual_appliances_get_with_http_info(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkVirtualAppliance>
rescue AzureRest::ApiError => e
  puts "Error when calling NetworkVirtualAppliancesApi->network_virtual_appliances_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_virtual_appliance_name** | **String** | The name of Network Virtual Appliance. |  |
| **expand** | **String** | Expands referenced resources. | [optional] |

### Return type

[**NetworkVirtualAppliance**](NetworkVirtualAppliance.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## network_virtual_appliances_get_boot_diagnostic_logs

> <NetworkVirtualApplianceInstanceId> network_virtual_appliances_get_boot_diagnostic_logs(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, request)



Retrieves the boot diagnostic logs for a VM instance belonging to the specified Network Virtual Appliance.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::NetworkVirtualAppliancesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_virtual_appliance_name = 'network_virtual_appliance_name_example' # String | The name of Network Virtual Appliance.
request = AzureRest::NetworkVirtualApplianceBootDiagnosticParameters.new # NetworkVirtualApplianceBootDiagnosticParameters | Parameters supplied to retrieve boot diagnostic logs for a NVA VM instance

begin
  
  result = api_instance.network_virtual_appliances_get_boot_diagnostic_logs(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, request)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling NetworkVirtualAppliancesApi->network_virtual_appliances_get_boot_diagnostic_logs: #{e}"
end
```

#### Using the network_virtual_appliances_get_boot_diagnostic_logs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkVirtualApplianceInstanceId>, Integer, Hash)> network_virtual_appliances_get_boot_diagnostic_logs_with_http_info(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, request)

```ruby
begin
  
  data, status_code, headers = api_instance.network_virtual_appliances_get_boot_diagnostic_logs_with_http_info(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkVirtualApplianceInstanceId>
rescue AzureRest::ApiError => e
  puts "Error when calling NetworkVirtualAppliancesApi->network_virtual_appliances_get_boot_diagnostic_logs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_virtual_appliance_name** | **String** | The name of Network Virtual Appliance. |  |
| **request** | [**NetworkVirtualApplianceBootDiagnosticParameters**](NetworkVirtualApplianceBootDiagnosticParameters.md) | Parameters supplied to retrieve boot diagnostic logs for a NVA VM instance |  |

### Return type

[**NetworkVirtualApplianceInstanceId**](NetworkVirtualApplianceInstanceId.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## network_virtual_appliances_list

> <NetworkVirtualApplianceListResult> network_virtual_appliances_list(api_version, subscription_id)



Gets all Network Virtual Appliances in a subscription.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::NetworkVirtualAppliancesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.

begin
  
  result = api_instance.network_virtual_appliances_list(api_version, subscription_id)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling NetworkVirtualAppliancesApi->network_virtual_appliances_list: #{e}"
end
```

#### Using the network_virtual_appliances_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkVirtualApplianceListResult>, Integer, Hash)> network_virtual_appliances_list_with_http_info(api_version, subscription_id)

```ruby
begin
  
  data, status_code, headers = api_instance.network_virtual_appliances_list_with_http_info(api_version, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkVirtualApplianceListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling NetworkVirtualAppliancesApi->network_virtual_appliances_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |

### Return type

[**NetworkVirtualApplianceListResult**](NetworkVirtualApplianceListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## network_virtual_appliances_list_by_resource_group

> <NetworkVirtualApplianceListResult> network_virtual_appliances_list_by_resource_group(api_version, subscription_id, resource_group_name)



Lists all Network Virtual Appliances in a resource group.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::NetworkVirtualAppliancesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.

begin
  
  result = api_instance.network_virtual_appliances_list_by_resource_group(api_version, subscription_id, resource_group_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling NetworkVirtualAppliancesApi->network_virtual_appliances_list_by_resource_group: #{e}"
end
```

#### Using the network_virtual_appliances_list_by_resource_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkVirtualApplianceListResult>, Integer, Hash)> network_virtual_appliances_list_by_resource_group_with_http_info(api_version, subscription_id, resource_group_name)

```ruby
begin
  
  data, status_code, headers = api_instance.network_virtual_appliances_list_by_resource_group_with_http_info(api_version, subscription_id, resource_group_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkVirtualApplianceListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling NetworkVirtualAppliancesApi->network_virtual_appliances_list_by_resource_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |

### Return type

[**NetworkVirtualApplianceListResult**](NetworkVirtualApplianceListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## network_virtual_appliances_prepare_migration

> network_virtual_appliances_prepare_migration(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, body)



Prepares the migration of the specified Network Virtual Appliance. This is the first step of a migration workflow, such as migrating to a new OS version or to the new internal load balancer architecture.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::NetworkVirtualAppliancesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_virtual_appliance_name = 'network_virtual_appliance_name_example' # String | The name of Network Virtual Appliance.
body = AzureRest::NetworkVirtualAppliancePrepareMigrationRequest.new # NetworkVirtualAppliancePrepareMigrationRequest | Parameters supplied to prepare the migration of the Network Virtual Appliance.

begin
  
  api_instance.network_virtual_appliances_prepare_migration(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, body)
rescue AzureRest::ApiError => e
  puts "Error when calling NetworkVirtualAppliancesApi->network_virtual_appliances_prepare_migration: #{e}"
end
```

#### Using the network_virtual_appliances_prepare_migration_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> network_virtual_appliances_prepare_migration_with_http_info(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, body)

```ruby
begin
  
  data, status_code, headers = api_instance.network_virtual_appliances_prepare_migration_with_http_info(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling NetworkVirtualAppliancesApi->network_virtual_appliances_prepare_migration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_virtual_appliance_name** | **String** | The name of Network Virtual Appliance. |  |
| **body** | [**NetworkVirtualAppliancePrepareMigrationRequest**](NetworkVirtualAppliancePrepareMigrationRequest.md) | Parameters supplied to prepare the migration of the Network Virtual Appliance. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## network_virtual_appliances_reimage

> <NetworkVirtualApplianceInstanceIds> network_virtual_appliances_reimage(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, opts)



Reimages one VM belonging to the specified Network Virtual Appliance.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::NetworkVirtualAppliancesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_virtual_appliance_name = 'network_virtual_appliance_name_example' # String | The name of Network Virtual Appliance.
opts = {
  network_virtual_appliance_instance_ids: AzureRest::NetworkVirtualApplianceInstanceIds.new # NetworkVirtualApplianceInstanceIds | Specifies a list of virtual machine instance IDs from the Network Virtual Appliance VM instances.
}

begin
  
  result = api_instance.network_virtual_appliances_reimage(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling NetworkVirtualAppliancesApi->network_virtual_appliances_reimage: #{e}"
end
```

#### Using the network_virtual_appliances_reimage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkVirtualApplianceInstanceIds>, Integer, Hash)> network_virtual_appliances_reimage_with_http_info(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.network_virtual_appliances_reimage_with_http_info(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkVirtualApplianceInstanceIds>
rescue AzureRest::ApiError => e
  puts "Error when calling NetworkVirtualAppliancesApi->network_virtual_appliances_reimage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_virtual_appliance_name** | **String** | The name of Network Virtual Appliance. |  |
| **network_virtual_appliance_instance_ids** | [**NetworkVirtualApplianceInstanceIds**](NetworkVirtualApplianceInstanceIds.md) | Specifies a list of virtual machine instance IDs from the Network Virtual Appliance VM instances. | [optional] |

### Return type

[**NetworkVirtualApplianceInstanceIds**](NetworkVirtualApplianceInstanceIds.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## network_virtual_appliances_restart

> <NetworkVirtualApplianceInstanceIds> network_virtual_appliances_restart(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, opts)



Restarts one or more VMs belonging to the specified Network Virtual Appliance.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::NetworkVirtualAppliancesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_virtual_appliance_name = 'network_virtual_appliance_name_example' # String | The name of Network Virtual Appliance.
opts = {
  network_virtual_appliance_instance_ids: AzureRest::NetworkVirtualApplianceInstanceIds.new # NetworkVirtualApplianceInstanceIds | Specifies a list of virtual machine instance IDs from the Network Virtual Appliance VM instances.
}

begin
  
  result = api_instance.network_virtual_appliances_restart(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling NetworkVirtualAppliancesApi->network_virtual_appliances_restart: #{e}"
end
```

#### Using the network_virtual_appliances_restart_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkVirtualApplianceInstanceIds>, Integer, Hash)> network_virtual_appliances_restart_with_http_info(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.network_virtual_appliances_restart_with_http_info(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkVirtualApplianceInstanceIds>
rescue AzureRest::ApiError => e
  puts "Error when calling NetworkVirtualAppliancesApi->network_virtual_appliances_restart_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_virtual_appliance_name** | **String** | The name of Network Virtual Appliance. |  |
| **network_virtual_appliance_instance_ids** | [**NetworkVirtualApplianceInstanceIds**](NetworkVirtualApplianceInstanceIds.md) | Specifies a list of virtual machine instance IDs from the Network Virtual Appliance VM instances. | [optional] |

### Return type

[**NetworkVirtualApplianceInstanceIds**](NetworkVirtualApplianceInstanceIds.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## network_virtual_appliances_update_tags

> <NetworkVirtualAppliance> network_virtual_appliances_update_tags(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, parameters)



Updates a Network Virtual Appliance.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::NetworkVirtualAppliancesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_virtual_appliance_name = 'network_virtual_appliance_name_example' # String | The name of Network Virtual Appliance.
parameters = AzureRest::TagsObject.new # TagsObject | Parameters supplied to Update Network Virtual Appliance Tags.

begin
  
  result = api_instance.network_virtual_appliances_update_tags(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling NetworkVirtualAppliancesApi->network_virtual_appliances_update_tags: #{e}"
end
```

#### Using the network_virtual_appliances_update_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkVirtualAppliance>, Integer, Hash)> network_virtual_appliances_update_tags_with_http_info(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.network_virtual_appliances_update_tags_with_http_info(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkVirtualAppliance>
rescue AzureRest::ApiError => e
  puts "Error when calling NetworkVirtualAppliancesApi->network_virtual_appliances_update_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_virtual_appliance_name** | **String** | The name of Network Virtual Appliance. |  |
| **parameters** | [**TagsObject**](TagsObject.md) | Parameters supplied to Update Network Virtual Appliance Tags. |  |

### Return type

[**NetworkVirtualAppliance**](NetworkVirtualAppliance.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

