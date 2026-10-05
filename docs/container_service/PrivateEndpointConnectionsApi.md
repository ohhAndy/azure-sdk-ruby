# AzureRest::PrivateEndpointConnectionsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**private_endpoint_connections_delete**](PrivateEndpointConnectionsApi.md#private_endpoint_connections_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/privateEndpointConnections/{privateEndpointConnectionName} |  |
| [**private_endpoint_connections_get**](PrivateEndpointConnectionsApi.md#private_endpoint_connections_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/privateEndpointConnections/{privateEndpointConnectionName} | Gets the specified private endpoint connection. |
| [**private_endpoint_connections_list**](PrivateEndpointConnectionsApi.md#private_endpoint_connections_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/privateEndpointConnections | Gets a list of private endpoint connections in the specified managed cluster. |
| [**private_endpoint_connections_update**](PrivateEndpointConnectionsApi.md#private_endpoint_connections_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/privateEndpointConnections/{privateEndpointConnectionName} |  |


## private_endpoint_connections_delete

> private_endpoint_connections_delete(api_version, subscription_id, resource_group_name, resource_name, private_endpoint_connection_name)



Deletes a private endpoint connection.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::PrivateEndpointConnectionsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.
private_endpoint_connection_name = 'private_endpoint_connection_name_example' # String | The name of the private endpoint connection.

begin
  
  api_instance.private_endpoint_connections_delete(api_version, subscription_id, resource_group_name, resource_name, private_endpoint_connection_name)
rescue AzureRest::ApiError => e
  puts "Error when calling PrivateEndpointConnectionsApi->private_endpoint_connections_delete: #{e}"
end
```

#### Using the private_endpoint_connections_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> private_endpoint_connections_delete_with_http_info(api_version, subscription_id, resource_group_name, resource_name, private_endpoint_connection_name)

```ruby
begin
  
  data, status_code, headers = api_instance.private_endpoint_connections_delete_with_http_info(api_version, subscription_id, resource_group_name, resource_name, private_endpoint_connection_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling PrivateEndpointConnectionsApi->private_endpoint_connections_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **resource_name** | **String** | The name of the managed cluster resource. |  |
| **private_endpoint_connection_name** | **String** | The name of the private endpoint connection. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## private_endpoint_connections_get

> <PrivateEndpointConnection> private_endpoint_connections_get(api_version, subscription_id, resource_group_name, resource_name, private_endpoint_connection_name)

Gets the specified private endpoint connection.

To learn more about private clusters, see: https://docs.microsoft.com/azure/aks/private-clusters

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::PrivateEndpointConnectionsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.
private_endpoint_connection_name = 'private_endpoint_connection_name_example' # String | The name of the private endpoint connection.

begin
  # Gets the specified private endpoint connection.
  result = api_instance.private_endpoint_connections_get(api_version, subscription_id, resource_group_name, resource_name, private_endpoint_connection_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling PrivateEndpointConnectionsApi->private_endpoint_connections_get: #{e}"
end
```

#### Using the private_endpoint_connections_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PrivateEndpointConnection>, Integer, Hash)> private_endpoint_connections_get_with_http_info(api_version, subscription_id, resource_group_name, resource_name, private_endpoint_connection_name)

```ruby
begin
  # Gets the specified private endpoint connection.
  data, status_code, headers = api_instance.private_endpoint_connections_get_with_http_info(api_version, subscription_id, resource_group_name, resource_name, private_endpoint_connection_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrivateEndpointConnection>
rescue AzureRest::ApiError => e
  puts "Error when calling PrivateEndpointConnectionsApi->private_endpoint_connections_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **resource_name** | **String** | The name of the managed cluster resource. |  |
| **private_endpoint_connection_name** | **String** | The name of the private endpoint connection. |  |

### Return type

[**PrivateEndpointConnection**](PrivateEndpointConnection.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## private_endpoint_connections_list

> <PrivateEndpointConnectionListResult> private_endpoint_connections_list(api_version, subscription_id, resource_group_name, resource_name)

Gets a list of private endpoint connections in the specified managed cluster.

To learn more about private clusters, see: https://docs.microsoft.com/azure/aks/private-clusters

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::PrivateEndpointConnectionsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.

begin
  # Gets a list of private endpoint connections in the specified managed cluster.
  result = api_instance.private_endpoint_connections_list(api_version, subscription_id, resource_group_name, resource_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling PrivateEndpointConnectionsApi->private_endpoint_connections_list: #{e}"
end
```

#### Using the private_endpoint_connections_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PrivateEndpointConnectionListResult>, Integer, Hash)> private_endpoint_connections_list_with_http_info(api_version, subscription_id, resource_group_name, resource_name)

```ruby
begin
  # Gets a list of private endpoint connections in the specified managed cluster.
  data, status_code, headers = api_instance.private_endpoint_connections_list_with_http_info(api_version, subscription_id, resource_group_name, resource_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrivateEndpointConnectionListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling PrivateEndpointConnectionsApi->private_endpoint_connections_list_with_http_info: #{e}"
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

[**PrivateEndpointConnectionListResult**](PrivateEndpointConnectionListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## private_endpoint_connections_update

> <PrivateEndpointConnection> private_endpoint_connections_update(api_version, subscription_id, resource_group_name, resource_name, private_endpoint_connection_name, parameters)



Updates a private endpoint connection.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::PrivateEndpointConnectionsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.
private_endpoint_connection_name = 'private_endpoint_connection_name_example' # String | The name of the private endpoint connection.
parameters = AzureRest::PrivateEndpointConnection.new # PrivateEndpointConnection | The updated private endpoint connection.

begin
  
  result = api_instance.private_endpoint_connections_update(api_version, subscription_id, resource_group_name, resource_name, private_endpoint_connection_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling PrivateEndpointConnectionsApi->private_endpoint_connections_update: #{e}"
end
```

#### Using the private_endpoint_connections_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PrivateEndpointConnection>, Integer, Hash)> private_endpoint_connections_update_with_http_info(api_version, subscription_id, resource_group_name, resource_name, private_endpoint_connection_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.private_endpoint_connections_update_with_http_info(api_version, subscription_id, resource_group_name, resource_name, private_endpoint_connection_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrivateEndpointConnection>
rescue AzureRest::ApiError => e
  puts "Error when calling PrivateEndpointConnectionsApi->private_endpoint_connections_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **resource_name** | **String** | The name of the managed cluster resource. |  |
| **private_endpoint_connection_name** | **String** | The name of the private endpoint connection. |  |
| **parameters** | [**PrivateEndpointConnection**](PrivateEndpointConnection.md) | The updated private endpoint connection. |  |

### Return type

[**PrivateEndpointConnection**](PrivateEndpointConnection.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

