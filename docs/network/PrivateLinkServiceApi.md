# AzureSDK::PrivateLinkServiceApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**private_link_services_create_or_update**](PrivateLinkServiceApi.md#private_link_services_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/privateLinkServices/{serviceName} |  |


## private_link_services_create_or_update

> <PrivateLinkService> private_link_services_create_or_update(api_version, subscription_id, resource_group_name, service_name, parameters)



Creates or updates an private link service in the specified resource group.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::PrivateLinkServiceApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
service_name = 'service_name_example' # String | The name of the private link service.
parameters = AzureSDK::PrivateLinkService.new # PrivateLinkService | Parameters supplied to the create or update private link service operation.

begin
  
  result = api_instance.private_link_services_create_or_update(api_version, subscription_id, resource_group_name, service_name, parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling PrivateLinkServiceApi->private_link_services_create_or_update: #{e}"
end
```

#### Using the private_link_services_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PrivateLinkService>, Integer, Hash)> private_link_services_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, service_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.private_link_services_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, service_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrivateLinkService>
rescue AzureSDK::ApiError => e
  puts "Error when calling PrivateLinkServiceApi->private_link_services_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **service_name** | **String** | The name of the private link service. |  |
| **parameters** | [**PrivateLinkService**](PrivateLinkService.md) | Parameters supplied to the create or update private link service operation. |  |

### Return type

[**PrivateLinkService**](PrivateLinkService.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

