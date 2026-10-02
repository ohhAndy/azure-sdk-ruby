# AzureSDK::AdvancedThreatProtectionSettingsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**advanced_threat_protection_settings_get**](AdvancedThreatProtectionSettingsApi.md#advanced_threat_protection_settings_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/flexibleServers/{serverName}/advancedThreatProtectionSettings/{advancedThreatProtectionName} |  |
| [**advanced_threat_protection_settings_list**](AdvancedThreatProtectionSettingsApi.md#advanced_threat_protection_settings_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/flexibleServers/{serverName}/advancedThreatProtectionSettings |  |
| [**advanced_threat_protection_settings_update**](AdvancedThreatProtectionSettingsApi.md#advanced_threat_protection_settings_update) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/flexibleServers/{serverName}/advancedThreatProtectionSettings/{advancedThreatProtectionName} |  |
| [**advanced_threat_protection_settings_update_put**](AdvancedThreatProtectionSettingsApi.md#advanced_threat_protection_settings_update_put) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/flexibleServers/{serverName}/advancedThreatProtectionSettings/{advancedThreatProtectionName} |  |


## advanced_threat_protection_settings_get

> <AdvancedThreatProtection> advanced_threat_protection_settings_get(api_version, subscription_id, resource_group_name, server_name, advanced_threat_protection_name)



Get a server's Advanced Threat Protection state

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::AdvancedThreatProtectionSettingsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.
advanced_threat_protection_name = 'Default' # String | The name of the Advanced Threat Protection state.

begin
  
  result = api_instance.advanced_threat_protection_settings_get(api_version, subscription_id, resource_group_name, server_name, advanced_threat_protection_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling AdvancedThreatProtectionSettingsApi->advanced_threat_protection_settings_get: #{e}"
end
```

#### Using the advanced_threat_protection_settings_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdvancedThreatProtection>, Integer, Hash)> advanced_threat_protection_settings_get_with_http_info(api_version, subscription_id, resource_group_name, server_name, advanced_threat_protection_name)

```ruby
begin
  
  data, status_code, headers = api_instance.advanced_threat_protection_settings_get_with_http_info(api_version, subscription_id, resource_group_name, server_name, advanced_threat_protection_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdvancedThreatProtection>
rescue AzureSDK::ApiError => e
  puts "Error when calling AdvancedThreatProtectionSettingsApi->advanced_threat_protection_settings_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **advanced_threat_protection_name** | **String** | The name of the Advanced Threat Protection state. |  |

### Return type

[**AdvancedThreatProtection**](AdvancedThreatProtection.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## advanced_threat_protection_settings_list

> <AdvancedThreatProtectionListResult> advanced_threat_protection_settings_list(api_version, subscription_id, resource_group_name, server_name)



Gets a list of server's Advanced Threat Protection states.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::AdvancedThreatProtectionSettingsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.

begin
  
  result = api_instance.advanced_threat_protection_settings_list(api_version, subscription_id, resource_group_name, server_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling AdvancedThreatProtectionSettingsApi->advanced_threat_protection_settings_list: #{e}"
end
```

#### Using the advanced_threat_protection_settings_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdvancedThreatProtectionListResult>, Integer, Hash)> advanced_threat_protection_settings_list_with_http_info(api_version, subscription_id, resource_group_name, server_name)

```ruby
begin
  
  data, status_code, headers = api_instance.advanced_threat_protection_settings_list_with_http_info(api_version, subscription_id, resource_group_name, server_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdvancedThreatProtectionListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling AdvancedThreatProtectionSettingsApi->advanced_threat_protection_settings_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |

### Return type

[**AdvancedThreatProtectionListResult**](AdvancedThreatProtectionListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## advanced_threat_protection_settings_update

> <AdvancedThreatProtection> advanced_threat_protection_settings_update(api_version, subscription_id, resource_group_name, server_name, advanced_threat_protection_name, parameters)



Updates a server's Advanced Threat Protection state.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::AdvancedThreatProtectionSettingsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.
advanced_threat_protection_name = 'Default' # String | The name of the Advanced Threat Protection state.
parameters = AzureSDK::AdvancedThreatProtectionForUpdate.new # AdvancedThreatProtectionForUpdate | The server's Advanced Threat Protection body to update.

begin
  
  result = api_instance.advanced_threat_protection_settings_update(api_version, subscription_id, resource_group_name, server_name, advanced_threat_protection_name, parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling AdvancedThreatProtectionSettingsApi->advanced_threat_protection_settings_update: #{e}"
end
```

#### Using the advanced_threat_protection_settings_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdvancedThreatProtection>, Integer, Hash)> advanced_threat_protection_settings_update_with_http_info(api_version, subscription_id, resource_group_name, server_name, advanced_threat_protection_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.advanced_threat_protection_settings_update_with_http_info(api_version, subscription_id, resource_group_name, server_name, advanced_threat_protection_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdvancedThreatProtection>
rescue AzureSDK::ApiError => e
  puts "Error when calling AdvancedThreatProtectionSettingsApi->advanced_threat_protection_settings_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **advanced_threat_protection_name** | **String** | The name of the Advanced Threat Protection state. |  |
| **parameters** | [**AdvancedThreatProtectionForUpdate**](AdvancedThreatProtectionForUpdate.md) | The server&#39;s Advanced Threat Protection body to update. |  |

### Return type

[**AdvancedThreatProtection**](AdvancedThreatProtection.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## advanced_threat_protection_settings_update_put

> <AdvancedThreatProtection> advanced_threat_protection_settings_update_put(api_version, subscription_id, resource_group_name, server_name, advanced_threat_protection_name, parameters)



Updates a server's Advanced Threat Protection state.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::AdvancedThreatProtectionSettingsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.
advanced_threat_protection_name = 'Default' # String | The name of the Advanced Threat Protection state.
parameters = AzureSDK::AdvancedThreatProtection.new # AdvancedThreatProtection | The server's Advanced Threat Protection body to update.

begin
  
  result = api_instance.advanced_threat_protection_settings_update_put(api_version, subscription_id, resource_group_name, server_name, advanced_threat_protection_name, parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling AdvancedThreatProtectionSettingsApi->advanced_threat_protection_settings_update_put: #{e}"
end
```

#### Using the advanced_threat_protection_settings_update_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdvancedThreatProtection>, Integer, Hash)> advanced_threat_protection_settings_update_put_with_http_info(api_version, subscription_id, resource_group_name, server_name, advanced_threat_protection_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.advanced_threat_protection_settings_update_put_with_http_info(api_version, subscription_id, resource_group_name, server_name, advanced_threat_protection_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdvancedThreatProtection>
rescue AzureSDK::ApiError => e
  puts "Error when calling AdvancedThreatProtectionSettingsApi->advanced_threat_protection_settings_update_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **advanced_threat_protection_name** | **String** | The name of the Advanced Threat Protection state. |  |
| **parameters** | [**AdvancedThreatProtection**](AdvancedThreatProtection.md) | The server&#39;s Advanced Threat Protection body to update. |  |

### Return type

[**AdvancedThreatProtection**](AdvancedThreatProtection.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

