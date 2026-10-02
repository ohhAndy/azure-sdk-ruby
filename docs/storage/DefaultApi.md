# AzureSDK::DefaultApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**deleted_accounts_list**](DefaultApi.md#deleted_accounts_list) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Storage/deletedAccounts |  |
| [**skus_list**](DefaultApi.md#skus_list) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Storage/skus |  |
| [**usages_list_by_location**](DefaultApi.md#usages_list_by_location) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Storage/locations/{location}/usages |  |


## deleted_accounts_list

> <DeletedAccountListResult> deleted_accounts_list(api_version, subscription_id)



Lists deleted accounts under the subscription.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DefaultApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.

begin
  
  result = api_instance.deleted_accounts_list(api_version, subscription_id)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->deleted_accounts_list: #{e}"
end
```

#### Using the deleted_accounts_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeletedAccountListResult>, Integer, Hash)> deleted_accounts_list_with_http_info(api_version, subscription_id)

```ruby
begin
  
  data, status_code, headers = api_instance.deleted_accounts_list_with_http_info(api_version, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeletedAccountListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->deleted_accounts_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |

### Return type

[**DeletedAccountListResult**](DeletedAccountListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## skus_list

> <StorageSkuListResult> skus_list(api_version, subscription_id)



Lists the available SKUs supported by Microsoft.Storage for given subscription.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DefaultApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.

begin
  
  result = api_instance.skus_list(api_version, subscription_id)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->skus_list: #{e}"
end
```

#### Using the skus_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StorageSkuListResult>, Integer, Hash)> skus_list_with_http_info(api_version, subscription_id)

```ruby
begin
  
  data, status_code, headers = api_instance.skus_list_with_http_info(api_version, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StorageSkuListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->skus_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |

### Return type

[**StorageSkuListResult**](StorageSkuListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## usages_list_by_location

> <UsageListResult> usages_list_by_location(api_version, subscription_id, location)



Gets the current usage count and the limit for the resources of the location under the subscription.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DefaultApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
location = 'location_example' # String | The name of the Azure region.

begin
  
  result = api_instance.usages_list_by_location(api_version, subscription_id, location)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->usages_list_by_location: #{e}"
end
```

#### Using the usages_list_by_location_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageListResult>, Integer, Hash)> usages_list_by_location_with_http_info(api_version, subscription_id, location)

```ruby
begin
  
  data, status_code, headers = api_instance.usages_list_by_location_with_http_info(api_version, subscription_id, location)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->usages_list_by_location_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **location** | **String** | The name of the Azure region. |  |

### Return type

[**UsageListResult**](UsageListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

