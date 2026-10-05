# AzureRest::VerifierWorkspacesApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**verifier_workspaces_create**](VerifierWorkspacesApi.md#verifier_workspaces_create) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkManagers/{networkManagerName}/verifierWorkspaces/{workspaceName} | Creates Verifier Workspace. |
| [**verifier_workspaces_delete**](VerifierWorkspacesApi.md#verifier_workspaces_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkManagers/{networkManagerName}/verifierWorkspaces/{workspaceName} | Deletes Verifier Workspace. |
| [**verifier_workspaces_get**](VerifierWorkspacesApi.md#verifier_workspaces_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkManagers/{networkManagerName}/verifierWorkspaces/{workspaceName} | Gets Verifier Workspace. |
| [**verifier_workspaces_list**](VerifierWorkspacesApi.md#verifier_workspaces_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkManagers/{networkManagerName}/verifierWorkspaces | Gets list of Verifier Workspaces. |
| [**verifier_workspaces_update**](VerifierWorkspacesApi.md#verifier_workspaces_update) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkManagers/{networkManagerName}/verifierWorkspaces/{workspaceName} | Updates Verifier Workspace. |


## verifier_workspaces_create

> <VerifierWorkspace> verifier_workspaces_create(api_version, subscription_id, resource_group_name, network_manager_name, workspace_name, body, opts)

Creates Verifier Workspace.

Creates Verifier Workspace.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VerifierWorkspacesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_manager_name = 'network_manager_name_example' # String | The name of the network manager.
workspace_name = 'workspace_name_example' # String | The name of the resource
body = AzureRest::VerifierWorkspace.new({location: 'location_example'}) # VerifierWorkspace | Verifier Workspace object to create/update.
opts = {
  if_match: 'if_match_example' # String | The entity state (ETag) version of the pool to update. This value can be omitted or set to \"*\" to apply the operation unconditionally.
}

begin
  # Creates Verifier Workspace.
  result = api_instance.verifier_workspaces_create(api_version, subscription_id, resource_group_name, network_manager_name, workspace_name, body, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VerifierWorkspacesApi->verifier_workspaces_create: #{e}"
end
```

#### Using the verifier_workspaces_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VerifierWorkspace>, Integer, Hash)> verifier_workspaces_create_with_http_info(api_version, subscription_id, resource_group_name, network_manager_name, workspace_name, body, opts)

```ruby
begin
  # Creates Verifier Workspace.
  data, status_code, headers = api_instance.verifier_workspaces_create_with_http_info(api_version, subscription_id, resource_group_name, network_manager_name, workspace_name, body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VerifierWorkspace>
rescue AzureRest::ApiError => e
  puts "Error when calling VerifierWorkspacesApi->verifier_workspaces_create_with_http_info: #{e}"
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
| **body** | [**VerifierWorkspace**](VerifierWorkspace.md) | Verifier Workspace object to create/update. |  |
| **if_match** | **String** | The entity state (ETag) version of the pool to update. This value can be omitted or set to \&quot;*\&quot; to apply the operation unconditionally. | [optional] |

### Return type

[**VerifierWorkspace**](VerifierWorkspace.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## verifier_workspaces_delete

> verifier_workspaces_delete(api_version, subscription_id, resource_group_name, network_manager_name, workspace_name, opts)

Deletes Verifier Workspace.

Deletes Verifier Workspace.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VerifierWorkspacesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_manager_name = 'network_manager_name_example' # String | The name of the network manager.
workspace_name = 'workspace_name_example' # String | The name of the resource
opts = {
  if_match: 'if_match_example' # String | The entity state (ETag) version of the pool to update. This value can be omitted or set to \"*\" to apply the operation unconditionally.
}

begin
  # Deletes Verifier Workspace.
  api_instance.verifier_workspaces_delete(api_version, subscription_id, resource_group_name, network_manager_name, workspace_name, opts)
rescue AzureRest::ApiError => e
  puts "Error when calling VerifierWorkspacesApi->verifier_workspaces_delete: #{e}"
end
```

#### Using the verifier_workspaces_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> verifier_workspaces_delete_with_http_info(api_version, subscription_id, resource_group_name, network_manager_name, workspace_name, opts)

```ruby
begin
  # Deletes Verifier Workspace.
  data, status_code, headers = api_instance.verifier_workspaces_delete_with_http_info(api_version, subscription_id, resource_group_name, network_manager_name, workspace_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling VerifierWorkspacesApi->verifier_workspaces_delete_with_http_info: #{e}"
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
| **if_match** | **String** | The entity state (ETag) version of the pool to update. This value can be omitted or set to \&quot;*\&quot; to apply the operation unconditionally. | [optional] |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## verifier_workspaces_get

> <VerifierWorkspace> verifier_workspaces_get(api_version, subscription_id, resource_group_name, network_manager_name, workspace_name)

Gets Verifier Workspace.

Gets Verifier Workspace.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VerifierWorkspacesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_manager_name = 'network_manager_name_example' # String | The name of the network manager.
workspace_name = 'workspace_name_example' # String | The name of the resource

begin
  # Gets Verifier Workspace.
  result = api_instance.verifier_workspaces_get(api_version, subscription_id, resource_group_name, network_manager_name, workspace_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VerifierWorkspacesApi->verifier_workspaces_get: #{e}"
end
```

#### Using the verifier_workspaces_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VerifierWorkspace>, Integer, Hash)> verifier_workspaces_get_with_http_info(api_version, subscription_id, resource_group_name, network_manager_name, workspace_name)

```ruby
begin
  # Gets Verifier Workspace.
  data, status_code, headers = api_instance.verifier_workspaces_get_with_http_info(api_version, subscription_id, resource_group_name, network_manager_name, workspace_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VerifierWorkspace>
rescue AzureRest::ApiError => e
  puts "Error when calling VerifierWorkspacesApi->verifier_workspaces_get_with_http_info: #{e}"
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

### Return type

[**VerifierWorkspace**](VerifierWorkspace.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## verifier_workspaces_list

> <VerifierWorkspaceListResult> verifier_workspaces_list(api_version, subscription_id, resource_group_name, network_manager_name, opts)

Gets list of Verifier Workspaces.

Gets list of Verifier Workspaces.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VerifierWorkspacesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_manager_name = 'network_manager_name_example' # String | The name of the network manager.
opts = {
  skip_token: 'skip_token_example', # String | Optional skip token.
  skip: 56, # Integer | Optional num entries to skip.
  top: 56, # Integer | Optional num entries to show.
  sort_key: 'sort_key_example', # String | Optional key by which to sort.
  sort_value: 'sort_value_example' # String | Optional sort value for pagination.
}

begin
  # Gets list of Verifier Workspaces.
  result = api_instance.verifier_workspaces_list(api_version, subscription_id, resource_group_name, network_manager_name, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VerifierWorkspacesApi->verifier_workspaces_list: #{e}"
end
```

#### Using the verifier_workspaces_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VerifierWorkspaceListResult>, Integer, Hash)> verifier_workspaces_list_with_http_info(api_version, subscription_id, resource_group_name, network_manager_name, opts)

```ruby
begin
  # Gets list of Verifier Workspaces.
  data, status_code, headers = api_instance.verifier_workspaces_list_with_http_info(api_version, subscription_id, resource_group_name, network_manager_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VerifierWorkspaceListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling VerifierWorkspacesApi->verifier_workspaces_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_manager_name** | **String** | The name of the network manager. |  |
| **skip_token** | **String** | Optional skip token. | [optional] |
| **skip** | **Integer** | Optional num entries to skip. | [optional][default to 0] |
| **top** | **Integer** | Optional num entries to show. | [optional][default to 50] |
| **sort_key** | **String** | Optional key by which to sort. | [optional] |
| **sort_value** | **String** | Optional sort value for pagination. | [optional] |

### Return type

[**VerifierWorkspaceListResult**](VerifierWorkspaceListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## verifier_workspaces_update

> <VerifierWorkspace> verifier_workspaces_update(api_version, subscription_id, resource_group_name, network_manager_name, workspace_name, opts)

Updates Verifier Workspace.

Updates Verifier Workspace.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VerifierWorkspacesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_manager_name = 'network_manager_name_example' # String | The name of the network manager.
workspace_name = 'workspace_name_example' # String | The name of the resource
opts = {
  if_match: 'if_match_example', # String | The entity state (ETag) version of the pool to update. This value can be omitted or set to \"*\" to apply the operation unconditionally.
  body: AzureRest::VerifierWorkspaceUpdate.new # VerifierWorkspaceUpdate | Verifier Workspace object to create/update.
}

begin
  # Updates Verifier Workspace.
  result = api_instance.verifier_workspaces_update(api_version, subscription_id, resource_group_name, network_manager_name, workspace_name, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VerifierWorkspacesApi->verifier_workspaces_update: #{e}"
end
```

#### Using the verifier_workspaces_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VerifierWorkspace>, Integer, Hash)> verifier_workspaces_update_with_http_info(api_version, subscription_id, resource_group_name, network_manager_name, workspace_name, opts)

```ruby
begin
  # Updates Verifier Workspace.
  data, status_code, headers = api_instance.verifier_workspaces_update_with_http_info(api_version, subscription_id, resource_group_name, network_manager_name, workspace_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VerifierWorkspace>
rescue AzureRest::ApiError => e
  puts "Error when calling VerifierWorkspacesApi->verifier_workspaces_update_with_http_info: #{e}"
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
| **if_match** | **String** | The entity state (ETag) version of the pool to update. This value can be omitted or set to \&quot;*\&quot; to apply the operation unconditionally. | [optional] |
| **body** | [**VerifierWorkspaceUpdate**](VerifierWorkspaceUpdate.md) | Verifier Workspace object to create/update. | [optional] |

### Return type

[**VerifierWorkspace**](VerifierWorkspace.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

