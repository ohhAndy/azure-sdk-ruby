# AzureRest::ClustersApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**clusters_create**](ClustersApi.md#clusters_create) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HDInsight/clusters/{clusterName} |  |
| [**clusters_delete**](ClustersApi.md#clusters_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HDInsight/clusters/{clusterName} |  |
| [**clusters_get**](ClustersApi.md#clusters_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HDInsight/clusters/{clusterName} |  |
| [**clusters_get_azure_async_operation_status**](ClustersApi.md#clusters_get_azure_async_operation_status) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HDInsight/clusters/{clusterName}/azureasyncoperations/{operationId} |  |
| [**clusters_get_gateway_settings**](ClustersApi.md#clusters_get_gateway_settings) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HDInsight/clusters/{clusterName}/getGatewaySettings |  |
| [**clusters_list**](ClustersApi.md#clusters_list) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.HDInsight/clusters |  |
| [**clusters_list_by_resource_group**](ClustersApi.md#clusters_list_by_resource_group) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HDInsight/clusters |  |
| [**clusters_resize**](ClustersApi.md#clusters_resize) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HDInsight/clusters/{clusterName}/roles/{roleName}/resize |  |
| [**clusters_rotate_disk_encryption_key**](ClustersApi.md#clusters_rotate_disk_encryption_key) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HDInsight/clusters/{clusterName}/rotatediskencryptionkey |  |
| [**clusters_update**](ClustersApi.md#clusters_update) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HDInsight/clusters/{clusterName} |  |
| [**clusters_update_auto_scale_configuration**](ClustersApi.md#clusters_update_auto_scale_configuration) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HDInsight/clusters/{clusterName}/roles/{roleName}/autoscale |  |
| [**clusters_update_gateway_settings**](ClustersApi.md#clusters_update_gateway_settings) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HDInsight/clusters/{clusterName}/updateGatewaySettings |  |
| [**clusters_update_identity_certificate**](ClustersApi.md#clusters_update_identity_certificate) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HDInsight/clusters/{clusterName}/updateClusterIdentityCertificate |  |


## clusters_create

> <Cluster> clusters_create(subscription_id, resource_group_name, cluster_name, api_version, parameters)



Creates a new HDInsight cluster with the specified parameters.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ClustersApi.new
subscription_id = 'subscription_id_example' # String | The subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group.
cluster_name = 'cluster_name_example' # String | The name of the cluster.
api_version = 'api_version_example' # String | The HDInsight client API Version.
parameters = AzureRest::ClusterCreateParametersExtended.new # ClusterCreateParametersExtended | The cluster create request.

begin
  
  result = api_instance.clusters_create(subscription_id, resource_group_name, cluster_name, api_version, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ClustersApi->clusters_create: #{e}"
end
```

#### Using the clusters_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Cluster>, Integer, Hash)> clusters_create_with_http_info(subscription_id, resource_group_name, cluster_name, api_version, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.clusters_create_with_http_info(subscription_id, resource_group_name, cluster_name, api_version, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Cluster>
rescue AzureRest::ApiError => e
  puts "Error when calling ClustersApi->clusters_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** | The subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |  |
| **resource_group_name** | **String** | The name of the resource group. |  |
| **cluster_name** | **String** | The name of the cluster. |  |
| **api_version** | **String** | The HDInsight client API Version. |  |
| **parameters** | [**ClusterCreateParametersExtended**](ClusterCreateParametersExtended.md) | The cluster create request. |  |

### Return type

[**Cluster**](Cluster.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## clusters_delete

> clusters_delete(subscription_id, resource_group_name, cluster_name, api_version)



Deletes the specified HDInsight cluster.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ClustersApi.new
subscription_id = 'subscription_id_example' # String | The subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group.
cluster_name = 'cluster_name_example' # String | The name of the cluster.
api_version = 'api_version_example' # String | The HDInsight client API Version.

begin
  
  api_instance.clusters_delete(subscription_id, resource_group_name, cluster_name, api_version)
rescue AzureRest::ApiError => e
  puts "Error when calling ClustersApi->clusters_delete: #{e}"
end
```

#### Using the clusters_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> clusters_delete_with_http_info(subscription_id, resource_group_name, cluster_name, api_version)

```ruby
begin
  
  data, status_code, headers = api_instance.clusters_delete_with_http_info(subscription_id, resource_group_name, cluster_name, api_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling ClustersApi->clusters_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** | The subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |  |
| **resource_group_name** | **String** | The name of the resource group. |  |
| **cluster_name** | **String** | The name of the cluster. |  |
| **api_version** | **String** | The HDInsight client API Version. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## clusters_get

> <Cluster> clusters_get(subscription_id, resource_group_name, cluster_name, api_version)



Gets the specified cluster.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ClustersApi.new
subscription_id = 'subscription_id_example' # String | The subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group.
cluster_name = 'cluster_name_example' # String | The name of the cluster.
api_version = 'api_version_example' # String | The HDInsight client API Version.

begin
  
  result = api_instance.clusters_get(subscription_id, resource_group_name, cluster_name, api_version)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ClustersApi->clusters_get: #{e}"
end
```

#### Using the clusters_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Cluster>, Integer, Hash)> clusters_get_with_http_info(subscription_id, resource_group_name, cluster_name, api_version)

```ruby
begin
  
  data, status_code, headers = api_instance.clusters_get_with_http_info(subscription_id, resource_group_name, cluster_name, api_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Cluster>
rescue AzureRest::ApiError => e
  puts "Error when calling ClustersApi->clusters_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** | The subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |  |
| **resource_group_name** | **String** | The name of the resource group. |  |
| **cluster_name** | **String** | The name of the cluster. |  |
| **api_version** | **String** | The HDInsight client API Version. |  |

### Return type

[**Cluster**](Cluster.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## clusters_get_azure_async_operation_status

> <AsyncOperationResult> clusters_get_azure_async_operation_status(subscription_id, resource_group_name, cluster_name, api_version, operation_id)



The the async operation status.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ClustersApi.new
subscription_id = 'subscription_id_example' # String | The subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group.
cluster_name = 'cluster_name_example' # String | The name of the cluster.
api_version = 'api_version_example' # String | The HDInsight client API Version.
operation_id = 'operation_id_example' # String | The long running operation id.

begin
  
  result = api_instance.clusters_get_azure_async_operation_status(subscription_id, resource_group_name, cluster_name, api_version, operation_id)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ClustersApi->clusters_get_azure_async_operation_status: #{e}"
end
```

#### Using the clusters_get_azure_async_operation_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AsyncOperationResult>, Integer, Hash)> clusters_get_azure_async_operation_status_with_http_info(subscription_id, resource_group_name, cluster_name, api_version, operation_id)

```ruby
begin
  
  data, status_code, headers = api_instance.clusters_get_azure_async_operation_status_with_http_info(subscription_id, resource_group_name, cluster_name, api_version, operation_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AsyncOperationResult>
rescue AzureRest::ApiError => e
  puts "Error when calling ClustersApi->clusters_get_azure_async_operation_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** | The subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |  |
| **resource_group_name** | **String** | The name of the resource group. |  |
| **cluster_name** | **String** | The name of the cluster. |  |
| **api_version** | **String** | The HDInsight client API Version. |  |
| **operation_id** | **String** | The long running operation id. |  |

### Return type

[**AsyncOperationResult**](AsyncOperationResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## clusters_get_gateway_settings

> <GatewaySettings> clusters_get_gateway_settings(subscription_id, resource_group_name, cluster_name, api_version)



Gets the gateway settings for the specified cluster.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ClustersApi.new
subscription_id = 'subscription_id_example' # String | The subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group.
cluster_name = 'cluster_name_example' # String | The name of the cluster.
api_version = 'api_version_example' # String | The HDInsight client API Version.

begin
  
  result = api_instance.clusters_get_gateway_settings(subscription_id, resource_group_name, cluster_name, api_version)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ClustersApi->clusters_get_gateway_settings: #{e}"
end
```

#### Using the clusters_get_gateway_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GatewaySettings>, Integer, Hash)> clusters_get_gateway_settings_with_http_info(subscription_id, resource_group_name, cluster_name, api_version)

```ruby
begin
  
  data, status_code, headers = api_instance.clusters_get_gateway_settings_with_http_info(subscription_id, resource_group_name, cluster_name, api_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GatewaySettings>
rescue AzureRest::ApiError => e
  puts "Error when calling ClustersApi->clusters_get_gateway_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** | The subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |  |
| **resource_group_name** | **String** | The name of the resource group. |  |
| **cluster_name** | **String** | The name of the cluster. |  |
| **api_version** | **String** | The HDInsight client API Version. |  |

### Return type

[**GatewaySettings**](GatewaySettings.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## clusters_list

> <ClusterListResult> clusters_list(subscription_id, api_version)



Lists all the HDInsight clusters under the subscription.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ClustersApi.new
subscription_id = 'subscription_id_example' # String | The subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
api_version = 'api_version_example' # String | The HDInsight client API Version.

begin
  
  result = api_instance.clusters_list(subscription_id, api_version)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ClustersApi->clusters_list: #{e}"
end
```

#### Using the clusters_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClusterListResult>, Integer, Hash)> clusters_list_with_http_info(subscription_id, api_version)

```ruby
begin
  
  data, status_code, headers = api_instance.clusters_list_with_http_info(subscription_id, api_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClusterListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling ClustersApi->clusters_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** | The subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |  |
| **api_version** | **String** | The HDInsight client API Version. |  |

### Return type

[**ClusterListResult**](ClusterListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## clusters_list_by_resource_group

> <ClusterListResult> clusters_list_by_resource_group(subscription_id, resource_group_name, api_version)



Lists the HDInsight clusters in a resource group.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ClustersApi.new
subscription_id = 'subscription_id_example' # String | The subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group.
api_version = 'api_version_example' # String | The HDInsight client API Version.

begin
  
  result = api_instance.clusters_list_by_resource_group(subscription_id, resource_group_name, api_version)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ClustersApi->clusters_list_by_resource_group: #{e}"
end
```

#### Using the clusters_list_by_resource_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClusterListResult>, Integer, Hash)> clusters_list_by_resource_group_with_http_info(subscription_id, resource_group_name, api_version)

```ruby
begin
  
  data, status_code, headers = api_instance.clusters_list_by_resource_group_with_http_info(subscription_id, resource_group_name, api_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClusterListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling ClustersApi->clusters_list_by_resource_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** | The subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |  |
| **resource_group_name** | **String** | The name of the resource group. |  |
| **api_version** | **String** | The HDInsight client API Version. |  |

### Return type

[**ClusterListResult**](ClusterListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## clusters_resize

> clusters_resize(subscription_id, resource_group_name, cluster_name, role_name, api_version, parameters)



Resizes the specified HDInsight cluster to the specified size.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ClustersApi.new
subscription_id = 'subscription_id_example' # String | The subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group.
cluster_name = 'cluster_name_example' # String | The name of the cluster.
role_name = 'workernode' # String | The constant value for the roleName
api_version = 'api_version_example' # String | The HDInsight client API Version.
parameters = AzureRest::ClusterResizeParameters.new # ClusterResizeParameters | The parameters for the resize operation.

begin
  
  api_instance.clusters_resize(subscription_id, resource_group_name, cluster_name, role_name, api_version, parameters)
rescue AzureRest::ApiError => e
  puts "Error when calling ClustersApi->clusters_resize: #{e}"
end
```

#### Using the clusters_resize_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> clusters_resize_with_http_info(subscription_id, resource_group_name, cluster_name, role_name, api_version, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.clusters_resize_with_http_info(subscription_id, resource_group_name, cluster_name, role_name, api_version, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling ClustersApi->clusters_resize_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** | The subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |  |
| **resource_group_name** | **String** | The name of the resource group. |  |
| **cluster_name** | **String** | The name of the cluster. |  |
| **role_name** | **String** | The constant value for the roleName |  |
| **api_version** | **String** | The HDInsight client API Version. |  |
| **parameters** | [**ClusterResizeParameters**](ClusterResizeParameters.md) | The parameters for the resize operation. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## clusters_rotate_disk_encryption_key

> clusters_rotate_disk_encryption_key(subscription_id, resource_group_name, cluster_name, api_version, parameters)



Rotate disk encryption key of the specified HDInsight cluster.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ClustersApi.new
subscription_id = 'subscription_id_example' # String | The subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group.
cluster_name = 'cluster_name_example' # String | The name of the cluster.
api_version = 'api_version_example' # String | The HDInsight client API Version.
parameters = AzureRest::ClusterDiskEncryptionParameters.new # ClusterDiskEncryptionParameters | The parameters for the disk encryption operation.

begin
  
  api_instance.clusters_rotate_disk_encryption_key(subscription_id, resource_group_name, cluster_name, api_version, parameters)
rescue AzureRest::ApiError => e
  puts "Error when calling ClustersApi->clusters_rotate_disk_encryption_key: #{e}"
end
```

#### Using the clusters_rotate_disk_encryption_key_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> clusters_rotate_disk_encryption_key_with_http_info(subscription_id, resource_group_name, cluster_name, api_version, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.clusters_rotate_disk_encryption_key_with_http_info(subscription_id, resource_group_name, cluster_name, api_version, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling ClustersApi->clusters_rotate_disk_encryption_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** | The subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |  |
| **resource_group_name** | **String** | The name of the resource group. |  |
| **cluster_name** | **String** | The name of the cluster. |  |
| **api_version** | **String** | The HDInsight client API Version. |  |
| **parameters** | [**ClusterDiskEncryptionParameters**](ClusterDiskEncryptionParameters.md) | The parameters for the disk encryption operation. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## clusters_update

> <Cluster> clusters_update(subscription_id, resource_group_name, cluster_name, api_version, parameters)



Patch HDInsight cluster with the specified parameters.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ClustersApi.new
subscription_id = 'subscription_id_example' # String | The subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group.
cluster_name = 'cluster_name_example' # String | The name of the cluster.
api_version = 'api_version_example' # String | The HDInsight client API Version.
parameters = AzureRest::ClusterPatchParameters.new # ClusterPatchParameters | The cluster patch request.

begin
  
  result = api_instance.clusters_update(subscription_id, resource_group_name, cluster_name, api_version, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ClustersApi->clusters_update: #{e}"
end
```

#### Using the clusters_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Cluster>, Integer, Hash)> clusters_update_with_http_info(subscription_id, resource_group_name, cluster_name, api_version, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.clusters_update_with_http_info(subscription_id, resource_group_name, cluster_name, api_version, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Cluster>
rescue AzureRest::ApiError => e
  puts "Error when calling ClustersApi->clusters_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** | The subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |  |
| **resource_group_name** | **String** | The name of the resource group. |  |
| **cluster_name** | **String** | The name of the cluster. |  |
| **api_version** | **String** | The HDInsight client API Version. |  |
| **parameters** | [**ClusterPatchParameters**](ClusterPatchParameters.md) | The cluster patch request. |  |

### Return type

[**Cluster**](Cluster.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## clusters_update_auto_scale_configuration

> clusters_update_auto_scale_configuration(subscription_id, resource_group_name, cluster_name, role_name, api_version, parameters)



Updates the Autoscale Configuration for HDInsight cluster.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ClustersApi.new
subscription_id = 'subscription_id_example' # String | The subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group.
cluster_name = 'cluster_name_example' # String | The name of the cluster.
role_name = 'workernode' # String | The constant value for the roleName
api_version = 'api_version_example' # String | The HDInsight client API Version.
parameters = AzureRest::AutoscaleConfigurationUpdateParameter.new # AutoscaleConfigurationUpdateParameter | The parameters for the update autoscale configuration operation.

begin
  
  api_instance.clusters_update_auto_scale_configuration(subscription_id, resource_group_name, cluster_name, role_name, api_version, parameters)
rescue AzureRest::ApiError => e
  puts "Error when calling ClustersApi->clusters_update_auto_scale_configuration: #{e}"
end
```

#### Using the clusters_update_auto_scale_configuration_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> clusters_update_auto_scale_configuration_with_http_info(subscription_id, resource_group_name, cluster_name, role_name, api_version, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.clusters_update_auto_scale_configuration_with_http_info(subscription_id, resource_group_name, cluster_name, role_name, api_version, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling ClustersApi->clusters_update_auto_scale_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** | The subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |  |
| **resource_group_name** | **String** | The name of the resource group. |  |
| **cluster_name** | **String** | The name of the cluster. |  |
| **role_name** | **String** | The constant value for the roleName |  |
| **api_version** | **String** | The HDInsight client API Version. |  |
| **parameters** | [**AutoscaleConfigurationUpdateParameter**](AutoscaleConfigurationUpdateParameter.md) | The parameters for the update autoscale configuration operation. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## clusters_update_gateway_settings

> clusters_update_gateway_settings(subscription_id, resource_group_name, cluster_name, api_version, parameters)



Configures the gateway settings on the specified cluster.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ClustersApi.new
subscription_id = 'subscription_id_example' # String | The subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group.
cluster_name = 'cluster_name_example' # String | The name of the cluster.
api_version = 'api_version_example' # String | The HDInsight client API Version.
parameters = AzureRest::UpdateGatewaySettingsParameters.new # UpdateGatewaySettingsParameters | The cluster configurations.

begin
  
  api_instance.clusters_update_gateway_settings(subscription_id, resource_group_name, cluster_name, api_version, parameters)
rescue AzureRest::ApiError => e
  puts "Error when calling ClustersApi->clusters_update_gateway_settings: #{e}"
end
```

#### Using the clusters_update_gateway_settings_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> clusters_update_gateway_settings_with_http_info(subscription_id, resource_group_name, cluster_name, api_version, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.clusters_update_gateway_settings_with_http_info(subscription_id, resource_group_name, cluster_name, api_version, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling ClustersApi->clusters_update_gateway_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** | The subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |  |
| **resource_group_name** | **String** | The name of the resource group. |  |
| **cluster_name** | **String** | The name of the cluster. |  |
| **api_version** | **String** | The HDInsight client API Version. |  |
| **parameters** | [**UpdateGatewaySettingsParameters**](UpdateGatewaySettingsParameters.md) | The cluster configurations. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## clusters_update_identity_certificate

> clusters_update_identity_certificate(subscription_id, resource_group_name, cluster_name, api_version, parameters)



Updates the cluster identity certificate.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ClustersApi.new
subscription_id = 'subscription_id_example' # String | The subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group.
cluster_name = 'cluster_name_example' # String | The name of the cluster.
api_version = 'api_version_example' # String | The HDInsight client API Version.
parameters = AzureRest::UpdateClusterIdentityCertificateParameters.new # UpdateClusterIdentityCertificateParameters | The cluster configurations.

begin
  
  api_instance.clusters_update_identity_certificate(subscription_id, resource_group_name, cluster_name, api_version, parameters)
rescue AzureRest::ApiError => e
  puts "Error when calling ClustersApi->clusters_update_identity_certificate: #{e}"
end
```

#### Using the clusters_update_identity_certificate_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> clusters_update_identity_certificate_with_http_info(subscription_id, resource_group_name, cluster_name, api_version, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.clusters_update_identity_certificate_with_http_info(subscription_id, resource_group_name, cluster_name, api_version, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling ClustersApi->clusters_update_identity_certificate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** | The subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |  |
| **resource_group_name** | **String** | The name of the resource group. |  |
| **cluster_name** | **String** | The name of the cluster. |  |
| **api_version** | **String** | The HDInsight client API Version. |  |
| **parameters** | [**UpdateClusterIdentityCertificateParameters**](UpdateClusterIdentityCertificateParameters.md) | The cluster configurations. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

