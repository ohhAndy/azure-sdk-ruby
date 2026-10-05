# AzureRest::VirtualApplianceSkusApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**virtual_appliance_skus_get**](VirtualApplianceSkusApi.md#virtual_appliance_skus_get) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Network/networkVirtualApplianceSkus/{skuName} |  |
| [**virtual_appliance_skus_list**](VirtualApplianceSkusApi.md#virtual_appliance_skus_list) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Network/networkVirtualApplianceSkus |  |


## virtual_appliance_skus_get

> <NetworkVirtualApplianceSku> virtual_appliance_skus_get(api_version, subscription_id, sku_name)



Retrieves a single available sku for network virtual appliance.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualApplianceSkusApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
sku_name = 'sku_name_example' # String | Name of the Sku.

begin
  
  result = api_instance.virtual_appliance_skus_get(api_version, subscription_id, sku_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualApplianceSkusApi->virtual_appliance_skus_get: #{e}"
end
```

#### Using the virtual_appliance_skus_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkVirtualApplianceSku>, Integer, Hash)> virtual_appliance_skus_get_with_http_info(api_version, subscription_id, sku_name)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_appliance_skus_get_with_http_info(api_version, subscription_id, sku_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkVirtualApplianceSku>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualApplianceSkusApi->virtual_appliance_skus_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **sku_name** | **String** | Name of the Sku. |  |

### Return type

[**NetworkVirtualApplianceSku**](NetworkVirtualApplianceSku.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_appliance_skus_list

> <NetworkVirtualApplianceSkuListResult> virtual_appliance_skus_list(api_version, subscription_id)



List all SKUs available for a virtual appliance.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualApplianceSkusApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.

begin
  
  result = api_instance.virtual_appliance_skus_list(api_version, subscription_id)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualApplianceSkusApi->virtual_appliance_skus_list: #{e}"
end
```

#### Using the virtual_appliance_skus_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkVirtualApplianceSkuListResult>, Integer, Hash)> virtual_appliance_skus_list_with_http_info(api_version, subscription_id)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_appliance_skus_list_with_http_info(api_version, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkVirtualApplianceSkuListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualApplianceSkusApi->virtual_appliance_skus_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |

### Return type

[**NetworkVirtualApplianceSkuListResult**](NetworkVirtualApplianceSkuListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

