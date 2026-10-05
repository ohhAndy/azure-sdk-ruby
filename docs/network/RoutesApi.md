# AzureRest::RoutesApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**routes_create_or_update**](RoutesApi.md#routes_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/routeTables/{routeTableName}/routes/{routeName} |  |
| [**routes_delete**](RoutesApi.md#routes_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/routeTables/{routeTableName}/routes/{routeName} |  |
| [**routes_get**](RoutesApi.md#routes_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/routeTables/{routeTableName}/routes/{routeName} |  |
| [**routes_list**](RoutesApi.md#routes_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/routeTables/{routeTableName}/routes |  |


## routes_create_or_update

> <Route> routes_create_or_update(api_version, subscription_id, resource_group_name, route_table_name, route_name, route_parameters)



Creates or updates a route in the specified route table.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::RoutesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
route_table_name = 'route_table_name_example' # String | The name of the route table.
route_name = 'route_name_example' # String | The name of the route.
route_parameters = AzureRest::Route.new # Route | Parameters supplied to the create or update route operation.

begin
  
  result = api_instance.routes_create_or_update(api_version, subscription_id, resource_group_name, route_table_name, route_name, route_parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling RoutesApi->routes_create_or_update: #{e}"
end
```

#### Using the routes_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Route>, Integer, Hash)> routes_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, route_table_name, route_name, route_parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.routes_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, route_table_name, route_name, route_parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Route>
rescue AzureRest::ApiError => e
  puts "Error when calling RoutesApi->routes_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **route_table_name** | **String** | The name of the route table. |  |
| **route_name** | **String** | The name of the route. |  |
| **route_parameters** | [**Route**](Route.md) | Parameters supplied to the create or update route operation. |  |

### Return type

[**Route**](Route.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## routes_delete

> routes_delete(api_version, subscription_id, resource_group_name, route_table_name, route_name)



Deletes the specified route from a route table.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::RoutesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
route_table_name = 'route_table_name_example' # String | The name of the route table.
route_name = 'route_name_example' # String | The name of the route.

begin
  
  api_instance.routes_delete(api_version, subscription_id, resource_group_name, route_table_name, route_name)
rescue AzureRest::ApiError => e
  puts "Error when calling RoutesApi->routes_delete: #{e}"
end
```

#### Using the routes_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> routes_delete_with_http_info(api_version, subscription_id, resource_group_name, route_table_name, route_name)

```ruby
begin
  
  data, status_code, headers = api_instance.routes_delete_with_http_info(api_version, subscription_id, resource_group_name, route_table_name, route_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling RoutesApi->routes_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **route_table_name** | **String** | The name of the route table. |  |
| **route_name** | **String** | The name of the route. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## routes_get

> <Route> routes_get(api_version, subscription_id, resource_group_name, route_table_name, route_name)



Gets the specified route from a route table.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::RoutesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
route_table_name = 'route_table_name_example' # String | The name of the route table.
route_name = 'route_name_example' # String | The name of the route.

begin
  
  result = api_instance.routes_get(api_version, subscription_id, resource_group_name, route_table_name, route_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling RoutesApi->routes_get: #{e}"
end
```

#### Using the routes_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Route>, Integer, Hash)> routes_get_with_http_info(api_version, subscription_id, resource_group_name, route_table_name, route_name)

```ruby
begin
  
  data, status_code, headers = api_instance.routes_get_with_http_info(api_version, subscription_id, resource_group_name, route_table_name, route_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Route>
rescue AzureRest::ApiError => e
  puts "Error when calling RoutesApi->routes_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **route_table_name** | **String** | The name of the route table. |  |
| **route_name** | **String** | The name of the route. |  |

### Return type

[**Route**](Route.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## routes_list

> <RouteListResult> routes_list(api_version, subscription_id, resource_group_name, route_table_name)



Gets all routes in a route table.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::RoutesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
route_table_name = 'route_table_name_example' # String | The name of the route table.

begin
  
  result = api_instance.routes_list(api_version, subscription_id, resource_group_name, route_table_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling RoutesApi->routes_list: #{e}"
end
```

#### Using the routes_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RouteListResult>, Integer, Hash)> routes_list_with_http_info(api_version, subscription_id, resource_group_name, route_table_name)

```ruby
begin
  
  data, status_code, headers = api_instance.routes_list_with_http_info(api_version, subscription_id, resource_group_name, route_table_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RouteListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling RoutesApi->routes_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **route_table_name** | **String** | The name of the route table. |  |

### Return type

[**RouteListResult**](RouteListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

