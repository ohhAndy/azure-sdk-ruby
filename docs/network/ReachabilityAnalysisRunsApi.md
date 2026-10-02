# AzureSDK::ReachabilityAnalysisRunsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**reachability_analysis_runs_create**](ReachabilityAnalysisRunsApi.md#reachability_analysis_runs_create) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkManagers/{networkManagerName}/verifierWorkspaces/{workspaceName}/reachabilityAnalysisRuns/{reachabilityAnalysisRunName} | Creates Reachability Analysis Runs. |
| [**reachability_analysis_runs_delete**](ReachabilityAnalysisRunsApi.md#reachability_analysis_runs_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkManagers/{networkManagerName}/verifierWorkspaces/{workspaceName}/reachabilityAnalysisRuns/{reachabilityAnalysisRunName} | Deletes Reachability Analysis Run. |
| [**reachability_analysis_runs_get**](ReachabilityAnalysisRunsApi.md#reachability_analysis_runs_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkManagers/{networkManagerName}/verifierWorkspaces/{workspaceName}/reachabilityAnalysisRuns/{reachabilityAnalysisRunName} | Gets Reachability Analysis Run. |
| [**reachability_analysis_runs_list**](ReachabilityAnalysisRunsApi.md#reachability_analysis_runs_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkManagers/{networkManagerName}/verifierWorkspaces/{workspaceName}/reachabilityAnalysisRuns | Gets list of Reachability Analysis Runs. |


## reachability_analysis_runs_create

> <ReachabilityAnalysisRun> reachability_analysis_runs_create(api_version, subscription_id, resource_group_name, network_manager_name, workspace_name, reachability_analysis_run_name, body)

Creates Reachability Analysis Runs.

Creates Reachability Analysis Runs.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ReachabilityAnalysisRunsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_manager_name = 'network_manager_name_example' # String | The name of the network manager.
workspace_name = 'workspace_name_example' # String | The name of the resource
reachability_analysis_run_name = 'reachability_analysis_run_name_example' # String | Reachability Analysis Run name.
body = AzureSDK::ReachabilityAnalysisRun.new({properties: AzureSDK::ReachabilityAnalysisRunProperties.new({intent_id: 'intent_id_example'})}) # ReachabilityAnalysisRun | Analysis Run resource object to create/update.

begin
  # Creates Reachability Analysis Runs.
  result = api_instance.reachability_analysis_runs_create(api_version, subscription_id, resource_group_name, network_manager_name, workspace_name, reachability_analysis_run_name, body)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ReachabilityAnalysisRunsApi->reachability_analysis_runs_create: #{e}"
end
```

#### Using the reachability_analysis_runs_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReachabilityAnalysisRun>, Integer, Hash)> reachability_analysis_runs_create_with_http_info(api_version, subscription_id, resource_group_name, network_manager_name, workspace_name, reachability_analysis_run_name, body)

```ruby
begin
  # Creates Reachability Analysis Runs.
  data, status_code, headers = api_instance.reachability_analysis_runs_create_with_http_info(api_version, subscription_id, resource_group_name, network_manager_name, workspace_name, reachability_analysis_run_name, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReachabilityAnalysisRun>
rescue AzureSDK::ApiError => e
  puts "Error when calling ReachabilityAnalysisRunsApi->reachability_analysis_runs_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_manager_name** | **String** | The name of the network manager. |  |
| **workspace_name** | **String** | The name of the resource |  |
| **reachability_analysis_run_name** | **String** | Reachability Analysis Run name. |  |
| **body** | [**ReachabilityAnalysisRun**](ReachabilityAnalysisRun.md) | Analysis Run resource object to create/update. |  |

### Return type

[**ReachabilityAnalysisRun**](ReachabilityAnalysisRun.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## reachability_analysis_runs_delete

> reachability_analysis_runs_delete(api_version, subscription_id, resource_group_name, network_manager_name, workspace_name, reachability_analysis_run_name)

Deletes Reachability Analysis Run.

Deletes Reachability Analysis Run.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ReachabilityAnalysisRunsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_manager_name = 'network_manager_name_example' # String | The name of the network manager.
workspace_name = 'workspace_name_example' # String | The name of the resource
reachability_analysis_run_name = 'reachability_analysis_run_name_example' # String | Reachability Analysis Run name.

begin
  # Deletes Reachability Analysis Run.
  api_instance.reachability_analysis_runs_delete(api_version, subscription_id, resource_group_name, network_manager_name, workspace_name, reachability_analysis_run_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling ReachabilityAnalysisRunsApi->reachability_analysis_runs_delete: #{e}"
end
```

#### Using the reachability_analysis_runs_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> reachability_analysis_runs_delete_with_http_info(api_version, subscription_id, resource_group_name, network_manager_name, workspace_name, reachability_analysis_run_name)

```ruby
begin
  # Deletes Reachability Analysis Run.
  data, status_code, headers = api_instance.reachability_analysis_runs_delete_with_http_info(api_version, subscription_id, resource_group_name, network_manager_name, workspace_name, reachability_analysis_run_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling ReachabilityAnalysisRunsApi->reachability_analysis_runs_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_manager_name** | **String** | The name of the network manager. |  |
| **workspace_name** | **String** | The name of the resource |  |
| **reachability_analysis_run_name** | **String** | Reachability Analysis Run name. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## reachability_analysis_runs_get

> <ReachabilityAnalysisRun> reachability_analysis_runs_get(api_version, subscription_id, resource_group_name, network_manager_name, workspace_name, reachability_analysis_run_name)

Gets Reachability Analysis Run.

Gets Reachability Analysis Run.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ReachabilityAnalysisRunsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_manager_name = 'network_manager_name_example' # String | The name of the network manager.
workspace_name = 'workspace_name_example' # String | The name of the resource
reachability_analysis_run_name = 'reachability_analysis_run_name_example' # String | Reachability Analysis Run name.

begin
  # Gets Reachability Analysis Run.
  result = api_instance.reachability_analysis_runs_get(api_version, subscription_id, resource_group_name, network_manager_name, workspace_name, reachability_analysis_run_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ReachabilityAnalysisRunsApi->reachability_analysis_runs_get: #{e}"
end
```

#### Using the reachability_analysis_runs_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReachabilityAnalysisRun>, Integer, Hash)> reachability_analysis_runs_get_with_http_info(api_version, subscription_id, resource_group_name, network_manager_name, workspace_name, reachability_analysis_run_name)

```ruby
begin
  # Gets Reachability Analysis Run.
  data, status_code, headers = api_instance.reachability_analysis_runs_get_with_http_info(api_version, subscription_id, resource_group_name, network_manager_name, workspace_name, reachability_analysis_run_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReachabilityAnalysisRun>
rescue AzureSDK::ApiError => e
  puts "Error when calling ReachabilityAnalysisRunsApi->reachability_analysis_runs_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_manager_name** | **String** | The name of the network manager. |  |
| **workspace_name** | **String** | The name of the resource |  |
| **reachability_analysis_run_name** | **String** | Reachability Analysis Run name. |  |

### Return type

[**ReachabilityAnalysisRun**](ReachabilityAnalysisRun.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## reachability_analysis_runs_list

> <ReachabilityAnalysisRunListResult> reachability_analysis_runs_list(api_version, subscription_id, resource_group_name, network_manager_name, workspace_name, opts)

Gets list of Reachability Analysis Runs.

Gets list of Reachability Analysis Runs.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ReachabilityAnalysisRunsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_manager_name = 'network_manager_name_example' # String | The name of the network manager.
workspace_name = 'workspace_name_example' # String | The name of the resource
opts = {
  skip_token: 'skip_token_example', # String | Optional skip token.
  skip: 56, # Integer | Optional num entries to skip.
  top: 56, # Integer | Optional num entries to show.
  sort_key: 'sort_key_example', # String | Optional key by which to sort.
  sort_value: 'sort_value_example' # String | Optional sort value for pagination.
}

begin
  # Gets list of Reachability Analysis Runs.
  result = api_instance.reachability_analysis_runs_list(api_version, subscription_id, resource_group_name, network_manager_name, workspace_name, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ReachabilityAnalysisRunsApi->reachability_analysis_runs_list: #{e}"
end
```

#### Using the reachability_analysis_runs_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReachabilityAnalysisRunListResult>, Integer, Hash)> reachability_analysis_runs_list_with_http_info(api_version, subscription_id, resource_group_name, network_manager_name, workspace_name, opts)

```ruby
begin
  # Gets list of Reachability Analysis Runs.
  data, status_code, headers = api_instance.reachability_analysis_runs_list_with_http_info(api_version, subscription_id, resource_group_name, network_manager_name, workspace_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReachabilityAnalysisRunListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling ReachabilityAnalysisRunsApi->reachability_analysis_runs_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_manager_name** | **String** | The name of the network manager. |  |
| **workspace_name** | **String** | The name of the resource |  |
| **skip_token** | **String** | Optional skip token. | [optional] |
| **skip** | **Integer** | Optional num entries to skip. | [optional][default to 0] |
| **top** | **Integer** | Optional num entries to show. | [optional][default to 50] |
| **sort_key** | **String** | Optional key by which to sort. | [optional] |
| **sort_value** | **String** | Optional sort value for pagination. | [optional] |

### Return type

[**ReachabilityAnalysisRunListResult**](ReachabilityAnalysisRunListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

