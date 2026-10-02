# AzureSDK::ReachabilityAnalysisIntentApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**reachability_analysis_intents_delete**](ReachabilityAnalysisIntentApi.md#reachability_analysis_intents_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkManagers/{networkManagerName}/verifierWorkspaces/{workspaceName}/reachabilityAnalysisIntents/{reachabilityAnalysisIntentName} | Deletes Reachability Analysis Intent. |


## reachability_analysis_intents_delete

> reachability_analysis_intents_delete(api_version, subscription_id, resource_group_name, network_manager_name, workspace_name, reachability_analysis_intent_name)

Deletes Reachability Analysis Intent.

Deletes Reachability Analysis Intent.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ReachabilityAnalysisIntentApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_manager_name = 'network_manager_name_example' # String | The name of the network manager.
workspace_name = 'workspace_name_example' # String | The name of the resource
reachability_analysis_intent_name = 'reachability_analysis_intent_name_example' # String | Reachability Analysis Intent name.

begin
  # Deletes Reachability Analysis Intent.
  api_instance.reachability_analysis_intents_delete(api_version, subscription_id, resource_group_name, network_manager_name, workspace_name, reachability_analysis_intent_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling ReachabilityAnalysisIntentApi->reachability_analysis_intents_delete: #{e}"
end
```

#### Using the reachability_analysis_intents_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> reachability_analysis_intents_delete_with_http_info(api_version, subscription_id, resource_group_name, network_manager_name, workspace_name, reachability_analysis_intent_name)

```ruby
begin
  # Deletes Reachability Analysis Intent.
  data, status_code, headers = api_instance.reachability_analysis_intents_delete_with_http_info(api_version, subscription_id, resource_group_name, network_manager_name, workspace_name, reachability_analysis_intent_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling ReachabilityAnalysisIntentApi->reachability_analysis_intents_delete_with_http_info: #{e}"
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

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

