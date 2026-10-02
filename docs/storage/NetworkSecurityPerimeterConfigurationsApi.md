# AzureSDK::NetworkSecurityPerimeterConfigurationsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**network_security_perimeter_configurations_get**](NetworkSecurityPerimeterConfigurationsApi.md#network_security_perimeter_configurations_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/networkSecurityPerimeterConfigurations/{networkSecurityPerimeterConfigurationName} |  |
| [**network_security_perimeter_configurations_list**](NetworkSecurityPerimeterConfigurationsApi.md#network_security_perimeter_configurations_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/networkSecurityPerimeterConfigurations |  |
| [**network_security_perimeter_configurations_reconcile**](NetworkSecurityPerimeterConfigurationsApi.md#network_security_perimeter_configurations_reconcile) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/networkSecurityPerimeterConfigurations/{networkSecurityPerimeterConfigurationName}/reconcile |  |


## network_security_perimeter_configurations_get

> <NetworkSecurityPerimeterConfiguration> network_security_perimeter_configurations_get(api_version, subscription_id, resource_group_name, account_name, network_security_perimeter_configuration_name)



Gets effective NetworkSecurityPerimeterConfiguration for association

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::NetworkSecurityPerimeterConfigurationsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
network_security_perimeter_configuration_name = 'network_security_perimeter_configuration_name_example' # String | The name for Network Security Perimeter configuration

begin
  
  result = api_instance.network_security_perimeter_configurations_get(api_version, subscription_id, resource_group_name, account_name, network_security_perimeter_configuration_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling NetworkSecurityPerimeterConfigurationsApi->network_security_perimeter_configurations_get: #{e}"
end
```

#### Using the network_security_perimeter_configurations_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkSecurityPerimeterConfiguration>, Integer, Hash)> network_security_perimeter_configurations_get_with_http_info(api_version, subscription_id, resource_group_name, account_name, network_security_perimeter_configuration_name)

```ruby
begin
  
  data, status_code, headers = api_instance.network_security_perimeter_configurations_get_with_http_info(api_version, subscription_id, resource_group_name, account_name, network_security_perimeter_configuration_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkSecurityPerimeterConfiguration>
rescue AzureSDK::ApiError => e
  puts "Error when calling NetworkSecurityPerimeterConfigurationsApi->network_security_perimeter_configurations_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **network_security_perimeter_configuration_name** | **String** | The name for Network Security Perimeter configuration |  |

### Return type

[**NetworkSecurityPerimeterConfiguration**](NetworkSecurityPerimeterConfiguration.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## network_security_perimeter_configurations_list

> <NetworkSecurityPerimeterConfigurationList> network_security_perimeter_configurations_list(api_version, subscription_id, resource_group_name, account_name)



Gets list of effective NetworkSecurityPerimeterConfiguration for storage account

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::NetworkSecurityPerimeterConfigurationsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.

begin
  
  result = api_instance.network_security_perimeter_configurations_list(api_version, subscription_id, resource_group_name, account_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling NetworkSecurityPerimeterConfigurationsApi->network_security_perimeter_configurations_list: #{e}"
end
```

#### Using the network_security_perimeter_configurations_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkSecurityPerimeterConfigurationList>, Integer, Hash)> network_security_perimeter_configurations_list_with_http_info(api_version, subscription_id, resource_group_name, account_name)

```ruby
begin
  
  data, status_code, headers = api_instance.network_security_perimeter_configurations_list_with_http_info(api_version, subscription_id, resource_group_name, account_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkSecurityPerimeterConfigurationList>
rescue AzureSDK::ApiError => e
  puts "Error when calling NetworkSecurityPerimeterConfigurationsApi->network_security_perimeter_configurations_list_with_http_info: #{e}"
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

[**NetworkSecurityPerimeterConfigurationList**](NetworkSecurityPerimeterConfigurationList.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## network_security_perimeter_configurations_reconcile

> network_security_perimeter_configurations_reconcile(api_version, subscription_id, resource_group_name, account_name, network_security_perimeter_configuration_name)



Refreshes any information about the association.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::NetworkSecurityPerimeterConfigurationsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
network_security_perimeter_configuration_name = 'network_security_perimeter_configuration_name_example' # String | The name for Network Security Perimeter configuration

begin
  
  api_instance.network_security_perimeter_configurations_reconcile(api_version, subscription_id, resource_group_name, account_name, network_security_perimeter_configuration_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling NetworkSecurityPerimeterConfigurationsApi->network_security_perimeter_configurations_reconcile: #{e}"
end
```

#### Using the network_security_perimeter_configurations_reconcile_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> network_security_perimeter_configurations_reconcile_with_http_info(api_version, subscription_id, resource_group_name, account_name, network_security_perimeter_configuration_name)

```ruby
begin
  
  data, status_code, headers = api_instance.network_security_perimeter_configurations_reconcile_with_http_info(api_version, subscription_id, resource_group_name, account_name, network_security_perimeter_configuration_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling NetworkSecurityPerimeterConfigurationsApi->network_security_perimeter_configurations_reconcile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **network_security_perimeter_configuration_name** | **String** | The name for Network Security Perimeter configuration |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

