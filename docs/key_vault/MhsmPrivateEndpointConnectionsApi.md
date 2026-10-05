# AzureRest::MhsmPrivateEndpointConnectionsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**m_hsm_private_endpoint_connections_delete**](MhsmPrivateEndpointConnectionsApi.md#m_hsm_private_endpoint_connections_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.KeyVault/managedHSMs/{name}/privateEndpointConnections/{privateEndpointConnectionName} |  |
| [**m_hsm_private_endpoint_connections_get**](MhsmPrivateEndpointConnectionsApi.md#m_hsm_private_endpoint_connections_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.KeyVault/managedHSMs/{name}/privateEndpointConnections/{privateEndpointConnectionName} |  |
| [**m_hsm_private_endpoint_connections_list_by_resource**](MhsmPrivateEndpointConnectionsApi.md#m_hsm_private_endpoint_connections_list_by_resource) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.KeyVault/managedHSMs/{name}/privateEndpointConnections |  |
| [**m_hsm_private_endpoint_connections_put**](MhsmPrivateEndpointConnectionsApi.md#m_hsm_private_endpoint_connections_put) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.KeyVault/managedHSMs/{name}/privateEndpointConnections/{privateEndpointConnectionName} |  |


## m_hsm_private_endpoint_connections_delete

> <MHSMPrivateEndpointConnection> m_hsm_private_endpoint_connections_delete(api_version, subscription_id, resource_group_name, name, private_endpoint_connection_name)



Deletes the specified private endpoint connection associated with the managed hsm pool.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::MhsmPrivateEndpointConnectionsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
name = 'name_example' # String | The name of the managed HSM Pool.
private_endpoint_connection_name = 'private_endpoint_connection_name_example' # String | Name of the private endpoint connection associated with the managed hsm pool.

begin
  
  result = api_instance.m_hsm_private_endpoint_connections_delete(api_version, subscription_id, resource_group_name, name, private_endpoint_connection_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling MhsmPrivateEndpointConnectionsApi->m_hsm_private_endpoint_connections_delete: #{e}"
end
```

#### Using the m_hsm_private_endpoint_connections_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MHSMPrivateEndpointConnection>, Integer, Hash)> m_hsm_private_endpoint_connections_delete_with_http_info(api_version, subscription_id, resource_group_name, name, private_endpoint_connection_name)

```ruby
begin
  
  data, status_code, headers = api_instance.m_hsm_private_endpoint_connections_delete_with_http_info(api_version, subscription_id, resource_group_name, name, private_endpoint_connection_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MHSMPrivateEndpointConnection>
rescue AzureRest::ApiError => e
  puts "Error when calling MhsmPrivateEndpointConnectionsApi->m_hsm_private_endpoint_connections_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **name** | **String** | The name of the managed HSM Pool. |  |
| **private_endpoint_connection_name** | **String** | Name of the private endpoint connection associated with the managed hsm pool. |  |

### Return type

[**MHSMPrivateEndpointConnection**](MHSMPrivateEndpointConnection.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## m_hsm_private_endpoint_connections_get

> <MHSMPrivateEndpointConnection> m_hsm_private_endpoint_connections_get(api_version, subscription_id, resource_group_name, name, private_endpoint_connection_name)



Gets the specified private endpoint connection associated with the managed HSM Pool.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::MhsmPrivateEndpointConnectionsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
name = 'name_example' # String | The name of the managed HSM Pool.
private_endpoint_connection_name = 'private_endpoint_connection_name_example' # String | Name of the private endpoint connection associated with the managed hsm pool.

begin
  
  result = api_instance.m_hsm_private_endpoint_connections_get(api_version, subscription_id, resource_group_name, name, private_endpoint_connection_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling MhsmPrivateEndpointConnectionsApi->m_hsm_private_endpoint_connections_get: #{e}"
end
```

#### Using the m_hsm_private_endpoint_connections_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MHSMPrivateEndpointConnection>, Integer, Hash)> m_hsm_private_endpoint_connections_get_with_http_info(api_version, subscription_id, resource_group_name, name, private_endpoint_connection_name)

```ruby
begin
  
  data, status_code, headers = api_instance.m_hsm_private_endpoint_connections_get_with_http_info(api_version, subscription_id, resource_group_name, name, private_endpoint_connection_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MHSMPrivateEndpointConnection>
rescue AzureRest::ApiError => e
  puts "Error when calling MhsmPrivateEndpointConnectionsApi->m_hsm_private_endpoint_connections_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **name** | **String** | The name of the managed HSM Pool. |  |
| **private_endpoint_connection_name** | **String** | Name of the private endpoint connection associated with the managed hsm pool. |  |

### Return type

[**MHSMPrivateEndpointConnection**](MHSMPrivateEndpointConnection.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## m_hsm_private_endpoint_connections_list_by_resource

> <MHSMPrivateEndpointConnectionsListResult> m_hsm_private_endpoint_connections_list_by_resource(api_version, subscription_id, resource_group_name, name)



The List operation gets information about the private endpoint connections associated with the managed HSM Pool.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::MhsmPrivateEndpointConnectionsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
name = 'name_example' # String | The name of the managed HSM Pool.

begin
  
  result = api_instance.m_hsm_private_endpoint_connections_list_by_resource(api_version, subscription_id, resource_group_name, name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling MhsmPrivateEndpointConnectionsApi->m_hsm_private_endpoint_connections_list_by_resource: #{e}"
end
```

#### Using the m_hsm_private_endpoint_connections_list_by_resource_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MHSMPrivateEndpointConnectionsListResult>, Integer, Hash)> m_hsm_private_endpoint_connections_list_by_resource_with_http_info(api_version, subscription_id, resource_group_name, name)

```ruby
begin
  
  data, status_code, headers = api_instance.m_hsm_private_endpoint_connections_list_by_resource_with_http_info(api_version, subscription_id, resource_group_name, name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MHSMPrivateEndpointConnectionsListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling MhsmPrivateEndpointConnectionsApi->m_hsm_private_endpoint_connections_list_by_resource_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **name** | **String** | The name of the managed HSM Pool. |  |

### Return type

[**MHSMPrivateEndpointConnectionsListResult**](MHSMPrivateEndpointConnectionsListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## m_hsm_private_endpoint_connections_put

> <MHSMPrivateEndpointConnection> m_hsm_private_endpoint_connections_put(api_version, subscription_id, resource_group_name, name, private_endpoint_connection_name, properties)



Updates the specified private endpoint connection associated with the managed hsm pool.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::MhsmPrivateEndpointConnectionsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
name = 'name_example' # String | The name of the managed HSM Pool.
private_endpoint_connection_name = 'private_endpoint_connection_name_example' # String | Name of the private endpoint connection associated with the managed hsm pool.
properties = AzureRest::MHSMPrivateEndpointConnection.new # MHSMPrivateEndpointConnection | The intended state of private endpoint connection.

begin
  
  result = api_instance.m_hsm_private_endpoint_connections_put(api_version, subscription_id, resource_group_name, name, private_endpoint_connection_name, properties)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling MhsmPrivateEndpointConnectionsApi->m_hsm_private_endpoint_connections_put: #{e}"
end
```

#### Using the m_hsm_private_endpoint_connections_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MHSMPrivateEndpointConnection>, Integer, Hash)> m_hsm_private_endpoint_connections_put_with_http_info(api_version, subscription_id, resource_group_name, name, private_endpoint_connection_name, properties)

```ruby
begin
  
  data, status_code, headers = api_instance.m_hsm_private_endpoint_connections_put_with_http_info(api_version, subscription_id, resource_group_name, name, private_endpoint_connection_name, properties)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MHSMPrivateEndpointConnection>
rescue AzureRest::ApiError => e
  puts "Error when calling MhsmPrivateEndpointConnectionsApi->m_hsm_private_endpoint_connections_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **name** | **String** | The name of the managed HSM Pool. |  |
| **private_endpoint_connection_name** | **String** | Name of the private endpoint connection associated with the managed hsm pool. |  |
| **properties** | [**MHSMPrivateEndpointConnection**](MHSMPrivateEndpointConnection.md) | The intended state of private endpoint connection. |  |

### Return type

[**MHSMPrivateEndpointConnection**](MHSMPrivateEndpointConnection.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

