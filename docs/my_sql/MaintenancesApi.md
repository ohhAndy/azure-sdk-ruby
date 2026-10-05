# AzureRest::MaintenancesApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**maintenances_list**](MaintenancesApi.md#maintenances_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/flexibleServers/{serverName}/maintenances |  |
| [**maintenances_read**](MaintenancesApi.md#maintenances_read) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/flexibleServers/{serverName}/maintenances/{maintenanceName} |  |
| [**maintenances_update**](MaintenancesApi.md#maintenances_update) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/flexibleServers/{serverName}/maintenances/{maintenanceName} |  |


## maintenances_list

> <MaintenanceListResult> maintenances_list(api_version, subscription_id, resource_group_name, server_name)



List maintenances.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::MaintenancesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.

begin
  
  result = api_instance.maintenances_list(api_version, subscription_id, resource_group_name, server_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling MaintenancesApi->maintenances_list: #{e}"
end
```

#### Using the maintenances_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MaintenanceListResult>, Integer, Hash)> maintenances_list_with_http_info(api_version, subscription_id, resource_group_name, server_name)

```ruby
begin
  
  data, status_code, headers = api_instance.maintenances_list_with_http_info(api_version, subscription_id, resource_group_name, server_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MaintenanceListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling MaintenancesApi->maintenances_list_with_http_info: #{e}"
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

[**MaintenanceListResult**](MaintenanceListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## maintenances_read

> <Maintenance> maintenances_read(api_version, subscription_id, resource_group_name, server_name, maintenance_name)



Read maintenance.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::MaintenancesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.
maintenance_name = 'maintenance_name_example' # String | The name of the maintenance.

begin
  
  result = api_instance.maintenances_read(api_version, subscription_id, resource_group_name, server_name, maintenance_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling MaintenancesApi->maintenances_read: #{e}"
end
```

#### Using the maintenances_read_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Maintenance>, Integer, Hash)> maintenances_read_with_http_info(api_version, subscription_id, resource_group_name, server_name, maintenance_name)

```ruby
begin
  
  data, status_code, headers = api_instance.maintenances_read_with_http_info(api_version, subscription_id, resource_group_name, server_name, maintenance_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Maintenance>
rescue AzureRest::ApiError => e
  puts "Error when calling MaintenancesApi->maintenances_read_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **maintenance_name** | **String** | The name of the maintenance. |  |

### Return type

[**Maintenance**](Maintenance.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## maintenances_update

> <Maintenance> maintenances_update(api_version, subscription_id, resource_group_name, server_name, maintenance_name, opts)



Update maintenances.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::MaintenancesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.
maintenance_name = 'maintenance_name_example' # String | The name of the maintenance.
opts = {
  parameters: AzureRest::MaintenanceUpdate.new # MaintenanceUpdate | The required parameters for update maintenance on a server.
}

begin
  
  result = api_instance.maintenances_update(api_version, subscription_id, resource_group_name, server_name, maintenance_name, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling MaintenancesApi->maintenances_update: #{e}"
end
```

#### Using the maintenances_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Maintenance>, Integer, Hash)> maintenances_update_with_http_info(api_version, subscription_id, resource_group_name, server_name, maintenance_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.maintenances_update_with_http_info(api_version, subscription_id, resource_group_name, server_name, maintenance_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Maintenance>
rescue AzureRest::ApiError => e
  puts "Error when calling MaintenancesApi->maintenances_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **maintenance_name** | **String** | The name of the maintenance. |  |
| **parameters** | [**MaintenanceUpdate**](MaintenanceUpdate.md) | The required parameters for update maintenance on a server. | [optional] |

### Return type

[**Maintenance**](Maintenance.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

