# AzureSDK::PrivateEndpointConnectionsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**private_endpoint_connections_delete**](PrivateEndpointConnectionsApi.md#private_endpoint_connections_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/privateEndpointConnections/{privateEndpointConnectionName} |  |
| [**private_endpoint_connections_get**](PrivateEndpointConnectionsApi.md#private_endpoint_connections_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/privateEndpointConnections/{privateEndpointConnectionName} |  |
| [**private_endpoint_connections_list**](PrivateEndpointConnectionsApi.md#private_endpoint_connections_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/privateEndpointConnections |  |
| [**private_endpoint_connections_put**](PrivateEndpointConnectionsApi.md#private_endpoint_connections_put) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/privateEndpointConnections/{privateEndpointConnectionName} |  |


## private_endpoint_connections_delete

> private_endpoint_connections_delete(api_version, subscription_id, resource_group_name, account_name, private_endpoint_connection_name)



Deletes the specified private endpoint connection associated with the storage account.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::PrivateEndpointConnectionsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
private_endpoint_connection_name = 'private_endpoint_connection_name_example' # String | The name of the private endpoint connection associated with the Azure resource

begin
  
  api_instance.private_endpoint_connections_delete(api_version, subscription_id, resource_group_name, account_name, private_endpoint_connection_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling PrivateEndpointConnectionsApi->private_endpoint_connections_delete: #{e}"
end
```

#### Using the private_endpoint_connections_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> private_endpoint_connections_delete_with_http_info(api_version, subscription_id, resource_group_name, account_name, private_endpoint_connection_name)

```ruby
begin
  
  data, status_code, headers = api_instance.private_endpoint_connections_delete_with_http_info(api_version, subscription_id, resource_group_name, account_name, private_endpoint_connection_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling PrivateEndpointConnectionsApi->private_endpoint_connections_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **private_endpoint_connection_name** | **String** | The name of the private endpoint connection associated with the Azure resource |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## private_endpoint_connections_get

> <PrivateEndpointConnection> private_endpoint_connections_get(api_version, subscription_id, resource_group_name, account_name, private_endpoint_connection_name)



Gets the specified private endpoint connection associated with the storage account.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::PrivateEndpointConnectionsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
private_endpoint_connection_name = 'private_endpoint_connection_name_example' # String | The name of the private endpoint connection associated with the Azure resource

begin
  
  result = api_instance.private_endpoint_connections_get(api_version, subscription_id, resource_group_name, account_name, private_endpoint_connection_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling PrivateEndpointConnectionsApi->private_endpoint_connections_get: #{e}"
end
```

#### Using the private_endpoint_connections_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PrivateEndpointConnection>, Integer, Hash)> private_endpoint_connections_get_with_http_info(api_version, subscription_id, resource_group_name, account_name, private_endpoint_connection_name)

```ruby
begin
  
  data, status_code, headers = api_instance.private_endpoint_connections_get_with_http_info(api_version, subscription_id, resource_group_name, account_name, private_endpoint_connection_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrivateEndpointConnection>
rescue AzureSDK::ApiError => e
  puts "Error when calling PrivateEndpointConnectionsApi->private_endpoint_connections_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **private_endpoint_connection_name** | **String** | The name of the private endpoint connection associated with the Azure resource |  |

### Return type

[**PrivateEndpointConnection**](PrivateEndpointConnection.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## private_endpoint_connections_list

> <PrivateEndpointConnectionListResult> private_endpoint_connections_list(api_version, subscription_id, resource_group_name, account_name)



List all the private endpoint connections associated with the storage account.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::PrivateEndpointConnectionsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.

begin
  
  result = api_instance.private_endpoint_connections_list(api_version, subscription_id, resource_group_name, account_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling PrivateEndpointConnectionsApi->private_endpoint_connections_list: #{e}"
end
```

#### Using the private_endpoint_connections_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PrivateEndpointConnectionListResult>, Integer, Hash)> private_endpoint_connections_list_with_http_info(api_version, subscription_id, resource_group_name, account_name)

```ruby
begin
  
  data, status_code, headers = api_instance.private_endpoint_connections_list_with_http_info(api_version, subscription_id, resource_group_name, account_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrivateEndpointConnectionListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling PrivateEndpointConnectionsApi->private_endpoint_connections_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |

### Return type

[**PrivateEndpointConnectionListResult**](PrivateEndpointConnectionListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## private_endpoint_connections_put

> <PrivateEndpointConnection> private_endpoint_connections_put(api_version, subscription_id, resource_group_name, account_name, private_endpoint_connection_name, properties)



Update the state of specified private endpoint connection associated with the storage account.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::PrivateEndpointConnectionsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
private_endpoint_connection_name = 'private_endpoint_connection_name_example' # String | The name of the private endpoint connection associated with the Azure resource
properties = AzureSDK::PrivateEndpointConnection.new # PrivateEndpointConnection | The private endpoint connection properties.

begin
  
  result = api_instance.private_endpoint_connections_put(api_version, subscription_id, resource_group_name, account_name, private_endpoint_connection_name, properties)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling PrivateEndpointConnectionsApi->private_endpoint_connections_put: #{e}"
end
```

#### Using the private_endpoint_connections_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PrivateEndpointConnection>, Integer, Hash)> private_endpoint_connections_put_with_http_info(api_version, subscription_id, resource_group_name, account_name, private_endpoint_connection_name, properties)

```ruby
begin
  
  data, status_code, headers = api_instance.private_endpoint_connections_put_with_http_info(api_version, subscription_id, resource_group_name, account_name, private_endpoint_connection_name, properties)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrivateEndpointConnection>
rescue AzureSDK::ApiError => e
  puts "Error when calling PrivateEndpointConnectionsApi->private_endpoint_connections_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **private_endpoint_connection_name** | **String** | The name of the private endpoint connection associated with the Azure resource |  |
| **properties** | [**PrivateEndpointConnection**](PrivateEndpointConnection.md) | The private endpoint connection properties. |  |

### Return type

[**PrivateEndpointConnection**](PrivateEndpointConnection.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

