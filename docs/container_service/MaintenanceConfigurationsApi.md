# AzureSDK::MaintenanceConfigurationsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**maintenance_configurations_create_or_update**](MaintenanceConfigurationsApi.md#maintenance_configurations_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/maintenanceConfigurations/{configName} |  |
| [**maintenance_configurations_delete**](MaintenanceConfigurationsApi.md#maintenance_configurations_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/maintenanceConfigurations/{configName} |  |
| [**maintenance_configurations_get**](MaintenanceConfigurationsApi.md#maintenance_configurations_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/maintenanceConfigurations/{configName} |  |
| [**maintenance_configurations_list_by_managed_cluster**](MaintenanceConfigurationsApi.md#maintenance_configurations_list_by_managed_cluster) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/maintenanceConfigurations |  |


## maintenance_configurations_create_or_update

> <MaintenanceConfiguration> maintenance_configurations_create_or_update(api_version, subscription_id, resource_group_name, resource_name, config_name, parameters)



Creates or updates a maintenance configuration in the specified managed cluster.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::MaintenanceConfigurationsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.
config_name = 'config_name_example' # String | The name of the maintenance configuration. Supported values are 'default', 'aksManagedAutoUpgradeSchedule', or 'aksManagedNodeOSUpgradeSchedule'.
parameters = AzureSDK::MaintenanceConfiguration.new # MaintenanceConfiguration | The maintenance configuration to create or update.

begin
  
  result = api_instance.maintenance_configurations_create_or_update(api_version, subscription_id, resource_group_name, resource_name, config_name, parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling MaintenanceConfigurationsApi->maintenance_configurations_create_or_update: #{e}"
end
```

#### Using the maintenance_configurations_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MaintenanceConfiguration>, Integer, Hash)> maintenance_configurations_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, resource_name, config_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.maintenance_configurations_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, resource_name, config_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MaintenanceConfiguration>
rescue AzureSDK::ApiError => e
  puts "Error when calling MaintenanceConfigurationsApi->maintenance_configurations_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **resource_name** | **String** | The name of the managed cluster resource. |  |
| **config_name** | **String** | The name of the maintenance configuration. Supported values are &#39;default&#39;, &#39;aksManagedAutoUpgradeSchedule&#39;, or &#39;aksManagedNodeOSUpgradeSchedule&#39;. |  |
| **parameters** | [**MaintenanceConfiguration**](MaintenanceConfiguration.md) | The maintenance configuration to create or update. |  |

### Return type

[**MaintenanceConfiguration**](MaintenanceConfiguration.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## maintenance_configurations_delete

> maintenance_configurations_delete(api_version, subscription_id, resource_group_name, resource_name, config_name)



Deletes a maintenance configuration.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::MaintenanceConfigurationsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.
config_name = 'config_name_example' # String | The name of the maintenance configuration. Supported values are 'default', 'aksManagedAutoUpgradeSchedule', or 'aksManagedNodeOSUpgradeSchedule'.

begin
  
  api_instance.maintenance_configurations_delete(api_version, subscription_id, resource_group_name, resource_name, config_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling MaintenanceConfigurationsApi->maintenance_configurations_delete: #{e}"
end
```

#### Using the maintenance_configurations_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> maintenance_configurations_delete_with_http_info(api_version, subscription_id, resource_group_name, resource_name, config_name)

```ruby
begin
  
  data, status_code, headers = api_instance.maintenance_configurations_delete_with_http_info(api_version, subscription_id, resource_group_name, resource_name, config_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling MaintenanceConfigurationsApi->maintenance_configurations_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **resource_name** | **String** | The name of the managed cluster resource. |  |
| **config_name** | **String** | The name of the maintenance configuration. Supported values are &#39;default&#39;, &#39;aksManagedAutoUpgradeSchedule&#39;, or &#39;aksManagedNodeOSUpgradeSchedule&#39;. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## maintenance_configurations_get

> <MaintenanceConfiguration> maintenance_configurations_get(api_version, subscription_id, resource_group_name, resource_name, config_name)



Gets the specified maintenance configuration of a managed cluster.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::MaintenanceConfigurationsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.
config_name = 'config_name_example' # String | The name of the maintenance configuration. Supported values are 'default', 'aksManagedAutoUpgradeSchedule', or 'aksManagedNodeOSUpgradeSchedule'.

begin
  
  result = api_instance.maintenance_configurations_get(api_version, subscription_id, resource_group_name, resource_name, config_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling MaintenanceConfigurationsApi->maintenance_configurations_get: #{e}"
end
```

#### Using the maintenance_configurations_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MaintenanceConfiguration>, Integer, Hash)> maintenance_configurations_get_with_http_info(api_version, subscription_id, resource_group_name, resource_name, config_name)

```ruby
begin
  
  data, status_code, headers = api_instance.maintenance_configurations_get_with_http_info(api_version, subscription_id, resource_group_name, resource_name, config_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MaintenanceConfiguration>
rescue AzureSDK::ApiError => e
  puts "Error when calling MaintenanceConfigurationsApi->maintenance_configurations_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **resource_name** | **String** | The name of the managed cluster resource. |  |
| **config_name** | **String** | The name of the maintenance configuration. Supported values are &#39;default&#39;, &#39;aksManagedAutoUpgradeSchedule&#39;, or &#39;aksManagedNodeOSUpgradeSchedule&#39;. |  |

### Return type

[**MaintenanceConfiguration**](MaintenanceConfiguration.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## maintenance_configurations_list_by_managed_cluster

> <MaintenanceConfigurationListResult> maintenance_configurations_list_by_managed_cluster(api_version, subscription_id, resource_group_name, resource_name)



Gets a list of maintenance configurations in the specified managed cluster.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::MaintenanceConfigurationsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.

begin
  
  result = api_instance.maintenance_configurations_list_by_managed_cluster(api_version, subscription_id, resource_group_name, resource_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling MaintenanceConfigurationsApi->maintenance_configurations_list_by_managed_cluster: #{e}"
end
```

#### Using the maintenance_configurations_list_by_managed_cluster_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MaintenanceConfigurationListResult>, Integer, Hash)> maintenance_configurations_list_by_managed_cluster_with_http_info(api_version, subscription_id, resource_group_name, resource_name)

```ruby
begin
  
  data, status_code, headers = api_instance.maintenance_configurations_list_by_managed_cluster_with_http_info(api_version, subscription_id, resource_group_name, resource_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MaintenanceConfigurationListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling MaintenanceConfigurationsApi->maintenance_configurations_list_by_managed_cluster_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **resource_name** | **String** | The name of the managed cluster resource. |  |

### Return type

[**MaintenanceConfigurationListResult**](MaintenanceConfigurationListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

