# AzureRest::AgentPoolsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**agent_pools_abort_latest_operation**](AgentPoolsApi.md#agent_pools_abort_latest_operation) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/agentPools/{agentPoolName}/abort | Aborts last operation running on agent pool. |
| [**agent_pools_create_or_update**](AgentPoolsApi.md#agent_pools_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/agentPools/{agentPoolName} |  |
| [**agent_pools_delete**](AgentPoolsApi.md#agent_pools_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/agentPools/{agentPoolName} |  |
| [**agent_pools_delete_machines**](AgentPoolsApi.md#agent_pools_delete_machines) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/agentPools/{agentPoolName}/deleteMachines |  |
| [**agent_pools_get**](AgentPoolsApi.md#agent_pools_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/agentPools/{agentPoolName} |  |
| [**agent_pools_get_available_agent_pool_versions**](AgentPoolsApi.md#agent_pools_get_available_agent_pool_versions) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/availableAgentPoolVersions | Gets a list of supported Kubernetes versions for the specified agent pool. |
| [**agent_pools_get_upgrade_profile**](AgentPoolsApi.md#agent_pools_get_upgrade_profile) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/agentPools/{agentPoolName}/upgradeProfiles/default |  |
| [**agent_pools_list**](AgentPoolsApi.md#agent_pools_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/agentPools |  |
| [**agent_pools_upgrade_node_image_version**](AgentPoolsApi.md#agent_pools_upgrade_node_image_version) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/agentPools/{agentPoolName}/upgradeNodeImageVersion | Upgrades the node image version of an agent pool to the latest. |


## agent_pools_abort_latest_operation

> agent_pools_abort_latest_operation(api_version, subscription_id, resource_group_name, resource_name, agent_pool_name)

Aborts last operation running on agent pool.

Aborts the currently running operation on the agent pool. The Agent Pool will be moved to a Canceling state and eventually to a Canceled state when cancellation finishes. If the operation completes before cancellation can take place, a 409 error code is returned.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::AgentPoolsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.
agent_pool_name = 'agent_pool_name_example' # String | The name of the agent pool.

begin
  # Aborts last operation running on agent pool.
  api_instance.agent_pools_abort_latest_operation(api_version, subscription_id, resource_group_name, resource_name, agent_pool_name)
rescue AzureRest::ApiError => e
  puts "Error when calling AgentPoolsApi->agent_pools_abort_latest_operation: #{e}"
end
```

#### Using the agent_pools_abort_latest_operation_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> agent_pools_abort_latest_operation_with_http_info(api_version, subscription_id, resource_group_name, resource_name, agent_pool_name)

```ruby
begin
  # Aborts last operation running on agent pool.
  data, status_code, headers = api_instance.agent_pools_abort_latest_operation_with_http_info(api_version, subscription_id, resource_group_name, resource_name, agent_pool_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling AgentPoolsApi->agent_pools_abort_latest_operation_with_http_info: #{e}"
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

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## agent_pools_create_or_update

> <AgentPool> agent_pools_create_or_update(api_version, subscription_id, resource_group_name, resource_name, agent_pool_name, parameters, opts)



Creates or updates an agent pool in the specified managed cluster.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::AgentPoolsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.
agent_pool_name = 'agent_pool_name_example' # String | The name of the agent pool.
parameters = AzureRest::AgentPool.new # AgentPool | The agent pool to create or update.
opts = {
  if_match: 'if_match_example', # String | The request should only proceed if an entity matches this string.
  if_none_match: 'if_none_match_example' # String | The request should only proceed if no entity matches this string.
}

begin
  
  result = api_instance.agent_pools_create_or_update(api_version, subscription_id, resource_group_name, resource_name, agent_pool_name, parameters, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling AgentPoolsApi->agent_pools_create_or_update: #{e}"
end
```

#### Using the agent_pools_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AgentPool>, Integer, Hash)> agent_pools_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, resource_name, agent_pool_name, parameters, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.agent_pools_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, resource_name, agent_pool_name, parameters, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AgentPool>
rescue AzureRest::ApiError => e
  puts "Error when calling AgentPoolsApi->agent_pools_create_or_update_with_http_info: #{e}"
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
| **parameters** | [**AgentPool**](AgentPool.md) | The agent pool to create or update. |  |
| **if_match** | **String** | The request should only proceed if an entity matches this string. | [optional] |
| **if_none_match** | **String** | The request should only proceed if no entity matches this string. | [optional] |

### Return type

[**AgentPool**](AgentPool.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## agent_pools_delete

> agent_pools_delete(api_version, subscription_id, resource_group_name, resource_name, agent_pool_name, opts)



Deletes an agent pool in the specified managed cluster.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::AgentPoolsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.
agent_pool_name = 'agent_pool_name_example' # String | The name of the agent pool.
opts = {
  ignore_pod_disruption_budget: true, # Boolean | ignore-pod-disruption-budget=true to delete those pods on a node without considering Pod Disruption Budget
  if_match: 'if_match_example' # String | The request should only proceed if an entity matches this string.
}

begin
  
  api_instance.agent_pools_delete(api_version, subscription_id, resource_group_name, resource_name, agent_pool_name, opts)
rescue AzureRest::ApiError => e
  puts "Error when calling AgentPoolsApi->agent_pools_delete: #{e}"
end
```

#### Using the agent_pools_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> agent_pools_delete_with_http_info(api_version, subscription_id, resource_group_name, resource_name, agent_pool_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.agent_pools_delete_with_http_info(api_version, subscription_id, resource_group_name, resource_name, agent_pool_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling AgentPoolsApi->agent_pools_delete_with_http_info: #{e}"
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
| **ignore_pod_disruption_budget** | **Boolean** | ignore-pod-disruption-budget&#x3D;true to delete those pods on a node without considering Pod Disruption Budget | [optional] |
| **if_match** | **String** | The request should only proceed if an entity matches this string. | [optional] |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## agent_pools_delete_machines

> agent_pools_delete_machines(api_version, subscription_id, resource_group_name, resource_name, agent_pool_name, machines)



Deletes specific machines in an agent pool.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::AgentPoolsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.
agent_pool_name = 'agent_pool_name_example' # String | The name of the agent pool.
machines = AzureRest::AgentPoolDeleteMachinesParameter.new({machine_names: ['machine_names_example']}) # AgentPoolDeleteMachinesParameter | A list of machines from the agent pool to be deleted.

begin
  
  api_instance.agent_pools_delete_machines(api_version, subscription_id, resource_group_name, resource_name, agent_pool_name, machines)
rescue AzureRest::ApiError => e
  puts "Error when calling AgentPoolsApi->agent_pools_delete_machines: #{e}"
end
```

#### Using the agent_pools_delete_machines_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> agent_pools_delete_machines_with_http_info(api_version, subscription_id, resource_group_name, resource_name, agent_pool_name, machines)

```ruby
begin
  
  data, status_code, headers = api_instance.agent_pools_delete_machines_with_http_info(api_version, subscription_id, resource_group_name, resource_name, agent_pool_name, machines)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling AgentPoolsApi->agent_pools_delete_machines_with_http_info: #{e}"
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
| **machines** | [**AgentPoolDeleteMachinesParameter**](AgentPoolDeleteMachinesParameter.md) | A list of machines from the agent pool to be deleted. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## agent_pools_get

> <AgentPool> agent_pools_get(api_version, subscription_id, resource_group_name, resource_name, agent_pool_name)



Gets the specified managed cluster agent pool.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::AgentPoolsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.
agent_pool_name = 'agent_pool_name_example' # String | The name of the agent pool.

begin
  
  result = api_instance.agent_pools_get(api_version, subscription_id, resource_group_name, resource_name, agent_pool_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling AgentPoolsApi->agent_pools_get: #{e}"
end
```

#### Using the agent_pools_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AgentPool>, Integer, Hash)> agent_pools_get_with_http_info(api_version, subscription_id, resource_group_name, resource_name, agent_pool_name)

```ruby
begin
  
  data, status_code, headers = api_instance.agent_pools_get_with_http_info(api_version, subscription_id, resource_group_name, resource_name, agent_pool_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AgentPool>
rescue AzureRest::ApiError => e
  puts "Error when calling AgentPoolsApi->agent_pools_get_with_http_info: #{e}"
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

[**AgentPool**](AgentPool.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## agent_pools_get_available_agent_pool_versions

> <AgentPoolAvailableVersions> agent_pools_get_available_agent_pool_versions(api_version, subscription_id, resource_group_name, resource_name)

Gets a list of supported Kubernetes versions for the specified agent pool.

See [supported Kubernetes versions](https://docs.microsoft.com/azure/aks/supported-kubernetes-versions) for more details about the version lifecycle.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::AgentPoolsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.

begin
  # Gets a list of supported Kubernetes versions for the specified agent pool.
  result = api_instance.agent_pools_get_available_agent_pool_versions(api_version, subscription_id, resource_group_name, resource_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling AgentPoolsApi->agent_pools_get_available_agent_pool_versions: #{e}"
end
```

#### Using the agent_pools_get_available_agent_pool_versions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AgentPoolAvailableVersions>, Integer, Hash)> agent_pools_get_available_agent_pool_versions_with_http_info(api_version, subscription_id, resource_group_name, resource_name)

```ruby
begin
  # Gets a list of supported Kubernetes versions for the specified agent pool.
  data, status_code, headers = api_instance.agent_pools_get_available_agent_pool_versions_with_http_info(api_version, subscription_id, resource_group_name, resource_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AgentPoolAvailableVersions>
rescue AzureRest::ApiError => e
  puts "Error when calling AgentPoolsApi->agent_pools_get_available_agent_pool_versions_with_http_info: #{e}"
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

[**AgentPoolAvailableVersions**](AgentPoolAvailableVersions.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## agent_pools_get_upgrade_profile

> <AgentPoolUpgradeProfile> agent_pools_get_upgrade_profile(api_version, subscription_id, resource_group_name, resource_name, agent_pool_name)



Gets the upgrade profile for an agent pool.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::AgentPoolsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.
agent_pool_name = 'agent_pool_name_example' # String | The name of the agent pool.

begin
  
  result = api_instance.agent_pools_get_upgrade_profile(api_version, subscription_id, resource_group_name, resource_name, agent_pool_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling AgentPoolsApi->agent_pools_get_upgrade_profile: #{e}"
end
```

#### Using the agent_pools_get_upgrade_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AgentPoolUpgradeProfile>, Integer, Hash)> agent_pools_get_upgrade_profile_with_http_info(api_version, subscription_id, resource_group_name, resource_name, agent_pool_name)

```ruby
begin
  
  data, status_code, headers = api_instance.agent_pools_get_upgrade_profile_with_http_info(api_version, subscription_id, resource_group_name, resource_name, agent_pool_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AgentPoolUpgradeProfile>
rescue AzureRest::ApiError => e
  puts "Error when calling AgentPoolsApi->agent_pools_get_upgrade_profile_with_http_info: #{e}"
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

[**AgentPoolUpgradeProfile**](AgentPoolUpgradeProfile.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## agent_pools_list

> <AgentPoolListResult> agent_pools_list(api_version, subscription_id, resource_group_name, resource_name)



Gets a list of agent pools in the specified managed cluster.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::AgentPoolsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.

begin
  
  result = api_instance.agent_pools_list(api_version, subscription_id, resource_group_name, resource_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling AgentPoolsApi->agent_pools_list: #{e}"
end
```

#### Using the agent_pools_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AgentPoolListResult>, Integer, Hash)> agent_pools_list_with_http_info(api_version, subscription_id, resource_group_name, resource_name)

```ruby
begin
  
  data, status_code, headers = api_instance.agent_pools_list_with_http_info(api_version, subscription_id, resource_group_name, resource_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AgentPoolListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling AgentPoolsApi->agent_pools_list_with_http_info: #{e}"
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

[**AgentPoolListResult**](AgentPoolListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## agent_pools_upgrade_node_image_version

> agent_pools_upgrade_node_image_version(api_version, subscription_id, resource_group_name, resource_name, agent_pool_name)

Upgrades the node image version of an agent pool to the latest.

Upgrading the node image version of an agent pool applies the newest OS and runtime updates to the nodes. AKS provides one new image per week with the latest updates. For more details on node image versions, see: https://docs.microsoft.com/azure/aks/node-image-upgrade

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::AgentPoolsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.
agent_pool_name = 'agent_pool_name_example' # String | The name of the agent pool.

begin
  # Upgrades the node image version of an agent pool to the latest.
  api_instance.agent_pools_upgrade_node_image_version(api_version, subscription_id, resource_group_name, resource_name, agent_pool_name)
rescue AzureRest::ApiError => e
  puts "Error when calling AgentPoolsApi->agent_pools_upgrade_node_image_version: #{e}"
end
```

#### Using the agent_pools_upgrade_node_image_version_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> agent_pools_upgrade_node_image_version_with_http_info(api_version, subscription_id, resource_group_name, resource_name, agent_pool_name)

```ruby
begin
  # Upgrades the node image version of an agent pool to the latest.
  data, status_code, headers = api_instance.agent_pools_upgrade_node_image_version_with_http_info(api_version, subscription_id, resource_group_name, resource_name, agent_pool_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling AgentPoolsApi->agent_pools_upgrade_node_image_version_with_http_info: #{e}"
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

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

