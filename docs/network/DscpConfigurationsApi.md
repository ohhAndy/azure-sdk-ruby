# AzureSDK::DscpConfigurationsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**dscp_configuration_list**](DscpConfigurationsApi.md#dscp_configuration_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/dscpConfigurations |  |
| [**dscp_configuration_list_all**](DscpConfigurationsApi.md#dscp_configuration_list_all) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Network/dscpConfigurations |  |


## dscp_configuration_list

> <DscpConfigurationListResult> dscp_configuration_list(api_version, subscription_id, resource_group_name)



Gets a DSCP Configuration.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DscpConfigurationsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.

begin
  
  result = api_instance.dscp_configuration_list(api_version, subscription_id, resource_group_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling DscpConfigurationsApi->dscp_configuration_list: #{e}"
end
```

#### Using the dscp_configuration_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DscpConfigurationListResult>, Integer, Hash)> dscp_configuration_list_with_http_info(api_version, subscription_id, resource_group_name)

```ruby
begin
  
  data, status_code, headers = api_instance.dscp_configuration_list_with_http_info(api_version, subscription_id, resource_group_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DscpConfigurationListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling DscpConfigurationsApi->dscp_configuration_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |

### Return type

[**DscpConfigurationListResult**](DscpConfigurationListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## dscp_configuration_list_all

> <DscpConfigurationListResult> dscp_configuration_list_all(api_version, subscription_id)



Gets all dscp configurations in a subscription.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DscpConfigurationsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.

begin
  
  result = api_instance.dscp_configuration_list_all(api_version, subscription_id)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling DscpConfigurationsApi->dscp_configuration_list_all: #{e}"
end
```

#### Using the dscp_configuration_list_all_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DscpConfigurationListResult>, Integer, Hash)> dscp_configuration_list_all_with_http_info(api_version, subscription_id)

```ruby
begin
  
  data, status_code, headers = api_instance.dscp_configuration_list_all_with_http_info(api_version, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DscpConfigurationListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling DscpConfigurationsApi->dscp_configuration_list_all_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |

### Return type

[**DscpConfigurationListResult**](DscpConfigurationListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

