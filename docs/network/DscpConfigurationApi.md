# AzureSDK::DscpConfigurationApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**dscp_configuration_create_or_update**](DscpConfigurationApi.md#dscp_configuration_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/dscpConfigurations/{dscpConfigurationName} |  |
| [**dscp_configuration_delete**](DscpConfigurationApi.md#dscp_configuration_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/dscpConfigurations/{dscpConfigurationName} |  |
| [**dscp_configuration_get**](DscpConfigurationApi.md#dscp_configuration_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/dscpConfigurations/{dscpConfigurationName} |  |


## dscp_configuration_create_or_update

> <DscpConfiguration> dscp_configuration_create_or_update(api_version, subscription_id, resource_group_name, dscp_configuration_name, parameters)



Creates or updates a DSCP Configuration.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DscpConfigurationApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
dscp_configuration_name = 'dscp_configuration_name_example' # String | The name of the resource.
parameters = AzureSDK::DscpConfiguration.new # DscpConfiguration | Parameters supplied to the create or update DscpConfiguration operation.

begin
  
  result = api_instance.dscp_configuration_create_or_update(api_version, subscription_id, resource_group_name, dscp_configuration_name, parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling DscpConfigurationApi->dscp_configuration_create_or_update: #{e}"
end
```

#### Using the dscp_configuration_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DscpConfiguration>, Integer, Hash)> dscp_configuration_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, dscp_configuration_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.dscp_configuration_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, dscp_configuration_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DscpConfiguration>
rescue AzureSDK::ApiError => e
  puts "Error when calling DscpConfigurationApi->dscp_configuration_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **dscp_configuration_name** | **String** | The name of the resource. |  |
| **parameters** | [**DscpConfiguration**](DscpConfiguration.md) | Parameters supplied to the create or update DscpConfiguration operation. |  |

### Return type

[**DscpConfiguration**](DscpConfiguration.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## dscp_configuration_delete

> dscp_configuration_delete(api_version, subscription_id, resource_group_name, dscp_configuration_name)



Deletes a DSCP Configuration.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DscpConfigurationApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
dscp_configuration_name = 'dscp_configuration_name_example' # String | The name of the resource.

begin
  
  api_instance.dscp_configuration_delete(api_version, subscription_id, resource_group_name, dscp_configuration_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling DscpConfigurationApi->dscp_configuration_delete: #{e}"
end
```

#### Using the dscp_configuration_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dscp_configuration_delete_with_http_info(api_version, subscription_id, resource_group_name, dscp_configuration_name)

```ruby
begin
  
  data, status_code, headers = api_instance.dscp_configuration_delete_with_http_info(api_version, subscription_id, resource_group_name, dscp_configuration_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling DscpConfigurationApi->dscp_configuration_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **dscp_configuration_name** | **String** | The name of the resource. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## dscp_configuration_get

> <DscpConfiguration> dscp_configuration_get(api_version, subscription_id, resource_group_name, dscp_configuration_name)



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

api_instance = AzureSDK::DscpConfigurationApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
dscp_configuration_name = 'dscp_configuration_name_example' # String | The name of the resource.

begin
  
  result = api_instance.dscp_configuration_get(api_version, subscription_id, resource_group_name, dscp_configuration_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling DscpConfigurationApi->dscp_configuration_get: #{e}"
end
```

#### Using the dscp_configuration_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DscpConfiguration>, Integer, Hash)> dscp_configuration_get_with_http_info(api_version, subscription_id, resource_group_name, dscp_configuration_name)

```ruby
begin
  
  data, status_code, headers = api_instance.dscp_configuration_get_with_http_info(api_version, subscription_id, resource_group_name, dscp_configuration_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DscpConfiguration>
rescue AzureSDK::ApiError => e
  puts "Error when calling DscpConfigurationApi->dscp_configuration_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **dscp_configuration_name** | **String** | The name of the resource. |  |

### Return type

[**DscpConfiguration**](DscpConfiguration.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

