# AzureRest::VirtualMachineSizesApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**virtual_machine_sizes_list**](VirtualMachineSizesApi.md#virtual_machine_sizes_list) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Compute/locations/{location}/vmSizes |  |


## virtual_machine_sizes_list

> <VirtualMachineSizeListResult> virtual_machine_sizes_list(api_version, subscription_id, location)



This API is deprecated. Use [Resources Skus](https://docs.microsoft.com/rest/api/compute/resourceskus/list)

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineSizesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
location = 'location_example' # String | The name of Azure region.

begin
  
  result = api_instance.virtual_machine_sizes_list(api_version, subscription_id, location)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineSizesApi->virtual_machine_sizes_list: #{e}"
end
```

#### Using the virtual_machine_sizes_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualMachineSizeListResult>, Integer, Hash)> virtual_machine_sizes_list_with_http_info(api_version, subscription_id, location)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_sizes_list_with_http_info(api_version, subscription_id, location)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualMachineSizeListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineSizesApi->virtual_machine_sizes_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **location** | **String** | The name of Azure region. |  |

### Return type

[**VirtualMachineSizeListResult**](VirtualMachineSizeListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

