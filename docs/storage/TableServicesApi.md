# AzureRest::TableServicesApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**table_services_get_service_properties**](TableServicesApi.md#table_services_get_service_properties) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/tableServices/default |  |
| [**table_services_list**](TableServicesApi.md#table_services_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/tableServices |  |
| [**table_services_set_service_properties**](TableServicesApi.md#table_services_set_service_properties) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/tableServices/default |  |


## table_services_get_service_properties

> <TableServiceProperties> table_services_get_service_properties(api_version, subscription_id, resource_group_name, account_name)



Gets the properties of a storage account’s Table service, including properties for Storage Analytics and CORS (Cross-Origin Resource Sharing) rules.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::TableServicesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.

begin
  
  result = api_instance.table_services_get_service_properties(api_version, subscription_id, resource_group_name, account_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling TableServicesApi->table_services_get_service_properties: #{e}"
end
```

#### Using the table_services_get_service_properties_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TableServiceProperties>, Integer, Hash)> table_services_get_service_properties_with_http_info(api_version, subscription_id, resource_group_name, account_name)

```ruby
begin
  
  data, status_code, headers = api_instance.table_services_get_service_properties_with_http_info(api_version, subscription_id, resource_group_name, account_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TableServiceProperties>
rescue AzureRest::ApiError => e
  puts "Error when calling TableServicesApi->table_services_get_service_properties_with_http_info: #{e}"
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

[**TableServiceProperties**](TableServiceProperties.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## table_services_list

> <ListTableServices> table_services_list(api_version, subscription_id, resource_group_name, account_name)



List all table services for the storage account.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::TableServicesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.

begin
  
  result = api_instance.table_services_list(api_version, subscription_id, resource_group_name, account_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling TableServicesApi->table_services_list: #{e}"
end
```

#### Using the table_services_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTableServices>, Integer, Hash)> table_services_list_with_http_info(api_version, subscription_id, resource_group_name, account_name)

```ruby
begin
  
  data, status_code, headers = api_instance.table_services_list_with_http_info(api_version, subscription_id, resource_group_name, account_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTableServices>
rescue AzureRest::ApiError => e
  puts "Error when calling TableServicesApi->table_services_list_with_http_info: #{e}"
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

[**ListTableServices**](ListTableServices.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## table_services_set_service_properties

> <TableServiceProperties> table_services_set_service_properties(api_version, subscription_id, resource_group_name, account_name, parameters)



Sets the properties of a storage account’s Table service, including properties for Storage Analytics and CORS (Cross-Origin Resource Sharing) rules.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::TableServicesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
parameters = AzureRest::TableServiceProperties.new # TableServiceProperties | The properties of a storage account’s Table service, only properties for Storage Analytics and CORS (Cross-Origin Resource Sharing) rules can be specified.

begin
  
  result = api_instance.table_services_set_service_properties(api_version, subscription_id, resource_group_name, account_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling TableServicesApi->table_services_set_service_properties: #{e}"
end
```

#### Using the table_services_set_service_properties_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TableServiceProperties>, Integer, Hash)> table_services_set_service_properties_with_http_info(api_version, subscription_id, resource_group_name, account_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.table_services_set_service_properties_with_http_info(api_version, subscription_id, resource_group_name, account_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TableServiceProperties>
rescue AzureRest::ApiError => e
  puts "Error when calling TableServicesApi->table_services_set_service_properties_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **parameters** | [**TableServiceProperties**](TableServiceProperties.md) | The properties of a storage account’s Table service, only properties for Storage Analytics and CORS (Cross-Origin Resource Sharing) rules can be specified. |  |

### Return type

[**TableServiceProperties**](TableServiceProperties.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

