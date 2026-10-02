# AzureSDK::UsageApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**usage_list**](UsageApi.md#usage_list) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Compute/locations/{location}/usages |  |


## usage_list

> <ListUsagesResult> usage_list(api_version, subscription_id, location)



Gets, for the specified location, the current compute resource usage information as well as the limits for compute resources under the subscription.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::UsageApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
location = 'location_example' # String | The name of Azure region.

begin
  
  result = api_instance.usage_list(api_version, subscription_id, location)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling UsageApi->usage_list: #{e}"
end
```

#### Using the usage_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListUsagesResult>, Integer, Hash)> usage_list_with_http_info(api_version, subscription_id, location)

```ruby
begin
  
  data, status_code, headers = api_instance.usage_list_with_http_info(api_version, subscription_id, location)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListUsagesResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling UsageApi->usage_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **location** | **String** | The name of Azure region. |  |

### Return type

[**ListUsagesResult**](ListUsagesResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

