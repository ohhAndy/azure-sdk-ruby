# AzureSDK::TablesApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**table_create**](TablesApi.md#table_create) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/tableServices/default/tables/{tableName} |  |
| [**table_delete**](TablesApi.md#table_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/tableServices/default/tables/{tableName} |  |
| [**table_get**](TablesApi.md#table_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/tableServices/default/tables/{tableName} |  |
| [**table_list**](TablesApi.md#table_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/tableServices/default/tables |  |
| [**table_update**](TablesApi.md#table_update) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/tableServices/default/tables/{tableName} |  |


## table_create

> <Table> table_create(api_version, subscription_id, resource_group_name, account_name, table_name, opts)



Creates a new table with the specified table name, under the specified account.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::TablesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
table_name = 'table_name_example' # String | A table name must be unique within a storage account and must be between 3 and 63 characters.The name must comprise of only alphanumeric characters and it cannot begin with a numeric character.
opts = {
  parameters: AzureSDK::Table.new # Table | The parameters to provide to create a table.
}

begin
  
  result = api_instance.table_create(api_version, subscription_id, resource_group_name, account_name, table_name, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling TablesApi->table_create: #{e}"
end
```

#### Using the table_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Table>, Integer, Hash)> table_create_with_http_info(api_version, subscription_id, resource_group_name, account_name, table_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.table_create_with_http_info(api_version, subscription_id, resource_group_name, account_name, table_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Table>
rescue AzureSDK::ApiError => e
  puts "Error when calling TablesApi->table_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **table_name** | **String** | A table name must be unique within a storage account and must be between 3 and 63 characters.The name must comprise of only alphanumeric characters and it cannot begin with a numeric character. |  |
| **parameters** | [**Table**](Table.md) | The parameters to provide to create a table. | [optional] |

### Return type

[**Table**](Table.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## table_delete

> table_delete(api_version, subscription_id, resource_group_name, account_name, table_name)



Deletes the table with the specified table name, under the specified account if it exists.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::TablesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
table_name = 'table_name_example' # String | A table name must be unique within a storage account and must be between 3 and 63 characters.The name must comprise of only alphanumeric characters and it cannot begin with a numeric character.

begin
  
  api_instance.table_delete(api_version, subscription_id, resource_group_name, account_name, table_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling TablesApi->table_delete: #{e}"
end
```

#### Using the table_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> table_delete_with_http_info(api_version, subscription_id, resource_group_name, account_name, table_name)

```ruby
begin
  
  data, status_code, headers = api_instance.table_delete_with_http_info(api_version, subscription_id, resource_group_name, account_name, table_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling TablesApi->table_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **table_name** | **String** | A table name must be unique within a storage account and must be between 3 and 63 characters.The name must comprise of only alphanumeric characters and it cannot begin with a numeric character. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## table_get

> <Table> table_get(api_version, subscription_id, resource_group_name, account_name, table_name)



Gets the table with the specified table name, under the specified account if it exists.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::TablesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
table_name = 'table_name_example' # String | A table name must be unique within a storage account and must be between 3 and 63 characters.The name must comprise of only alphanumeric characters and it cannot begin with a numeric character.

begin
  
  result = api_instance.table_get(api_version, subscription_id, resource_group_name, account_name, table_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling TablesApi->table_get: #{e}"
end
```

#### Using the table_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Table>, Integer, Hash)> table_get_with_http_info(api_version, subscription_id, resource_group_name, account_name, table_name)

```ruby
begin
  
  data, status_code, headers = api_instance.table_get_with_http_info(api_version, subscription_id, resource_group_name, account_name, table_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Table>
rescue AzureSDK::ApiError => e
  puts "Error when calling TablesApi->table_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **table_name** | **String** | A table name must be unique within a storage account and must be between 3 and 63 characters.The name must comprise of only alphanumeric characters and it cannot begin with a numeric character. |  |

### Return type

[**Table**](Table.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## table_list

> <ListTableResource> table_list(api_version, subscription_id, resource_group_name, account_name)



Gets a list of all the tables under the specified storage account

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::TablesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.

begin
  
  result = api_instance.table_list(api_version, subscription_id, resource_group_name, account_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling TablesApi->table_list: #{e}"
end
```

#### Using the table_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTableResource>, Integer, Hash)> table_list_with_http_info(api_version, subscription_id, resource_group_name, account_name)

```ruby
begin
  
  data, status_code, headers = api_instance.table_list_with_http_info(api_version, subscription_id, resource_group_name, account_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTableResource>
rescue AzureSDK::ApiError => e
  puts "Error when calling TablesApi->table_list_with_http_info: #{e}"
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

[**ListTableResource**](ListTableResource.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## table_update

> <Table> table_update(api_version, subscription_id, resource_group_name, account_name, table_name, opts)



Creates a new table with the specified table name, under the specified account.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::TablesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
table_name = 'table_name_example' # String | A table name must be unique within a storage account and must be between 3 and 63 characters.The name must comprise of only alphanumeric characters and it cannot begin with a numeric character.
opts = {
  parameters: AzureSDK::Table.new # Table | The parameters to provide to create a table.
}

begin
  
  result = api_instance.table_update(api_version, subscription_id, resource_group_name, account_name, table_name, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling TablesApi->table_update: #{e}"
end
```

#### Using the table_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Table>, Integer, Hash)> table_update_with_http_info(api_version, subscription_id, resource_group_name, account_name, table_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.table_update_with_http_info(api_version, subscription_id, resource_group_name, account_name, table_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Table>
rescue AzureSDK::ApiError => e
  puts "Error when calling TablesApi->table_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **table_name** | **String** | A table name must be unique within a storage account and must be between 3 and 63 characters.The name must comprise of only alphanumeric characters and it cannot begin with a numeric character. |  |
| **parameters** | [**Table**](Table.md) | The parameters to provide to create a table. | [optional] |

### Return type

[**Table**](Table.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

