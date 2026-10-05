# AzureRest::ServersApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**servers_create**](ServersApi.md#servers_create) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/flexibleServers/{serverName} |  |
| [**servers_delete**](ServersApi.md#servers_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/flexibleServers/{serverName} |  |
| [**servers_detach_v_net**](ServersApi.md#servers_detach_v_net) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/flexibleServers/{serverName}/detachVNet |  |
| [**servers_failover**](ServersApi.md#servers_failover) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/flexibleServers/{serverName}/failover |  |
| [**servers_get**](ServersApi.md#servers_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/flexibleServers/{serverName} |  |
| [**servers_list**](ServersApi.md#servers_list) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.DBforMySQL/flexibleServers |  |
| [**servers_list_by_resource_group**](ServersApi.md#servers_list_by_resource_group) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/flexibleServers |  |
| [**servers_reset_gtid**](ServersApi.md#servers_reset_gtid) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/flexibleServers/{serverName}/resetGtid |  |
| [**servers_restart**](ServersApi.md#servers_restart) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/flexibleServers/{serverName}/restart |  |
| [**servers_start**](ServersApi.md#servers_start) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/flexibleServers/{serverName}/start |  |
| [**servers_stop**](ServersApi.md#servers_stop) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/flexibleServers/{serverName}/stop |  |
| [**servers_update**](ServersApi.md#servers_update) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/flexibleServers/{serverName} |  |
| [**servers_validate_estimate_high_availability**](ServersApi.md#servers_validate_estimate_high_availability) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/flexibleServers/{serverName}/validateEstimateHighAvailability |  |


## servers_create

> <Server> servers_create(api_version, subscription_id, resource_group_name, server_name, parameters)



Creates a new server or updates an existing server. The update action will overwrite the existing server.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ServersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.
parameters = AzureRest::Server.new({location: 'location_example'}) # Server | The required parameters for creating or updating a server.

begin
  
  result = api_instance.servers_create(api_version, subscription_id, resource_group_name, server_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ServersApi->servers_create: #{e}"
end
```

#### Using the servers_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Server>, Integer, Hash)> servers_create_with_http_info(api_version, subscription_id, resource_group_name, server_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.servers_create_with_http_info(api_version, subscription_id, resource_group_name, server_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Server>
rescue AzureRest::ApiError => e
  puts "Error when calling ServersApi->servers_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **parameters** | [**Server**](Server.md) | The required parameters for creating or updating a server. |  |

### Return type

[**Server**](Server.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## servers_delete

> servers_delete(api_version, subscription_id, resource_group_name, server_name)



Deletes a server.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ServersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.

begin
  
  api_instance.servers_delete(api_version, subscription_id, resource_group_name, server_name)
rescue AzureRest::ApiError => e
  puts "Error when calling ServersApi->servers_delete: #{e}"
end
```

#### Using the servers_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> servers_delete_with_http_info(api_version, subscription_id, resource_group_name, server_name)

```ruby
begin
  
  data, status_code, headers = api_instance.servers_delete_with_http_info(api_version, subscription_id, resource_group_name, server_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling ServersApi->servers_delete_with_http_info: #{e}"
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

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## servers_detach_v_net

> <Server> servers_detach_v_net(api_version, subscription_id, resource_group_name, server_name, parameters)



Detach VNet on a server.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ServersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.
parameters = AzureRest::ServerDetachVNetParameter.new # ServerDetachVNetParameter | The required parameters for detach vnet on a server.

begin
  
  result = api_instance.servers_detach_v_net(api_version, subscription_id, resource_group_name, server_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ServersApi->servers_detach_v_net: #{e}"
end
```

#### Using the servers_detach_v_net_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Server>, Integer, Hash)> servers_detach_v_net_with_http_info(api_version, subscription_id, resource_group_name, server_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.servers_detach_v_net_with_http_info(api_version, subscription_id, resource_group_name, server_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Server>
rescue AzureRest::ApiError => e
  puts "Error when calling ServersApi->servers_detach_v_net_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **parameters** | [**ServerDetachVNetParameter**](ServerDetachVNetParameter.md) | The required parameters for detach vnet on a server. |  |

### Return type

[**Server**](Server.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## servers_failover

> servers_failover(api_version, subscription_id, resource_group_name, server_name)



Manual failover a server.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ServersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.

begin
  
  api_instance.servers_failover(api_version, subscription_id, resource_group_name, server_name)
rescue AzureRest::ApiError => e
  puts "Error when calling ServersApi->servers_failover: #{e}"
end
```

#### Using the servers_failover_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> servers_failover_with_http_info(api_version, subscription_id, resource_group_name, server_name)

```ruby
begin
  
  data, status_code, headers = api_instance.servers_failover_with_http_info(api_version, subscription_id, resource_group_name, server_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling ServersApi->servers_failover_with_http_info: #{e}"
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

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## servers_get

> <Server> servers_get(api_version, subscription_id, resource_group_name, server_name)



Gets information about a server.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ServersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.

begin
  
  result = api_instance.servers_get(api_version, subscription_id, resource_group_name, server_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ServersApi->servers_get: #{e}"
end
```

#### Using the servers_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Server>, Integer, Hash)> servers_get_with_http_info(api_version, subscription_id, resource_group_name, server_name)

```ruby
begin
  
  data, status_code, headers = api_instance.servers_get_with_http_info(api_version, subscription_id, resource_group_name, server_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Server>
rescue AzureRest::ApiError => e
  puts "Error when calling ServersApi->servers_get_with_http_info: #{e}"
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

[**Server**](Server.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## servers_list

> <ServerListResult> servers_list(api_version, subscription_id)



List all the servers in a given subscription.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ServersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.

begin
  
  result = api_instance.servers_list(api_version, subscription_id)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ServersApi->servers_list: #{e}"
end
```

#### Using the servers_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServerListResult>, Integer, Hash)> servers_list_with_http_info(api_version, subscription_id)

```ruby
begin
  
  data, status_code, headers = api_instance.servers_list_with_http_info(api_version, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServerListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling ServersApi->servers_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |

### Return type

[**ServerListResult**](ServerListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## servers_list_by_resource_group

> <ServerListResult> servers_list_by_resource_group(api_version, subscription_id, resource_group_name)



List all the servers in a given resource group.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ServersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.

begin
  
  result = api_instance.servers_list_by_resource_group(api_version, subscription_id, resource_group_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ServersApi->servers_list_by_resource_group: #{e}"
end
```

#### Using the servers_list_by_resource_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServerListResult>, Integer, Hash)> servers_list_by_resource_group_with_http_info(api_version, subscription_id, resource_group_name)

```ruby
begin
  
  data, status_code, headers = api_instance.servers_list_by_resource_group_with_http_info(api_version, subscription_id, resource_group_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServerListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling ServersApi->servers_list_by_resource_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |

### Return type

[**ServerListResult**](ServerListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## servers_reset_gtid

> servers_reset_gtid(api_version, subscription_id, resource_group_name, server_name, parameters)



Resets GTID on a server.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ServersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.
parameters = AzureRest::ServerGtidSetParameter.new # ServerGtidSetParameter | The required parameters for resetting GTID on a server.

begin
  
  api_instance.servers_reset_gtid(api_version, subscription_id, resource_group_name, server_name, parameters)
rescue AzureRest::ApiError => e
  puts "Error when calling ServersApi->servers_reset_gtid: #{e}"
end
```

#### Using the servers_reset_gtid_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> servers_reset_gtid_with_http_info(api_version, subscription_id, resource_group_name, server_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.servers_reset_gtid_with_http_info(api_version, subscription_id, resource_group_name, server_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling ServersApi->servers_reset_gtid_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **parameters** | [**ServerGtidSetParameter**](ServerGtidSetParameter.md) | The required parameters for resetting GTID on a server. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## servers_restart

> servers_restart(api_version, subscription_id, resource_group_name, server_name, parameters)



Restarts a server.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ServersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.
parameters = AzureRest::ServerRestartParameter.new # ServerRestartParameter | The required parameters for restarting a server.

begin
  
  api_instance.servers_restart(api_version, subscription_id, resource_group_name, server_name, parameters)
rescue AzureRest::ApiError => e
  puts "Error when calling ServersApi->servers_restart: #{e}"
end
```

#### Using the servers_restart_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> servers_restart_with_http_info(api_version, subscription_id, resource_group_name, server_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.servers_restart_with_http_info(api_version, subscription_id, resource_group_name, server_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling ServersApi->servers_restart_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **parameters** | [**ServerRestartParameter**](ServerRestartParameter.md) | The required parameters for restarting a server. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## servers_start

> servers_start(api_version, subscription_id, resource_group_name, server_name)



Starts a server.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ServersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.

begin
  
  api_instance.servers_start(api_version, subscription_id, resource_group_name, server_name)
rescue AzureRest::ApiError => e
  puts "Error when calling ServersApi->servers_start: #{e}"
end
```

#### Using the servers_start_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> servers_start_with_http_info(api_version, subscription_id, resource_group_name, server_name)

```ruby
begin
  
  data, status_code, headers = api_instance.servers_start_with_http_info(api_version, subscription_id, resource_group_name, server_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling ServersApi->servers_start_with_http_info: #{e}"
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

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## servers_stop

> servers_stop(api_version, subscription_id, resource_group_name, server_name)



Stops a server.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ServersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.

begin
  
  api_instance.servers_stop(api_version, subscription_id, resource_group_name, server_name)
rescue AzureRest::ApiError => e
  puts "Error when calling ServersApi->servers_stop: #{e}"
end
```

#### Using the servers_stop_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> servers_stop_with_http_info(api_version, subscription_id, resource_group_name, server_name)

```ruby
begin
  
  data, status_code, headers = api_instance.servers_stop_with_http_info(api_version, subscription_id, resource_group_name, server_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling ServersApi->servers_stop_with_http_info: #{e}"
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

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## servers_update

> <Server> servers_update(api_version, subscription_id, resource_group_name, server_name, parameters)



Updates an existing server. The request body can contain one to many of the properties present in the normal server definition.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ServersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.
parameters = AzureRest::ServerForUpdate.new # ServerForUpdate | The required parameters for updating a server.

begin
  
  result = api_instance.servers_update(api_version, subscription_id, resource_group_name, server_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ServersApi->servers_update: #{e}"
end
```

#### Using the servers_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Server>, Integer, Hash)> servers_update_with_http_info(api_version, subscription_id, resource_group_name, server_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.servers_update_with_http_info(api_version, subscription_id, resource_group_name, server_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Server>
rescue AzureRest::ApiError => e
  puts "Error when calling ServersApi->servers_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **parameters** | [**ServerForUpdate**](ServerForUpdate.md) | The required parameters for updating a server. |  |

### Return type

[**Server**](Server.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## servers_validate_estimate_high_availability

> <HighAvailabilityValidationEstimation> servers_validate_estimate_high_availability(api_version, subscription_id, resource_group_name, server_name, parameters)



Validate a deployment of high availability.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ServersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.
parameters = AzureRest::HighAvailabilityValidationEstimation.new # HighAvailabilityValidationEstimation | The required parameters for validation of high availability deployment.

begin
  
  result = api_instance.servers_validate_estimate_high_availability(api_version, subscription_id, resource_group_name, server_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ServersApi->servers_validate_estimate_high_availability: #{e}"
end
```

#### Using the servers_validate_estimate_high_availability_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HighAvailabilityValidationEstimation>, Integer, Hash)> servers_validate_estimate_high_availability_with_http_info(api_version, subscription_id, resource_group_name, server_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.servers_validate_estimate_high_availability_with_http_info(api_version, subscription_id, resource_group_name, server_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HighAvailabilityValidationEstimation>
rescue AzureRest::ApiError => e
  puts "Error when calling ServersApi->servers_validate_estimate_high_availability_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **parameters** | [**HighAvailabilityValidationEstimation**](HighAvailabilityValidationEstimation.md) | The required parameters for validation of high availability deployment. |  |

### Return type

[**HighAvailabilityValidationEstimation**](HighAvailabilityValidationEstimation.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

