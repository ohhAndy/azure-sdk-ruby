# AzureSDK::ManagedClustersApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**managed_clusters_abort_latest_operation**](ManagedClustersApi.md#managed_clusters_abort_latest_operation) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/abort | Aborts last operation running on managed cluster. |
| [**managed_clusters_create_or_update**](ManagedClustersApi.md#managed_clusters_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName} |  |
| [**managed_clusters_delete**](ManagedClustersApi.md#managed_clusters_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName} |  |
| [**managed_clusters_get**](ManagedClustersApi.md#managed_clusters_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName} |  |
| [**managed_clusters_get_access_profile**](ManagedClustersApi.md#managed_clusters_get_access_profile) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/accessProfiles/{roleName}/listCredential | Gets an access profile of a managed cluster. |
| [**managed_clusters_get_command_result**](ManagedClustersApi.md#managed_clusters_get_command_result) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/commandResults/{commandId} |  |
| [**managed_clusters_get_mesh_revision_profile**](ManagedClustersApi.md#managed_clusters_get_mesh_revision_profile) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.ContainerService/locations/{location}/meshRevisionProfiles/{mode} | Gets a mesh revision profile for a specified mesh in the specified location. |
| [**managed_clusters_get_mesh_upgrade_profile**](ManagedClustersApi.md#managed_clusters_get_mesh_upgrade_profile) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/meshUpgradeProfiles/{mode} |  |
| [**managed_clusters_get_upgrade_profile**](ManagedClustersApi.md#managed_clusters_get_upgrade_profile) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/upgradeProfiles/default |  |
| [**managed_clusters_list**](ManagedClustersApi.md#managed_clusters_list) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.ContainerService/managedClusters |  |
| [**managed_clusters_list_by_resource_group**](ManagedClustersApi.md#managed_clusters_list_by_resource_group) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters |  |
| [**managed_clusters_list_cluster_admin_credentials**](ManagedClustersApi.md#managed_clusters_list_cluster_admin_credentials) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/listClusterAdminCredential |  |
| [**managed_clusters_list_cluster_monitoring_user_credentials**](ManagedClustersApi.md#managed_clusters_list_cluster_monitoring_user_credentials) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/listClusterMonitoringUserCredential |  |
| [**managed_clusters_list_cluster_user_credentials**](ManagedClustersApi.md#managed_clusters_list_cluster_user_credentials) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/listClusterUserCredential |  |
| [**managed_clusters_list_kubernetes_versions**](ManagedClustersApi.md#managed_clusters_list_kubernetes_versions) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.ContainerService/locations/{location}/kubernetesVersions | Gets a list of supported Kubernetes versions in the specified subscription. |
| [**managed_clusters_list_mesh_revision_profiles**](ManagedClustersApi.md#managed_clusters_list_mesh_revision_profiles) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.ContainerService/locations/{location}/meshRevisionProfiles | Lists mesh revision profiles for all meshes in the specified location. |
| [**managed_clusters_list_mesh_upgrade_profiles**](ManagedClustersApi.md#managed_clusters_list_mesh_upgrade_profiles) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/meshUpgradeProfiles |  |
| [**managed_clusters_list_outbound_network_dependencies_endpoints**](ManagedClustersApi.md#managed_clusters_list_outbound_network_dependencies_endpoints) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/outboundNetworkDependenciesEndpoints | Gets a list of egress endpoints (network endpoints of all outbound dependencies) in the specified managed cluster. |
| [**managed_clusters_reset_aad_profile**](ManagedClustersApi.md#managed_clusters_reset_aad_profile) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/resetAADProfile | Reset the AAD Profile of a managed cluster. |
| [**managed_clusters_reset_service_principal_profile**](ManagedClustersApi.md#managed_clusters_reset_service_principal_profile) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/resetServicePrincipalProfile | Reset the Service Principal Profile of a managed cluster. |
| [**managed_clusters_rotate_cluster_certificates**](ManagedClustersApi.md#managed_clusters_rotate_cluster_certificates) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/rotateClusterCertificates | Rotates the certificates of a managed cluster. |
| [**managed_clusters_rotate_service_account_signing_keys**](ManagedClustersApi.md#managed_clusters_rotate_service_account_signing_keys) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/rotateServiceAccountSigningKeys |  |
| [**managed_clusters_run_command**](ManagedClustersApi.md#managed_clusters_run_command) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/runCommand | Submits a command to run against the Managed Cluster. |
| [**managed_clusters_start**](ManagedClustersApi.md#managed_clusters_start) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/start | Starts a previously stopped Managed Cluster |
| [**managed_clusters_stop**](ManagedClustersApi.md#managed_clusters_stop) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/stop | Stops a Managed Cluster |
| [**managed_clusters_update_tags**](ManagedClustersApi.md#managed_clusters_update_tags) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName} |  |
| [**operations_list**](ManagedClustersApi.md#operations_list) | **GET** /providers/Microsoft.ContainerService/operations |  |


## managed_clusters_abort_latest_operation

> managed_clusters_abort_latest_operation(api_version, subscription_id, resource_group_name, resource_name)

Aborts last operation running on managed cluster.

Aborts the currently running operation on the managed cluster. The Managed Cluster will be moved to a Canceling state and eventually to a Canceled state when cancellation finishes. If the operation completes before cancellation can take place, a 409 error code is returned.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ManagedClustersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.

begin
  # Aborts last operation running on managed cluster.
  api_instance.managed_clusters_abort_latest_operation(api_version, subscription_id, resource_group_name, resource_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagedClustersApi->managed_clusters_abort_latest_operation: #{e}"
end
```

#### Using the managed_clusters_abort_latest_operation_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> managed_clusters_abort_latest_operation_with_http_info(api_version, subscription_id, resource_group_name, resource_name)

```ruby
begin
  # Aborts last operation running on managed cluster.
  data, status_code, headers = api_instance.managed_clusters_abort_latest_operation_with_http_info(api_version, subscription_id, resource_group_name, resource_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagedClustersApi->managed_clusters_abort_latest_operation_with_http_info: #{e}"
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

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## managed_clusters_create_or_update

> <ManagedCluster> managed_clusters_create_or_update(api_version, subscription_id, resource_group_name, resource_name, parameters, opts)



Creates or updates a managed cluster.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ManagedClustersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.
parameters = AzureSDK::ManagedCluster.new({location: 'location_example'}) # ManagedCluster | The managed cluster to create or update.
opts = {
  if_match: 'if_match_example', # String | The request should only proceed if an entity matches this string.
  if_none_match: 'if_none_match_example' # String | The request should only proceed if no entity matches this string.
}

begin
  
  result = api_instance.managed_clusters_create_or_update(api_version, subscription_id, resource_group_name, resource_name, parameters, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagedClustersApi->managed_clusters_create_or_update: #{e}"
end
```

#### Using the managed_clusters_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ManagedCluster>, Integer, Hash)> managed_clusters_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, resource_name, parameters, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.managed_clusters_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, resource_name, parameters, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ManagedCluster>
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagedClustersApi->managed_clusters_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **resource_name** | **String** | The name of the managed cluster resource. |  |
| **parameters** | [**ManagedCluster**](ManagedCluster.md) | The managed cluster to create or update. |  |
| **if_match** | **String** | The request should only proceed if an entity matches this string. | [optional] |
| **if_none_match** | **String** | The request should only proceed if no entity matches this string. | [optional] |

### Return type

[**ManagedCluster**](ManagedCluster.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## managed_clusters_delete

> managed_clusters_delete(api_version, subscription_id, resource_group_name, resource_name, opts)



Deletes a managed cluster.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ManagedClustersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.
opts = {
  if_match: 'if_match_example' # String | The request should only proceed if an entity matches this string.
}

begin
  
  api_instance.managed_clusters_delete(api_version, subscription_id, resource_group_name, resource_name, opts)
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagedClustersApi->managed_clusters_delete: #{e}"
end
```

#### Using the managed_clusters_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> managed_clusters_delete_with_http_info(api_version, subscription_id, resource_group_name, resource_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.managed_clusters_delete_with_http_info(api_version, subscription_id, resource_group_name, resource_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagedClustersApi->managed_clusters_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **resource_name** | **String** | The name of the managed cluster resource. |  |
| **if_match** | **String** | The request should only proceed if an entity matches this string. | [optional] |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## managed_clusters_get

> <ManagedCluster> managed_clusters_get(api_version, subscription_id, resource_group_name, resource_name)



Gets a managed cluster.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ManagedClustersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.

begin
  
  result = api_instance.managed_clusters_get(api_version, subscription_id, resource_group_name, resource_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagedClustersApi->managed_clusters_get: #{e}"
end
```

#### Using the managed_clusters_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ManagedCluster>, Integer, Hash)> managed_clusters_get_with_http_info(api_version, subscription_id, resource_group_name, resource_name)

```ruby
begin
  
  data, status_code, headers = api_instance.managed_clusters_get_with_http_info(api_version, subscription_id, resource_group_name, resource_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ManagedCluster>
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagedClustersApi->managed_clusters_get_with_http_info: #{e}"
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

[**ManagedCluster**](ManagedCluster.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## managed_clusters_get_access_profile

> <ManagedClusterAccessProfile> managed_clusters_get_access_profile(api_version, subscription_id, resource_group_name, resource_name, role_name)

Gets an access profile of a managed cluster.

**WARNING**: This API will be deprecated. Instead use [ListClusterUserCredentials](https://docs.microsoft.com/rest/api/aks/managedclusters/listclusterusercredentials) or [ListClusterAdminCredentials](https://docs.microsoft.com/rest/api/aks/managedclusters/listclusteradmincredentials) .

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ManagedClustersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.
role_name = 'role_name_example' # String | The name of the role for managed cluster accessProfile resource.

begin
  # Gets an access profile of a managed cluster.
  result = api_instance.managed_clusters_get_access_profile(api_version, subscription_id, resource_group_name, resource_name, role_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagedClustersApi->managed_clusters_get_access_profile: #{e}"
end
```

#### Using the managed_clusters_get_access_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ManagedClusterAccessProfile>, Integer, Hash)> managed_clusters_get_access_profile_with_http_info(api_version, subscription_id, resource_group_name, resource_name, role_name)

```ruby
begin
  # Gets an access profile of a managed cluster.
  data, status_code, headers = api_instance.managed_clusters_get_access_profile_with_http_info(api_version, subscription_id, resource_group_name, resource_name, role_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ManagedClusterAccessProfile>
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagedClustersApi->managed_clusters_get_access_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **resource_name** | **String** | The name of the managed cluster resource. |  |
| **role_name** | **String** | The name of the role for managed cluster accessProfile resource. |  |

### Return type

[**ManagedClusterAccessProfile**](ManagedClusterAccessProfile.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## managed_clusters_get_command_result

> <RunCommandResult> managed_clusters_get_command_result(api_version, subscription_id, resource_group_name, resource_name, command_id)



Gets the results of a command which has been run on the Managed Cluster.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ManagedClustersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.
command_id = 'command_id_example' # String | Id of the command.

begin
  
  result = api_instance.managed_clusters_get_command_result(api_version, subscription_id, resource_group_name, resource_name, command_id)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagedClustersApi->managed_clusters_get_command_result: #{e}"
end
```

#### Using the managed_clusters_get_command_result_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RunCommandResult>, Integer, Hash)> managed_clusters_get_command_result_with_http_info(api_version, subscription_id, resource_group_name, resource_name, command_id)

```ruby
begin
  
  data, status_code, headers = api_instance.managed_clusters_get_command_result_with_http_info(api_version, subscription_id, resource_group_name, resource_name, command_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RunCommandResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagedClustersApi->managed_clusters_get_command_result_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **resource_name** | **String** | The name of the managed cluster resource. |  |
| **command_id** | **String** | Id of the command. |  |

### Return type

[**RunCommandResult**](RunCommandResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## managed_clusters_get_mesh_revision_profile

> <MeshRevisionProfile> managed_clusters_get_mesh_revision_profile(api_version, subscription_id, location, mode)

Gets a mesh revision profile for a specified mesh in the specified location.

Contains extra metadata on the revision, including supported revisions, cluster compatibility and available upgrades

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ManagedClustersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
location = 'location_example' # String | The name of the Azure region.
mode = 'mode_example' # String | The mode of the mesh.

begin
  # Gets a mesh revision profile for a specified mesh in the specified location.
  result = api_instance.managed_clusters_get_mesh_revision_profile(api_version, subscription_id, location, mode)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagedClustersApi->managed_clusters_get_mesh_revision_profile: #{e}"
end
```

#### Using the managed_clusters_get_mesh_revision_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MeshRevisionProfile>, Integer, Hash)> managed_clusters_get_mesh_revision_profile_with_http_info(api_version, subscription_id, location, mode)

```ruby
begin
  # Gets a mesh revision profile for a specified mesh in the specified location.
  data, status_code, headers = api_instance.managed_clusters_get_mesh_revision_profile_with_http_info(api_version, subscription_id, location, mode)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MeshRevisionProfile>
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagedClustersApi->managed_clusters_get_mesh_revision_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **location** | **String** | The name of the Azure region. |  |
| **mode** | **String** | The mode of the mesh. |  |

### Return type

[**MeshRevisionProfile**](MeshRevisionProfile.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## managed_clusters_get_mesh_upgrade_profile

> <MeshUpgradeProfile> managed_clusters_get_mesh_upgrade_profile(api_version, subscription_id, resource_group_name, resource_name, mode)



Gets available upgrades for a service mesh in a cluster.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ManagedClustersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.
mode = 'mode_example' # String | The mode of the mesh.

begin
  
  result = api_instance.managed_clusters_get_mesh_upgrade_profile(api_version, subscription_id, resource_group_name, resource_name, mode)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagedClustersApi->managed_clusters_get_mesh_upgrade_profile: #{e}"
end
```

#### Using the managed_clusters_get_mesh_upgrade_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MeshUpgradeProfile>, Integer, Hash)> managed_clusters_get_mesh_upgrade_profile_with_http_info(api_version, subscription_id, resource_group_name, resource_name, mode)

```ruby
begin
  
  data, status_code, headers = api_instance.managed_clusters_get_mesh_upgrade_profile_with_http_info(api_version, subscription_id, resource_group_name, resource_name, mode)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MeshUpgradeProfile>
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagedClustersApi->managed_clusters_get_mesh_upgrade_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **resource_name** | **String** | The name of the managed cluster resource. |  |
| **mode** | **String** | The mode of the mesh. |  |

### Return type

[**MeshUpgradeProfile**](MeshUpgradeProfile.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## managed_clusters_get_upgrade_profile

> <ManagedClusterUpgradeProfile> managed_clusters_get_upgrade_profile(api_version, subscription_id, resource_group_name, resource_name)



Gets the upgrade profile of a managed cluster.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ManagedClustersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.

begin
  
  result = api_instance.managed_clusters_get_upgrade_profile(api_version, subscription_id, resource_group_name, resource_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagedClustersApi->managed_clusters_get_upgrade_profile: #{e}"
end
```

#### Using the managed_clusters_get_upgrade_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ManagedClusterUpgradeProfile>, Integer, Hash)> managed_clusters_get_upgrade_profile_with_http_info(api_version, subscription_id, resource_group_name, resource_name)

```ruby
begin
  
  data, status_code, headers = api_instance.managed_clusters_get_upgrade_profile_with_http_info(api_version, subscription_id, resource_group_name, resource_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ManagedClusterUpgradeProfile>
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagedClustersApi->managed_clusters_get_upgrade_profile_with_http_info: #{e}"
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

[**ManagedClusterUpgradeProfile**](ManagedClusterUpgradeProfile.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## managed_clusters_list

> <ManagedClusterListResult> managed_clusters_list(api_version, subscription_id)



Gets a list of managed clusters in the specified subscription.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ManagedClustersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.

begin
  
  result = api_instance.managed_clusters_list(api_version, subscription_id)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagedClustersApi->managed_clusters_list: #{e}"
end
```

#### Using the managed_clusters_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ManagedClusterListResult>, Integer, Hash)> managed_clusters_list_with_http_info(api_version, subscription_id)

```ruby
begin
  
  data, status_code, headers = api_instance.managed_clusters_list_with_http_info(api_version, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ManagedClusterListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagedClustersApi->managed_clusters_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |

### Return type

[**ManagedClusterListResult**](ManagedClusterListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## managed_clusters_list_by_resource_group

> <ManagedClusterListResult> managed_clusters_list_by_resource_group(api_version, subscription_id, resource_group_name)



Lists managed clusters in the specified subscription and resource group.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ManagedClustersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.

begin
  
  result = api_instance.managed_clusters_list_by_resource_group(api_version, subscription_id, resource_group_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagedClustersApi->managed_clusters_list_by_resource_group: #{e}"
end
```

#### Using the managed_clusters_list_by_resource_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ManagedClusterListResult>, Integer, Hash)> managed_clusters_list_by_resource_group_with_http_info(api_version, subscription_id, resource_group_name)

```ruby
begin
  
  data, status_code, headers = api_instance.managed_clusters_list_by_resource_group_with_http_info(api_version, subscription_id, resource_group_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ManagedClusterListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagedClustersApi->managed_clusters_list_by_resource_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |

### Return type

[**ManagedClusterListResult**](ManagedClusterListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## managed_clusters_list_cluster_admin_credentials

> <CredentialResults> managed_clusters_list_cluster_admin_credentials(api_version, subscription_id, resource_group_name, resource_name, opts)



Lists the admin credentials of a managed cluster.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ManagedClustersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.
opts = {
  server_fqdn: 'server_fqdn_example' # String | server fqdn type for credentials to be returned
}

begin
  
  result = api_instance.managed_clusters_list_cluster_admin_credentials(api_version, subscription_id, resource_group_name, resource_name, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagedClustersApi->managed_clusters_list_cluster_admin_credentials: #{e}"
end
```

#### Using the managed_clusters_list_cluster_admin_credentials_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredentialResults>, Integer, Hash)> managed_clusters_list_cluster_admin_credentials_with_http_info(api_version, subscription_id, resource_group_name, resource_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.managed_clusters_list_cluster_admin_credentials_with_http_info(api_version, subscription_id, resource_group_name, resource_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredentialResults>
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagedClustersApi->managed_clusters_list_cluster_admin_credentials_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **resource_name** | **String** | The name of the managed cluster resource. |  |
| **server_fqdn** | **String** | server fqdn type for credentials to be returned | [optional] |

### Return type

[**CredentialResults**](CredentialResults.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## managed_clusters_list_cluster_monitoring_user_credentials

> <CredentialResults> managed_clusters_list_cluster_monitoring_user_credentials(api_version, subscription_id, resource_group_name, resource_name, opts)



Lists the cluster monitoring user credentials of a managed cluster.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ManagedClustersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.
opts = {
  server_fqdn: 'server_fqdn_example' # String | server fqdn type for credentials to be returned
}

begin
  
  result = api_instance.managed_clusters_list_cluster_monitoring_user_credentials(api_version, subscription_id, resource_group_name, resource_name, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagedClustersApi->managed_clusters_list_cluster_monitoring_user_credentials: #{e}"
end
```

#### Using the managed_clusters_list_cluster_monitoring_user_credentials_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredentialResults>, Integer, Hash)> managed_clusters_list_cluster_monitoring_user_credentials_with_http_info(api_version, subscription_id, resource_group_name, resource_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.managed_clusters_list_cluster_monitoring_user_credentials_with_http_info(api_version, subscription_id, resource_group_name, resource_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredentialResults>
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagedClustersApi->managed_clusters_list_cluster_monitoring_user_credentials_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **resource_name** | **String** | The name of the managed cluster resource. |  |
| **server_fqdn** | **String** | server fqdn type for credentials to be returned | [optional] |

### Return type

[**CredentialResults**](CredentialResults.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## managed_clusters_list_cluster_user_credentials

> <CredentialResults> managed_clusters_list_cluster_user_credentials(api_version, subscription_id, resource_group_name, resource_name, opts)



Lists the user credentials of a managed cluster.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ManagedClustersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.
opts = {
  server_fqdn: 'server_fqdn_example', # String | server fqdn type for credentials to be returned
  format: 'azure' # String | Only apply to AAD clusters, specifies the format of returned kubeconfig. Format 'azure' will return azure auth-provider kubeconfig; format 'exec' will return exec format kubeconfig, which requires kubelogin binary in the path.
}

begin
  
  result = api_instance.managed_clusters_list_cluster_user_credentials(api_version, subscription_id, resource_group_name, resource_name, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagedClustersApi->managed_clusters_list_cluster_user_credentials: #{e}"
end
```

#### Using the managed_clusters_list_cluster_user_credentials_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredentialResults>, Integer, Hash)> managed_clusters_list_cluster_user_credentials_with_http_info(api_version, subscription_id, resource_group_name, resource_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.managed_clusters_list_cluster_user_credentials_with_http_info(api_version, subscription_id, resource_group_name, resource_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredentialResults>
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagedClustersApi->managed_clusters_list_cluster_user_credentials_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **resource_name** | **String** | The name of the managed cluster resource. |  |
| **server_fqdn** | **String** | server fqdn type for credentials to be returned | [optional] |
| **format** | **String** | Only apply to AAD clusters, specifies the format of returned kubeconfig. Format &#39;azure&#39; will return azure auth-provider kubeconfig; format &#39;exec&#39; will return exec format kubeconfig, which requires kubelogin binary in the path. | [optional] |

### Return type

[**CredentialResults**](CredentialResults.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## managed_clusters_list_kubernetes_versions

> <KubernetesVersionListResult> managed_clusters_list_kubernetes_versions(api_version, subscription_id, location)

Gets a list of supported Kubernetes versions in the specified subscription.

Contains extra metadata on the version, including supported patch versions, capabilities, available upgrades, and details on preview status of the version

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ManagedClustersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
location = 'location_example' # String | The name of the Azure region.

begin
  # Gets a list of supported Kubernetes versions in the specified subscription.
  result = api_instance.managed_clusters_list_kubernetes_versions(api_version, subscription_id, location)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagedClustersApi->managed_clusters_list_kubernetes_versions: #{e}"
end
```

#### Using the managed_clusters_list_kubernetes_versions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KubernetesVersionListResult>, Integer, Hash)> managed_clusters_list_kubernetes_versions_with_http_info(api_version, subscription_id, location)

```ruby
begin
  # Gets a list of supported Kubernetes versions in the specified subscription.
  data, status_code, headers = api_instance.managed_clusters_list_kubernetes_versions_with_http_info(api_version, subscription_id, location)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KubernetesVersionListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagedClustersApi->managed_clusters_list_kubernetes_versions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **location** | **String** | The name of the Azure region. |  |

### Return type

[**KubernetesVersionListResult**](KubernetesVersionListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## managed_clusters_list_mesh_revision_profiles

> <MeshRevisionProfileList> managed_clusters_list_mesh_revision_profiles(api_version, subscription_id, location)

Lists mesh revision profiles for all meshes in the specified location.

Contains extra metadata on each revision, including supported revisions, cluster compatibility and available upgrades

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ManagedClustersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
location = 'location_example' # String | The name of the Azure region.

begin
  # Lists mesh revision profiles for all meshes in the specified location.
  result = api_instance.managed_clusters_list_mesh_revision_profiles(api_version, subscription_id, location)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagedClustersApi->managed_clusters_list_mesh_revision_profiles: #{e}"
end
```

#### Using the managed_clusters_list_mesh_revision_profiles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MeshRevisionProfileList>, Integer, Hash)> managed_clusters_list_mesh_revision_profiles_with_http_info(api_version, subscription_id, location)

```ruby
begin
  # Lists mesh revision profiles for all meshes in the specified location.
  data, status_code, headers = api_instance.managed_clusters_list_mesh_revision_profiles_with_http_info(api_version, subscription_id, location)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MeshRevisionProfileList>
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagedClustersApi->managed_clusters_list_mesh_revision_profiles_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **location** | **String** | The name of the Azure region. |  |

### Return type

[**MeshRevisionProfileList**](MeshRevisionProfileList.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## managed_clusters_list_mesh_upgrade_profiles

> <MeshUpgradeProfileList> managed_clusters_list_mesh_upgrade_profiles(api_version, subscription_id, resource_group_name, resource_name)



Lists available upgrades for all service meshes in a specific cluster.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ManagedClustersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.

begin
  
  result = api_instance.managed_clusters_list_mesh_upgrade_profiles(api_version, subscription_id, resource_group_name, resource_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagedClustersApi->managed_clusters_list_mesh_upgrade_profiles: #{e}"
end
```

#### Using the managed_clusters_list_mesh_upgrade_profiles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MeshUpgradeProfileList>, Integer, Hash)> managed_clusters_list_mesh_upgrade_profiles_with_http_info(api_version, subscription_id, resource_group_name, resource_name)

```ruby
begin
  
  data, status_code, headers = api_instance.managed_clusters_list_mesh_upgrade_profiles_with_http_info(api_version, subscription_id, resource_group_name, resource_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MeshUpgradeProfileList>
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagedClustersApi->managed_clusters_list_mesh_upgrade_profiles_with_http_info: #{e}"
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

[**MeshUpgradeProfileList**](MeshUpgradeProfileList.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## managed_clusters_list_outbound_network_dependencies_endpoints

> <OutboundEnvironmentEndpointCollection> managed_clusters_list_outbound_network_dependencies_endpoints(api_version, subscription_id, resource_group_name, resource_name)

Gets a list of egress endpoints (network endpoints of all outbound dependencies) in the specified managed cluster.

Gets a list of egress endpoints (network endpoints of all outbound dependencies) in the specified managed cluster. The operation returns properties of each egress endpoint.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ManagedClustersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.

begin
  # Gets a list of egress endpoints (network endpoints of all outbound dependencies) in the specified managed cluster.
  result = api_instance.managed_clusters_list_outbound_network_dependencies_endpoints(api_version, subscription_id, resource_group_name, resource_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagedClustersApi->managed_clusters_list_outbound_network_dependencies_endpoints: #{e}"
end
```

#### Using the managed_clusters_list_outbound_network_dependencies_endpoints_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OutboundEnvironmentEndpointCollection>, Integer, Hash)> managed_clusters_list_outbound_network_dependencies_endpoints_with_http_info(api_version, subscription_id, resource_group_name, resource_name)

```ruby
begin
  # Gets a list of egress endpoints (network endpoints of all outbound dependencies) in the specified managed cluster.
  data, status_code, headers = api_instance.managed_clusters_list_outbound_network_dependencies_endpoints_with_http_info(api_version, subscription_id, resource_group_name, resource_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OutboundEnvironmentEndpointCollection>
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagedClustersApi->managed_clusters_list_outbound_network_dependencies_endpoints_with_http_info: #{e}"
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

[**OutboundEnvironmentEndpointCollection**](OutboundEnvironmentEndpointCollection.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## managed_clusters_reset_aad_profile

> managed_clusters_reset_aad_profile(api_version, subscription_id, resource_group_name, resource_name, parameters)

Reset the AAD Profile of a managed cluster.

**WARNING**: This API will be deprecated. Please see [AKS-managed Azure Active Directory integration](https://aka.ms/aks-managed-aad) to update your cluster with AKS-managed Azure AD.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ManagedClustersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.
parameters = AzureSDK::ManagedClusterAADProfile.new # ManagedClusterAADProfile | The AAD profile to set on the Managed Cluster

begin
  # Reset the AAD Profile of a managed cluster.
  api_instance.managed_clusters_reset_aad_profile(api_version, subscription_id, resource_group_name, resource_name, parameters)
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagedClustersApi->managed_clusters_reset_aad_profile: #{e}"
end
```

#### Using the managed_clusters_reset_aad_profile_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> managed_clusters_reset_aad_profile_with_http_info(api_version, subscription_id, resource_group_name, resource_name, parameters)

```ruby
begin
  # Reset the AAD Profile of a managed cluster.
  data, status_code, headers = api_instance.managed_clusters_reset_aad_profile_with_http_info(api_version, subscription_id, resource_group_name, resource_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagedClustersApi->managed_clusters_reset_aad_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **resource_name** | **String** | The name of the managed cluster resource. |  |
| **parameters** | [**ManagedClusterAADProfile**](ManagedClusterAADProfile.md) | The AAD profile to set on the Managed Cluster |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## managed_clusters_reset_service_principal_profile

> managed_clusters_reset_service_principal_profile(api_version, subscription_id, resource_group_name, resource_name, parameters)

Reset the Service Principal Profile of a managed cluster.

This action cannot be performed on a cluster that is not using a service principal

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ManagedClustersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.
parameters = AzureSDK::ManagedClusterServicePrincipalProfile.new({client_id: 'client_id_example'}) # ManagedClusterServicePrincipalProfile | The service principal profile to set on the managed cluster.

begin
  # Reset the Service Principal Profile of a managed cluster.
  api_instance.managed_clusters_reset_service_principal_profile(api_version, subscription_id, resource_group_name, resource_name, parameters)
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagedClustersApi->managed_clusters_reset_service_principal_profile: #{e}"
end
```

#### Using the managed_clusters_reset_service_principal_profile_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> managed_clusters_reset_service_principal_profile_with_http_info(api_version, subscription_id, resource_group_name, resource_name, parameters)

```ruby
begin
  # Reset the Service Principal Profile of a managed cluster.
  data, status_code, headers = api_instance.managed_clusters_reset_service_principal_profile_with_http_info(api_version, subscription_id, resource_group_name, resource_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagedClustersApi->managed_clusters_reset_service_principal_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **resource_name** | **String** | The name of the managed cluster resource. |  |
| **parameters** | [**ManagedClusterServicePrincipalProfile**](ManagedClusterServicePrincipalProfile.md) | The service principal profile to set on the managed cluster. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## managed_clusters_rotate_cluster_certificates

> managed_clusters_rotate_cluster_certificates(api_version, subscription_id, resource_group_name, resource_name)

Rotates the certificates of a managed cluster.

See [Certificate rotation](https://docs.microsoft.com/azure/aks/certificate-rotation) for more details about rotating managed cluster certificates.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ManagedClustersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.

begin
  # Rotates the certificates of a managed cluster.
  api_instance.managed_clusters_rotate_cluster_certificates(api_version, subscription_id, resource_group_name, resource_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagedClustersApi->managed_clusters_rotate_cluster_certificates: #{e}"
end
```

#### Using the managed_clusters_rotate_cluster_certificates_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> managed_clusters_rotate_cluster_certificates_with_http_info(api_version, subscription_id, resource_group_name, resource_name)

```ruby
begin
  # Rotates the certificates of a managed cluster.
  data, status_code, headers = api_instance.managed_clusters_rotate_cluster_certificates_with_http_info(api_version, subscription_id, resource_group_name, resource_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagedClustersApi->managed_clusters_rotate_cluster_certificates_with_http_info: #{e}"
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

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## managed_clusters_rotate_service_account_signing_keys

> managed_clusters_rotate_service_account_signing_keys(api_version, subscription_id, resource_group_name, resource_name)



Rotates the service account signing keys of a managed cluster.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ManagedClustersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.

begin
  
  api_instance.managed_clusters_rotate_service_account_signing_keys(api_version, subscription_id, resource_group_name, resource_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagedClustersApi->managed_clusters_rotate_service_account_signing_keys: #{e}"
end
```

#### Using the managed_clusters_rotate_service_account_signing_keys_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> managed_clusters_rotate_service_account_signing_keys_with_http_info(api_version, subscription_id, resource_group_name, resource_name)

```ruby
begin
  
  data, status_code, headers = api_instance.managed_clusters_rotate_service_account_signing_keys_with_http_info(api_version, subscription_id, resource_group_name, resource_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagedClustersApi->managed_clusters_rotate_service_account_signing_keys_with_http_info: #{e}"
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

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## managed_clusters_run_command

> <RunCommandResult> managed_clusters_run_command(api_version, subscription_id, resource_group_name, resource_name, request_payload)

Submits a command to run against the Managed Cluster.

AKS will create a pod to run the command. This is primarily useful for private clusters. For more information see [AKS Run Command](https://docs.microsoft.com/azure/aks/private-clusters#aks-run-command-preview).

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ManagedClustersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.
request_payload = AzureSDK::RunCommandRequest.new({command: 'command_example'}) # RunCommandRequest | The run command request

begin
  # Submits a command to run against the Managed Cluster.
  result = api_instance.managed_clusters_run_command(api_version, subscription_id, resource_group_name, resource_name, request_payload)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagedClustersApi->managed_clusters_run_command: #{e}"
end
```

#### Using the managed_clusters_run_command_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RunCommandResult>, Integer, Hash)> managed_clusters_run_command_with_http_info(api_version, subscription_id, resource_group_name, resource_name, request_payload)

```ruby
begin
  # Submits a command to run against the Managed Cluster.
  data, status_code, headers = api_instance.managed_clusters_run_command_with_http_info(api_version, subscription_id, resource_group_name, resource_name, request_payload)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RunCommandResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagedClustersApi->managed_clusters_run_command_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **resource_name** | **String** | The name of the managed cluster resource. |  |
| **request_payload** | [**RunCommandRequest**](RunCommandRequest.md) | The run command request |  |

### Return type

[**RunCommandResult**](RunCommandResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## managed_clusters_start

> managed_clusters_start(api_version, subscription_id, resource_group_name, resource_name)

Starts a previously stopped Managed Cluster

See [starting a cluster](https://docs.microsoft.com/azure/aks/start-stop-cluster) for more details about starting a cluster.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ManagedClustersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.

begin
  # Starts a previously stopped Managed Cluster
  api_instance.managed_clusters_start(api_version, subscription_id, resource_group_name, resource_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagedClustersApi->managed_clusters_start: #{e}"
end
```

#### Using the managed_clusters_start_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> managed_clusters_start_with_http_info(api_version, subscription_id, resource_group_name, resource_name)

```ruby
begin
  # Starts a previously stopped Managed Cluster
  data, status_code, headers = api_instance.managed_clusters_start_with_http_info(api_version, subscription_id, resource_group_name, resource_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagedClustersApi->managed_clusters_start_with_http_info: #{e}"
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

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## managed_clusters_stop

> managed_clusters_stop(api_version, subscription_id, resource_group_name, resource_name)

Stops a Managed Cluster

This can only be performed on Azure Virtual Machine Scale set backed clusters. Stopping a cluster stops the control plane and agent nodes entirely, while maintaining all object and cluster state. A cluster does not accrue charges while it is stopped. See [stopping a cluster](https://docs.microsoft.com/azure/aks/start-stop-cluster) for more details about stopping a cluster.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ManagedClustersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.

begin
  # Stops a Managed Cluster
  api_instance.managed_clusters_stop(api_version, subscription_id, resource_group_name, resource_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagedClustersApi->managed_clusters_stop: #{e}"
end
```

#### Using the managed_clusters_stop_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> managed_clusters_stop_with_http_info(api_version, subscription_id, resource_group_name, resource_name)

```ruby
begin
  # Stops a Managed Cluster
  data, status_code, headers = api_instance.managed_clusters_stop_with_http_info(api_version, subscription_id, resource_group_name, resource_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagedClustersApi->managed_clusters_stop_with_http_info: #{e}"
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

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## managed_clusters_update_tags

> <ManagedCluster> managed_clusters_update_tags(api_version, subscription_id, resource_group_name, resource_name, parameters, opts)



Updates tags on a managed cluster.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ManagedClustersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.
parameters = AzureSDK::TagsObject.new # TagsObject | Parameters supplied to the Update Managed Cluster Tags operation.
opts = {
  if_match: 'if_match_example' # String | The request should only proceed if an entity matches this string.
}

begin
  
  result = api_instance.managed_clusters_update_tags(api_version, subscription_id, resource_group_name, resource_name, parameters, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagedClustersApi->managed_clusters_update_tags: #{e}"
end
```

#### Using the managed_clusters_update_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ManagedCluster>, Integer, Hash)> managed_clusters_update_tags_with_http_info(api_version, subscription_id, resource_group_name, resource_name, parameters, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.managed_clusters_update_tags_with_http_info(api_version, subscription_id, resource_group_name, resource_name, parameters, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ManagedCluster>
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagedClustersApi->managed_clusters_update_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **resource_name** | **String** | The name of the managed cluster resource. |  |
| **parameters** | [**TagsObject**](TagsObject.md) | Parameters supplied to the Update Managed Cluster Tags operation. |  |
| **if_match** | **String** | The request should only proceed if an entity matches this string. | [optional] |

### Return type

[**ManagedCluster**](ManagedCluster.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## operations_list

> <OperationListResult> operations_list(api_version)



Gets a list of operations.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ManagedClustersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.

begin
  
  result = api_instance.operations_list(api_version)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagedClustersApi->operations_list: #{e}"
end
```

#### Using the operations_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OperationListResult>, Integer, Hash)> operations_list_with_http_info(api_version)

```ruby
begin
  
  data, status_code, headers = api_instance.operations_list_with_http_info(api_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OperationListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagedClustersApi->operations_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |

### Return type

[**OperationListResult**](OperationListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

