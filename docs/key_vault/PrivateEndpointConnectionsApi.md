# AzureRest::PrivateEndpointConnectionsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**private_endpoint_connections_delete**](PrivateEndpointConnectionsApi.md#private_endpoint_connections_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.KeyVault/vaults/{vaultName}/privateEndpointConnections/{privateEndpointConnectionName} |  |
| [**private_endpoint_connections_get**](PrivateEndpointConnectionsApi.md#private_endpoint_connections_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.KeyVault/vaults/{vaultName}/privateEndpointConnections/{privateEndpointConnectionName} |  |
| [**private_endpoint_connections_list_by_resource**](PrivateEndpointConnectionsApi.md#private_endpoint_connections_list_by_resource) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.KeyVault/vaults/{vaultName}/privateEndpointConnections |  |
| [**private_endpoint_connections_put**](PrivateEndpointConnectionsApi.md#private_endpoint_connections_put) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.KeyVault/vaults/{vaultName}/privateEndpointConnections/{privateEndpointConnectionName} |  |


## private_endpoint_connections_delete

> <PrivateEndpointConnection> private_endpoint_connections_delete(api_version, subscription_id, resource_group_name, vault_name, private_endpoint_connection_name)



Deletes the specified private endpoint connection associated with the key vault.

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
vault_name = 'vault_name_example' # String | The name of the vault.
private_endpoint_connection_name = 'private_endpoint_connection_name_example' # String | Name of the private endpoint connection associated with the key vault.

begin
  
  result = api_instance.private_endpoint_connections_delete(api_version, subscription_id, resource_group_name, vault_name, private_endpoint_connection_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling PrivateEndpointConnectionsApi->private_endpoint_connections_delete: #{e}"
end
```

#### Using the private_endpoint_connections_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PrivateEndpointConnection>, Integer, Hash)> private_endpoint_connections_delete_with_http_info(api_version, subscription_id, resource_group_name, vault_name, private_endpoint_connection_name)

```ruby
begin
  
  data, status_code, headers = api_instance.private_endpoint_connections_delete_with_http_info(api_version, subscription_id, resource_group_name, vault_name, private_endpoint_connection_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrivateEndpointConnection>
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
| **vault_name** | **String** | The name of the vault. |  |
| **private_endpoint_connection_name** | **String** | Name of the private endpoint connection associated with the key vault. |  |

### Return type

[**PrivateEndpointConnection**](PrivateEndpointConnection.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## private_endpoint_connections_get

> <PrivateEndpointConnection> private_endpoint_connections_get(api_version, subscription_id, resource_group_name, vault_name, private_endpoint_connection_name)



Gets the specified private endpoint connection associated with the key vault.

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
vault_name = 'vault_name_example' # String | The name of the vault.
private_endpoint_connection_name = 'private_endpoint_connection_name_example' # String | Name of the private endpoint connection associated with the key vault.

begin
  
  result = api_instance.private_endpoint_connections_get(api_version, subscription_id, resource_group_name, vault_name, private_endpoint_connection_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling PrivateEndpointConnectionsApi->private_endpoint_connections_get: #{e}"
end
```

#### Using the private_endpoint_connections_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PrivateEndpointConnection>, Integer, Hash)> private_endpoint_connections_get_with_http_info(api_version, subscription_id, resource_group_name, vault_name, private_endpoint_connection_name)

```ruby
begin
  
  data, status_code, headers = api_instance.private_endpoint_connections_get_with_http_info(api_version, subscription_id, resource_group_name, vault_name, private_endpoint_connection_name)
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
| **vault_name** | **String** | The name of the vault. |  |
| **private_endpoint_connection_name** | **String** | Name of the private endpoint connection associated with the key vault. |  |

### Return type

[**PrivateEndpointConnection**](PrivateEndpointConnection.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## private_endpoint_connections_list_by_resource

> <PrivateEndpointConnectionListResult> private_endpoint_connections_list_by_resource(api_version, subscription_id, resource_group_name, vault_name)



The List operation gets information about the private endpoint connections associated with the vault.

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
vault_name = 'vault_name_example' # String | The name of the vault.

begin
  
  result = api_instance.private_endpoint_connections_list_by_resource(api_version, subscription_id, resource_group_name, vault_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling PrivateEndpointConnectionsApi->private_endpoint_connections_list_by_resource: #{e}"
end
```

#### Using the private_endpoint_connections_list_by_resource_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PrivateEndpointConnectionListResult>, Integer, Hash)> private_endpoint_connections_list_by_resource_with_http_info(api_version, subscription_id, resource_group_name, vault_name)

```ruby
begin
  
  data, status_code, headers = api_instance.private_endpoint_connections_list_by_resource_with_http_info(api_version, subscription_id, resource_group_name, vault_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrivateEndpointConnectionListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling PrivateEndpointConnectionsApi->private_endpoint_connections_list_by_resource_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vault_name** | **String** | The name of the vault. |  |

### Return type

[**PrivateEndpointConnectionListResult**](PrivateEndpointConnectionListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## private_endpoint_connections_put

> <PrivateEndpointConnection> private_endpoint_connections_put(api_version, subscription_id, resource_group_name, vault_name, private_endpoint_connection_name, properties)



Updates the specified private endpoint connection associated with the key vault.

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
vault_name = 'vault_name_example' # String | The name of the vault.
private_endpoint_connection_name = 'private_endpoint_connection_name_example' # String | Name of the private endpoint connection associated with the key vault.
properties = AzureRest::PrivateEndpointConnection.new # PrivateEndpointConnection | The intended state of private endpoint connection.

begin
  
  result = api_instance.private_endpoint_connections_put(api_version, subscription_id, resource_group_name, vault_name, private_endpoint_connection_name, properties)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling PrivateEndpointConnectionsApi->private_endpoint_connections_put: #{e}"
end
```

#### Using the private_endpoint_connections_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PrivateEndpointConnection>, Integer, Hash)> private_endpoint_connections_put_with_http_info(api_version, subscription_id, resource_group_name, vault_name, private_endpoint_connection_name, properties)

```ruby
begin
  
  data, status_code, headers = api_instance.private_endpoint_connections_put_with_http_info(api_version, subscription_id, resource_group_name, vault_name, private_endpoint_connection_name, properties)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrivateEndpointConnection>
rescue AzureRest::ApiError => e
  puts "Error when calling PrivateEndpointConnectionsApi->private_endpoint_connections_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vault_name** | **String** | The name of the vault. |  |
| **private_endpoint_connection_name** | **String** | Name of the private endpoint connection associated with the key vault. |  |
| **properties** | [**PrivateEndpointConnection**](PrivateEndpointConnection.md) | The intended state of private endpoint connection. |  |

### Return type

[**PrivateEndpointConnection**](PrivateEndpointConnection.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

