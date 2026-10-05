# AzureRest::UsagesApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**usages_list**](UsagesApi.md#usages_list) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Network/locations/{location}/usages |  |


## usages_list

> <UsagesListResult> usages_list(api_version, subscription_id, location)



List network usages for a subscription.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::UsagesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
location = 'location_example' # String | The name of the Azure region.

begin
  
  result = api_instance.usages_list(api_version, subscription_id, location)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling UsagesApi->usages_list: #{e}"
end
```

#### Using the usages_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsagesListResult>, Integer, Hash)> usages_list_with_http_info(api_version, subscription_id, location)

```ruby
begin
  
  data, status_code, headers = api_instance.usages_list_with_http_info(api_version, subscription_id, location)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsagesListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling UsagesApi->usages_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **location** | **String** | The name of the Azure region. |  |

### Return type

[**UsagesListResult**](UsagesListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

