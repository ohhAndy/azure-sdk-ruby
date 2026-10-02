# AzureSDK::FileServicesApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**file_services_get_service_properties**](FileServicesApi.md#file_services_get_service_properties) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/fileServices/default |  |
| [**file_services_list**](FileServicesApi.md#file_services_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/fileServices |  |
| [**file_services_set_service_properties**](FileServicesApi.md#file_services_set_service_properties) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/fileServices/default |  |
| [**file_shares_list**](FileServicesApi.md#file_shares_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/fileServices/default/shares |  |


## file_services_get_service_properties

> <FileServiceProperties> file_services_get_service_properties(api_version, subscription_id, resource_group_name, account_name)



Gets the properties of file services in storage accounts, including CORS (Cross-Origin Resource Sharing) rules.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::FileServicesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.

begin
  
  result = api_instance.file_services_get_service_properties(api_version, subscription_id, resource_group_name, account_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling FileServicesApi->file_services_get_service_properties: #{e}"
end
```

#### Using the file_services_get_service_properties_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileServiceProperties>, Integer, Hash)> file_services_get_service_properties_with_http_info(api_version, subscription_id, resource_group_name, account_name)

```ruby
begin
  
  data, status_code, headers = api_instance.file_services_get_service_properties_with_http_info(api_version, subscription_id, resource_group_name, account_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileServiceProperties>
rescue AzureSDK::ApiError => e
  puts "Error when calling FileServicesApi->file_services_get_service_properties_with_http_info: #{e}"
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

[**FileServiceProperties**](FileServiceProperties.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## file_services_list

> <FileServiceItems> file_services_list(api_version, subscription_id, resource_group_name, account_name)



List all file services in storage accounts

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::FileServicesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.

begin
  
  result = api_instance.file_services_list(api_version, subscription_id, resource_group_name, account_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling FileServicesApi->file_services_list: #{e}"
end
```

#### Using the file_services_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileServiceItems>, Integer, Hash)> file_services_list_with_http_info(api_version, subscription_id, resource_group_name, account_name)

```ruby
begin
  
  data, status_code, headers = api_instance.file_services_list_with_http_info(api_version, subscription_id, resource_group_name, account_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileServiceItems>
rescue AzureSDK::ApiError => e
  puts "Error when calling FileServicesApi->file_services_list_with_http_info: #{e}"
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

[**FileServiceItems**](FileServiceItems.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## file_services_set_service_properties

> <FileServiceProperties> file_services_set_service_properties(api_version, subscription_id, resource_group_name, account_name, parameters)



Sets the properties of file services in storage accounts, including CORS (Cross-Origin Resource Sharing) rules.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::FileServicesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
parameters = AzureSDK::FileServiceProperties.new # FileServiceProperties | The properties of file services in storage accounts, including CORS (Cross-Origin Resource Sharing) rules.

begin
  
  result = api_instance.file_services_set_service_properties(api_version, subscription_id, resource_group_name, account_name, parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling FileServicesApi->file_services_set_service_properties: #{e}"
end
```

#### Using the file_services_set_service_properties_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileServiceProperties>, Integer, Hash)> file_services_set_service_properties_with_http_info(api_version, subscription_id, resource_group_name, account_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.file_services_set_service_properties_with_http_info(api_version, subscription_id, resource_group_name, account_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileServiceProperties>
rescue AzureSDK::ApiError => e
  puts "Error when calling FileServicesApi->file_services_set_service_properties_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **parameters** | [**FileServiceProperties**](FileServiceProperties.md) | The properties of file services in storage accounts, including CORS (Cross-Origin Resource Sharing) rules. |  |

### Return type

[**FileServiceProperties**](FileServiceProperties.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## file_shares_list

> <FileShareItems> file_shares_list(api_version, subscription_id, resource_group_name, account_name, opts)



Lists all shares.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::FileServicesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
opts = {
  maxpagesize: 'maxpagesize_example', # String | Optional. Specified maximum number of shares that can be included in the list.
  filter: 'filter_example', # String | Optional. When specified, only share names starting with the filter will be listed.
  expand: 'expand_example' # String | Optional, used to expand the properties within share's properties. Valid values are: deleted, snapshots. Should be passed as a string with delimiter ','
}

begin
  
  result = api_instance.file_shares_list(api_version, subscription_id, resource_group_name, account_name, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling FileServicesApi->file_shares_list: #{e}"
end
```

#### Using the file_shares_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileShareItems>, Integer, Hash)> file_shares_list_with_http_info(api_version, subscription_id, resource_group_name, account_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.file_shares_list_with_http_info(api_version, subscription_id, resource_group_name, account_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileShareItems>
rescue AzureSDK::ApiError => e
  puts "Error when calling FileServicesApi->file_shares_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **maxpagesize** | **String** | Optional. Specified maximum number of shares that can be included in the list. | [optional] |
| **filter** | **String** | Optional. When specified, only share names starting with the filter will be listed. | [optional] |
| **expand** | **String** | Optional, used to expand the properties within share&#39;s properties. Valid values are: deleted, snapshots. Should be passed as a string with delimiter &#39;,&#39; | [optional] |

### Return type

[**FileShareItems**](FileShareItems.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

