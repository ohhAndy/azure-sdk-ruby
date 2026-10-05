# AzureRest::MachinesApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**machines_get**](MachinesApi.md#machines_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/agentPools/{agentPoolName}/machines/{machineName} |  |
| [**machines_list**](MachinesApi.md#machines_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/agentPools/{agentPoolName}/machines |  |


## machines_get

> <Machine> machines_get(api_version, subscription_id, resource_group_name, resource_name, agent_pool_name, machine_name)



Get a specific machine in the specified agent pool.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::MachinesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.
agent_pool_name = 'agent_pool_name_example' # String | The name of the agent pool.
machine_name = 'machine_name_example' # String | Host name of the machine.

begin
  
  result = api_instance.machines_get(api_version, subscription_id, resource_group_name, resource_name, agent_pool_name, machine_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling MachinesApi->machines_get: #{e}"
end
```

#### Using the machines_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Machine>, Integer, Hash)> machines_get_with_http_info(api_version, subscription_id, resource_group_name, resource_name, agent_pool_name, machine_name)

```ruby
begin
  
  data, status_code, headers = api_instance.machines_get_with_http_info(api_version, subscription_id, resource_group_name, resource_name, agent_pool_name, machine_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Machine>
rescue AzureRest::ApiError => e
  puts "Error when calling MachinesApi->machines_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **resource_name** | **String** | The name of the managed cluster resource. |  |
| **agent_pool_name** | **String** | The name of the agent pool. |  |
| **machine_name** | **String** | Host name of the machine. |  |

### Return type

[**Machine**](Machine.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## machines_list

> <MachineListResult> machines_list(api_version, subscription_id, resource_group_name, resource_name, agent_pool_name)



Gets a list of machines in the specified agent pool.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::MachinesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.
agent_pool_name = 'agent_pool_name_example' # String | The name of the agent pool.

begin
  
  result = api_instance.machines_list(api_version, subscription_id, resource_group_name, resource_name, agent_pool_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling MachinesApi->machines_list: #{e}"
end
```

#### Using the machines_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MachineListResult>, Integer, Hash)> machines_list_with_http_info(api_version, subscription_id, resource_group_name, resource_name, agent_pool_name)

```ruby
begin
  
  data, status_code, headers = api_instance.machines_list_with_http_info(api_version, subscription_id, resource_group_name, resource_name, agent_pool_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MachineListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling MachinesApi->machines_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **resource_name** | **String** | The name of the managed cluster resource. |  |
| **agent_pool_name** | **String** | The name of the agent pool. |  |

### Return type

[**MachineListResult**](MachineListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

