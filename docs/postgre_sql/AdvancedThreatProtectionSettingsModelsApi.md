# AzureSDK::AdvancedThreatProtectionSettingsModelsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**advanced_threat_protection_settings_get**](AdvancedThreatProtectionSettingsModelsApi.md#advanced_threat_protection_settings_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/flexibleServers/{serverName}/advancedThreatProtectionSettings/{threatProtectionName} |  |
| [**advanced_threat_protection_settings_list_by_server**](AdvancedThreatProtectionSettingsModelsApi.md#advanced_threat_protection_settings_list_by_server) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/flexibleServers/{serverName}/advancedThreatProtectionSettings |  |
| [**server_threat_protection_settings_create_or_update**](AdvancedThreatProtectionSettingsModelsApi.md#server_threat_protection_settings_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/flexibleServers/{serverName}/advancedThreatProtectionSettings/{threatProtectionName} |  |


## advanced_threat_protection_settings_get

> <AdvancedThreatProtectionSettingsModel> advanced_threat_protection_settings_get(api_version, subscription_id, resource_group_name, server_name, threat_protection_name)



Gets state of advanced threat protection settings for a server.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::AdvancedThreatProtectionSettingsModelsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.
threat_protection_name = 'Default' # String | Name of the advanced threat protection settings.

begin
  
  result = api_instance.advanced_threat_protection_settings_get(api_version, subscription_id, resource_group_name, server_name, threat_protection_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling AdvancedThreatProtectionSettingsModelsApi->advanced_threat_protection_settings_get: #{e}"
end
```

#### Using the advanced_threat_protection_settings_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdvancedThreatProtectionSettingsModel>, Integer, Hash)> advanced_threat_protection_settings_get_with_http_info(api_version, subscription_id, resource_group_name, server_name, threat_protection_name)

```ruby
begin
  
  data, status_code, headers = api_instance.advanced_threat_protection_settings_get_with_http_info(api_version, subscription_id, resource_group_name, server_name, threat_protection_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdvancedThreatProtectionSettingsModel>
rescue AzureSDK::ApiError => e
  puts "Error when calling AdvancedThreatProtectionSettingsModelsApi->advanced_threat_protection_settings_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **threat_protection_name** | **String** | Name of the advanced threat protection settings. |  |

### Return type

[**AdvancedThreatProtectionSettingsModel**](AdvancedThreatProtectionSettingsModel.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## advanced_threat_protection_settings_list_by_server

> <AdvancedThreatProtectionSettingsList> advanced_threat_protection_settings_list_by_server(api_version, subscription_id, resource_group_name, server_name)



Lists state of advanced threat protection settings for a server.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::AdvancedThreatProtectionSettingsModelsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.

begin
  
  result = api_instance.advanced_threat_protection_settings_list_by_server(api_version, subscription_id, resource_group_name, server_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling AdvancedThreatProtectionSettingsModelsApi->advanced_threat_protection_settings_list_by_server: #{e}"
end
```

#### Using the advanced_threat_protection_settings_list_by_server_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdvancedThreatProtectionSettingsList>, Integer, Hash)> advanced_threat_protection_settings_list_by_server_with_http_info(api_version, subscription_id, resource_group_name, server_name)

```ruby
begin
  
  data, status_code, headers = api_instance.advanced_threat_protection_settings_list_by_server_with_http_info(api_version, subscription_id, resource_group_name, server_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdvancedThreatProtectionSettingsList>
rescue AzureSDK::ApiError => e
  puts "Error when calling AdvancedThreatProtectionSettingsModelsApi->advanced_threat_protection_settings_list_by_server_with_http_info: #{e}"
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

[**AdvancedThreatProtectionSettingsList**](AdvancedThreatProtectionSettingsList.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## server_threat_protection_settings_create_or_update

> server_threat_protection_settings_create_or_update(api_version, subscription_id, resource_group_name, server_name, threat_protection_name, parameters)



Creates or updates a server's Advanced Threat Protection settings.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::AdvancedThreatProtectionSettingsModelsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.
threat_protection_name = 'Default' # String | Name of the advanced threat protection settings.
parameters = AzureSDK::AdvancedThreatProtectionSettingsModel.new # AdvancedThreatProtectionSettingsModel | The Advanced Threat Protection state for the server.

begin
  
  api_instance.server_threat_protection_settings_create_or_update(api_version, subscription_id, resource_group_name, server_name, threat_protection_name, parameters)
rescue AzureSDK::ApiError => e
  puts "Error when calling AdvancedThreatProtectionSettingsModelsApi->server_threat_protection_settings_create_or_update: #{e}"
end
```

#### Using the server_threat_protection_settings_create_or_update_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> server_threat_protection_settings_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, server_name, threat_protection_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.server_threat_protection_settings_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, server_name, threat_protection_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling AdvancedThreatProtectionSettingsModelsApi->server_threat_protection_settings_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **threat_protection_name** | **String** | Name of the advanced threat protection settings. |  |
| **parameters** | [**AdvancedThreatProtectionSettingsModel**](AdvancedThreatProtectionSettingsModel.md) | The Advanced Threat Protection state for the server. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

