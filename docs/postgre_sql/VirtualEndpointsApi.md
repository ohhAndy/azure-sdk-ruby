# AzureRest::VirtualEndpointsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**virtual_endpoints_create**](VirtualEndpointsApi.md#virtual_endpoints_create) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/flexibleServers/{serverName}/virtualendpoints/{virtualEndpointName} |  |
| [**virtual_endpoints_delete**](VirtualEndpointsApi.md#virtual_endpoints_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/flexibleServers/{serverName}/virtualendpoints/{virtualEndpointName} |  |
| [**virtual_endpoints_get**](VirtualEndpointsApi.md#virtual_endpoints_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/flexibleServers/{serverName}/virtualendpoints/{virtualEndpointName} |  |
| [**virtual_endpoints_list_by_server**](VirtualEndpointsApi.md#virtual_endpoints_list_by_server) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/flexibleServers/{serverName}/virtualendpoints |  |
| [**virtual_endpoints_update**](VirtualEndpointsApi.md#virtual_endpoints_update) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/flexibleServers/{serverName}/virtualendpoints/{virtualEndpointName} |  |


## virtual_endpoints_create

> virtual_endpoints_create(api_version, subscription_id, resource_group_name, server_name, virtual_endpoint_name, parameters)



Creates a pair of virtual endpoints for a server.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualEndpointsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.
virtual_endpoint_name = 'virtual_endpoint_name_example' # String | Base name of the virtual endpoints.
parameters = AzureRest::VirtualEndpoint.new # VirtualEndpoint | Parameters required to create or update a pair of virtual endpoints.

begin
  
  api_instance.virtual_endpoints_create(api_version, subscription_id, resource_group_name, server_name, virtual_endpoint_name, parameters)
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualEndpointsApi->virtual_endpoints_create: #{e}"
end
```

#### Using the virtual_endpoints_create_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_endpoints_create_with_http_info(api_version, subscription_id, resource_group_name, server_name, virtual_endpoint_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_endpoints_create_with_http_info(api_version, subscription_id, resource_group_name, server_name, virtual_endpoint_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualEndpointsApi->virtual_endpoints_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **virtual_endpoint_name** | **String** | Base name of the virtual endpoints. |  |
| **parameters** | [**VirtualEndpoint**](VirtualEndpoint.md) | Parameters required to create or update a pair of virtual endpoints. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## virtual_endpoints_delete

> virtual_endpoints_delete(api_version, subscription_id, resource_group_name, server_name, virtual_endpoint_name)



Deletes a pair of virtual endpoints.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualEndpointsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.
virtual_endpoint_name = 'virtual_endpoint_name_example' # String | Base name of the virtual endpoints.

begin
  
  api_instance.virtual_endpoints_delete(api_version, subscription_id, resource_group_name, server_name, virtual_endpoint_name)
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualEndpointsApi->virtual_endpoints_delete: #{e}"
end
```

#### Using the virtual_endpoints_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_endpoints_delete_with_http_info(api_version, subscription_id, resource_group_name, server_name, virtual_endpoint_name)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_endpoints_delete_with_http_info(api_version, subscription_id, resource_group_name, server_name, virtual_endpoint_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualEndpointsApi->virtual_endpoints_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **virtual_endpoint_name** | **String** | Base name of the virtual endpoints. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_endpoints_get

> <VirtualEndpoint> virtual_endpoints_get(api_version, subscription_id, resource_group_name, server_name, virtual_endpoint_name)



Gets information about a pair of virtual endpoints.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualEndpointsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.
virtual_endpoint_name = 'virtual_endpoint_name_example' # String | Base name of the virtual endpoints.

begin
  
  result = api_instance.virtual_endpoints_get(api_version, subscription_id, resource_group_name, server_name, virtual_endpoint_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualEndpointsApi->virtual_endpoints_get: #{e}"
end
```

#### Using the virtual_endpoints_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualEndpoint>, Integer, Hash)> virtual_endpoints_get_with_http_info(api_version, subscription_id, resource_group_name, server_name, virtual_endpoint_name)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_endpoints_get_with_http_info(api_version, subscription_id, resource_group_name, server_name, virtual_endpoint_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualEndpoint>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualEndpointsApi->virtual_endpoints_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **virtual_endpoint_name** | **String** | Base name of the virtual endpoints. |  |

### Return type

[**VirtualEndpoint**](VirtualEndpoint.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_endpoints_list_by_server

> <VirtualEndpointsList> virtual_endpoints_list_by_server(api_version, subscription_id, resource_group_name, server_name)



Lists pair of virtual endpoints associated to a server.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualEndpointsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.

begin
  
  result = api_instance.virtual_endpoints_list_by_server(api_version, subscription_id, resource_group_name, server_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualEndpointsApi->virtual_endpoints_list_by_server: #{e}"
end
```

#### Using the virtual_endpoints_list_by_server_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualEndpointsList>, Integer, Hash)> virtual_endpoints_list_by_server_with_http_info(api_version, subscription_id, resource_group_name, server_name)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_endpoints_list_by_server_with_http_info(api_version, subscription_id, resource_group_name, server_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualEndpointsList>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualEndpointsApi->virtual_endpoints_list_by_server_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |

### Return type

[**VirtualEndpointsList**](VirtualEndpointsList.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_endpoints_update

> virtual_endpoints_update(api_version, subscription_id, resource_group_name, server_name, virtual_endpoint_name, parameters)



Updates a pair of virtual endpoints for a server.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualEndpointsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.
virtual_endpoint_name = 'virtual_endpoint_name_example' # String | Base name of the virtual endpoints.
parameters = AzureRest::VirtualEndpointResourceForPatch.new # VirtualEndpointResourceForPatch | Parameters required to update a pair of virtual endpoints.

begin
  
  api_instance.virtual_endpoints_update(api_version, subscription_id, resource_group_name, server_name, virtual_endpoint_name, parameters)
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualEndpointsApi->virtual_endpoints_update: #{e}"
end
```

#### Using the virtual_endpoints_update_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_endpoints_update_with_http_info(api_version, subscription_id, resource_group_name, server_name, virtual_endpoint_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_endpoints_update_with_http_info(api_version, subscription_id, resource_group_name, server_name, virtual_endpoint_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualEndpointsApi->virtual_endpoints_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **virtual_endpoint_name** | **String** | Base name of the virtual endpoints. |  |
| **parameters** | [**VirtualEndpointResourceForPatch**](VirtualEndpointResourceForPatch.md) | Parameters required to update a pair of virtual endpoints. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

