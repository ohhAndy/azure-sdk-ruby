# AzureSDK::RouteTablesApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**route_tables_create_or_update**](RouteTablesApi.md#route_tables_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/routeTables/{routeTableName} |  |
| [**route_tables_delete**](RouteTablesApi.md#route_tables_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/routeTables/{routeTableName} |  |
| [**route_tables_get**](RouteTablesApi.md#route_tables_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/routeTables/{routeTableName} |  |
| [**route_tables_list**](RouteTablesApi.md#route_tables_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/routeTables |  |
| [**route_tables_list_all**](RouteTablesApi.md#route_tables_list_all) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Network/routeTables |  |
| [**route_tables_update_tags**](RouteTablesApi.md#route_tables_update_tags) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/routeTables/{routeTableName} |  |


## route_tables_create_or_update

> <RouteTable> route_tables_create_or_update(api_version, subscription_id, resource_group_name, route_table_name, parameters)



Create or updates a route table in a specified resource group.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::RouteTablesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
route_table_name = 'route_table_name_example' # String | The name of the route table.
parameters = AzureSDK::RouteTable.new # RouteTable | Parameters supplied to the create or update route table operation.

begin
  
  result = api_instance.route_tables_create_or_update(api_version, subscription_id, resource_group_name, route_table_name, parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling RouteTablesApi->route_tables_create_or_update: #{e}"
end
```

#### Using the route_tables_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RouteTable>, Integer, Hash)> route_tables_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, route_table_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.route_tables_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, route_table_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RouteTable>
rescue AzureSDK::ApiError => e
  puts "Error when calling RouteTablesApi->route_tables_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **route_table_name** | **String** | The name of the route table. |  |
| **parameters** | [**RouteTable**](RouteTable.md) | Parameters supplied to the create or update route table operation. |  |

### Return type

[**RouteTable**](RouteTable.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## route_tables_delete

> route_tables_delete(api_version, subscription_id, resource_group_name, route_table_name)



Deletes the specified route table.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::RouteTablesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
route_table_name = 'route_table_name_example' # String | The name of the route table.

begin
  
  api_instance.route_tables_delete(api_version, subscription_id, resource_group_name, route_table_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling RouteTablesApi->route_tables_delete: #{e}"
end
```

#### Using the route_tables_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> route_tables_delete_with_http_info(api_version, subscription_id, resource_group_name, route_table_name)

```ruby
begin
  
  data, status_code, headers = api_instance.route_tables_delete_with_http_info(api_version, subscription_id, resource_group_name, route_table_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling RouteTablesApi->route_tables_delete_with_http_info: #{e}"
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

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## route_tables_get

> <RouteTable> route_tables_get(api_version, subscription_id, resource_group_name, route_table_name, opts)



Gets the specified route table.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::RouteTablesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
route_table_name = 'route_table_name_example' # String | The name of the route table.
opts = {
  expand: 'expand_example' # String | Expands referenced resources.
}

begin
  
  result = api_instance.route_tables_get(api_version, subscription_id, resource_group_name, route_table_name, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling RouteTablesApi->route_tables_get: #{e}"
end
```

#### Using the route_tables_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RouteTable>, Integer, Hash)> route_tables_get_with_http_info(api_version, subscription_id, resource_group_name, route_table_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.route_tables_get_with_http_info(api_version, subscription_id, resource_group_name, route_table_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RouteTable>
rescue AzureSDK::ApiError => e
  puts "Error when calling RouteTablesApi->route_tables_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **route_table_name** | **String** | The name of the route table. |  |
| **expand** | **String** | Expands referenced resources. | [optional] |

### Return type

[**RouteTable**](RouteTable.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## route_tables_list

> <RouteTableListResult> route_tables_list(api_version, subscription_id, resource_group_name)



Gets all route tables in a resource group.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::RouteTablesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.

begin
  
  result = api_instance.route_tables_list(api_version, subscription_id, resource_group_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling RouteTablesApi->route_tables_list: #{e}"
end
```

#### Using the route_tables_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RouteTableListResult>, Integer, Hash)> route_tables_list_with_http_info(api_version, subscription_id, resource_group_name)

```ruby
begin
  
  data, status_code, headers = api_instance.route_tables_list_with_http_info(api_version, subscription_id, resource_group_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RouteTableListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling RouteTablesApi->route_tables_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |

### Return type

[**RouteTableListResult**](RouteTableListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## route_tables_list_all

> <RouteTableListResult> route_tables_list_all(api_version, subscription_id)



Gets all route tables in a subscription.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::RouteTablesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.

begin
  
  result = api_instance.route_tables_list_all(api_version, subscription_id)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling RouteTablesApi->route_tables_list_all: #{e}"
end
```

#### Using the route_tables_list_all_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RouteTableListResult>, Integer, Hash)> route_tables_list_all_with_http_info(api_version, subscription_id)

```ruby
begin
  
  data, status_code, headers = api_instance.route_tables_list_all_with_http_info(api_version, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RouteTableListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling RouteTablesApi->route_tables_list_all_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |

### Return type

[**RouteTableListResult**](RouteTableListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## route_tables_update_tags

> <RouteTable> route_tables_update_tags(api_version, subscription_id, resource_group_name, route_table_name, parameters)



Updates a route table tags.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::RouteTablesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
route_table_name = 'route_table_name_example' # String | The name of the route table.
parameters = AzureSDK::TagsObject.new # TagsObject | Parameters supplied to update route table tags.

begin
  
  result = api_instance.route_tables_update_tags(api_version, subscription_id, resource_group_name, route_table_name, parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling RouteTablesApi->route_tables_update_tags: #{e}"
end
```

#### Using the route_tables_update_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RouteTable>, Integer, Hash)> route_tables_update_tags_with_http_info(api_version, subscription_id, resource_group_name, route_table_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.route_tables_update_tags_with_http_info(api_version, subscription_id, resource_group_name, route_table_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RouteTable>
rescue AzureSDK::ApiError => e
  puts "Error when calling RouteTablesApi->route_tables_update_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **route_table_name** | **String** | The name of the route table. |  |
| **parameters** | [**TagsObject**](TagsObject.md) | Parameters supplied to update route table tags. |  |

### Return type

[**RouteTable**](RouteTable.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

