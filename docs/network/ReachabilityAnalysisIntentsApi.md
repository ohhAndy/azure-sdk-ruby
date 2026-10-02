# AzureSDK::ReachabilityAnalysisIntentsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**reachability_analysis_intents_create**](ReachabilityAnalysisIntentsApi.md#reachability_analysis_intents_create) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkManagers/{networkManagerName}/verifierWorkspaces/{workspaceName}/reachabilityAnalysisIntents/{reachabilityAnalysisIntentName} | Creates Reachability Analysis Intent. |
| [**reachability_analysis_intents_get**](ReachabilityAnalysisIntentsApi.md#reachability_analysis_intents_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkManagers/{networkManagerName}/verifierWorkspaces/{workspaceName}/reachabilityAnalysisIntents/{reachabilityAnalysisIntentName} | Get the Reachability Analysis Intent. |
| [**reachability_analysis_intents_list**](ReachabilityAnalysisIntentsApi.md#reachability_analysis_intents_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkManagers/{networkManagerName}/verifierWorkspaces/{workspaceName}/reachabilityAnalysisIntents | Gets list of Reachability Analysis Intents . |


## reachability_analysis_intents_create

> <ReachabilityAnalysisIntent> reachability_analysis_intents_create(api_version, subscription_id, resource_group_name, network_manager_name, workspace_name, reachability_analysis_intent_name, body)

Creates Reachability Analysis Intent.

Creates Reachability Analysis Intent.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ReachabilityAnalysisIntentsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_manager_name = 'network_manager_name_example' # String | The name of the network manager.
workspace_name = 'workspace_name_example' # String | The name of the resource
reachability_analysis_intent_name = 'reachability_analysis_intent_name_example' # String | Reachability Analysis Intent name.
body = AzureSDK::ReachabilityAnalysisIntent.new({properties: AzureSDK::ReachabilityAnalysisIntentProperties.new({source_resource_id: 'source_resource_id_example', destination_resource_id: 'destination_resource_id_example', ip_traffic: AzureSDK::IPTraffic.new({source_ips: ['source_ips_example'], destination_ips: ['destination_ips_example'], source_ports: ['source_ports_example'], destination_ports: ['destination_ports_example'], protocols: [AzureSDK::NetworkProtocol::ANY]})})}) # ReachabilityAnalysisIntent | Reachability Analysis Intent object to create/update.

begin
  # Creates Reachability Analysis Intent.
  result = api_instance.reachability_analysis_intents_create(api_version, subscription_id, resource_group_name, network_manager_name, workspace_name, reachability_analysis_intent_name, body)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ReachabilityAnalysisIntentsApi->reachability_analysis_intents_create: #{e}"
end
```

#### Using the reachability_analysis_intents_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReachabilityAnalysisIntent>, Integer, Hash)> reachability_analysis_intents_create_with_http_info(api_version, subscription_id, resource_group_name, network_manager_name, workspace_name, reachability_analysis_intent_name, body)

```ruby
begin
  # Creates Reachability Analysis Intent.
  data, status_code, headers = api_instance.reachability_analysis_intents_create_with_http_info(api_version, subscription_id, resource_group_name, network_manager_name, workspace_name, reachability_analysis_intent_name, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReachabilityAnalysisIntent>
rescue AzureSDK::ApiError => e
  puts "Error when calling ReachabilityAnalysisIntentsApi->reachability_analysis_intents_create_with_http_info: #{e}"
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
| **reachability_analysis_intent_name** | **String** | Reachability Analysis Intent name. |  |
| **body** | [**ReachabilityAnalysisIntent**](ReachabilityAnalysisIntent.md) | Reachability Analysis Intent object to create/update. |  |

### Return type

[**ReachabilityAnalysisIntent**](ReachabilityAnalysisIntent.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## reachability_analysis_intents_get

> <ReachabilityAnalysisIntent> reachability_analysis_intents_get(api_version, subscription_id, resource_group_name, network_manager_name, workspace_name, reachability_analysis_intent_name)

Get the Reachability Analysis Intent.

Get the Reachability Analysis Intent.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ReachabilityAnalysisIntentsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_manager_name = 'network_manager_name_example' # String | The name of the network manager.
workspace_name = 'workspace_name_example' # String | The name of the resource
reachability_analysis_intent_name = 'reachability_analysis_intent_name_example' # String | Reachability Analysis Intent name.

begin
  # Get the Reachability Analysis Intent.
  result = api_instance.reachability_analysis_intents_get(api_version, subscription_id, resource_group_name, network_manager_name, workspace_name, reachability_analysis_intent_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ReachabilityAnalysisIntentsApi->reachability_analysis_intents_get: #{e}"
end
```

#### Using the reachability_analysis_intents_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReachabilityAnalysisIntent>, Integer, Hash)> reachability_analysis_intents_get_with_http_info(api_version, subscription_id, resource_group_name, network_manager_name, workspace_name, reachability_analysis_intent_name)

```ruby
begin
  # Get the Reachability Analysis Intent.
  data, status_code, headers = api_instance.reachability_analysis_intents_get_with_http_info(api_version, subscription_id, resource_group_name, network_manager_name, workspace_name, reachability_analysis_intent_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReachabilityAnalysisIntent>
rescue AzureSDK::ApiError => e
  puts "Error when calling ReachabilityAnalysisIntentsApi->reachability_analysis_intents_get_with_http_info: #{e}"
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
| **reachability_analysis_intent_name** | **String** | Reachability Analysis Intent name. |  |

### Return type

[**ReachabilityAnalysisIntent**](ReachabilityAnalysisIntent.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## reachability_analysis_intents_list

> <ReachabilityAnalysisIntentListResult> reachability_analysis_intents_list(api_version, subscription_id, resource_group_name, network_manager_name, workspace_name, opts)

Gets list of Reachability Analysis Intents .

Gets list of Reachability Analysis Intents .

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ReachabilityAnalysisIntentsApi.new
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
  # Gets list of Reachability Analysis Intents .
  result = api_instance.reachability_analysis_intents_list(api_version, subscription_id, resource_group_name, network_manager_name, workspace_name, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ReachabilityAnalysisIntentsApi->reachability_analysis_intents_list: #{e}"
end
```

#### Using the reachability_analysis_intents_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReachabilityAnalysisIntentListResult>, Integer, Hash)> reachability_analysis_intents_list_with_http_info(api_version, subscription_id, resource_group_name, network_manager_name, workspace_name, opts)

```ruby
begin
  # Gets list of Reachability Analysis Intents .
  data, status_code, headers = api_instance.reachability_analysis_intents_list_with_http_info(api_version, subscription_id, resource_group_name, network_manager_name, workspace_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReachabilityAnalysisIntentListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling ReachabilityAnalysisIntentsApi->reachability_analysis_intents_list_with_http_info: #{e}"
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

[**ReachabilityAnalysisIntentListResult**](ReachabilityAnalysisIntentListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

