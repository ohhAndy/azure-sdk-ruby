# AzureRest::FileServiceUsageOperationGroupApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**file_services_get_service_usage**](FileServiceUsageOperationGroupApi.md#file_services_get_service_usage) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/fileServices/default/usages/default |  |
| [**file_services_list_service_usages**](FileServiceUsageOperationGroupApi.md#file_services_list_service_usages) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/fileServices/default/usages |  |


## file_services_get_service_usage

> <FileServiceUsage> file_services_get_service_usage(api_version, subscription_id, resource_group_name, account_name)



Gets the usage of file service in storage account including account limits, file share limits and constants used in recommendations and bursting formula.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::FileServiceUsageOperationGroupApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.

begin
  
  result = api_instance.file_services_get_service_usage(api_version, subscription_id, resource_group_name, account_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling FileServiceUsageOperationGroupApi->file_services_get_service_usage: #{e}"
end
```

#### Using the file_services_get_service_usage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileServiceUsage>, Integer, Hash)> file_services_get_service_usage_with_http_info(api_version, subscription_id, resource_group_name, account_name)

```ruby
begin
  
  data, status_code, headers = api_instance.file_services_get_service_usage_with_http_info(api_version, subscription_id, resource_group_name, account_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileServiceUsage>
rescue AzureRest::ApiError => e
  puts "Error when calling FileServiceUsageOperationGroupApi->file_services_get_service_usage_with_http_info: #{e}"
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

[**FileServiceUsage**](FileServiceUsage.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## file_services_list_service_usages

> <FileServiceUsages> file_services_list_service_usages(api_version, subscription_id, resource_group_name, account_name, opts)



Gets the usages of file service in storage account.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::FileServiceUsageOperationGroupApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
opts = {
  maxpagesize: 56 # Integer | Optional, specifies the maximum number of file service usages to be included in the list response.
}

begin
  
  result = api_instance.file_services_list_service_usages(api_version, subscription_id, resource_group_name, account_name, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling FileServiceUsageOperationGroupApi->file_services_list_service_usages: #{e}"
end
```

#### Using the file_services_list_service_usages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileServiceUsages>, Integer, Hash)> file_services_list_service_usages_with_http_info(api_version, subscription_id, resource_group_name, account_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.file_services_list_service_usages_with_http_info(api_version, subscription_id, resource_group_name, account_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileServiceUsages>
rescue AzureRest::ApiError => e
  puts "Error when calling FileServiceUsageOperationGroupApi->file_services_list_service_usages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **maxpagesize** | **Integer** | Optional, specifies the maximum number of file service usages to be included in the list response. | [optional] |

### Return type

[**FileServiceUsages**](FileServiceUsages.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

