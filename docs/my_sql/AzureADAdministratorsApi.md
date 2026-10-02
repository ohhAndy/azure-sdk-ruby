# AzureSDK::AzureADAdministratorsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**azure_ad_administrators_create_or_update**](AzureADAdministratorsApi.md#azure_ad_administrators_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/flexibleServers/{serverName}/administrators/{administratorName} |  |
| [**azure_ad_administrators_delete**](AzureADAdministratorsApi.md#azure_ad_administrators_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/flexibleServers/{serverName}/administrators/{administratorName} |  |
| [**azure_ad_administrators_get**](AzureADAdministratorsApi.md#azure_ad_administrators_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/flexibleServers/{serverName}/administrators/{administratorName} |  |
| [**azure_ad_administrators_list_by_server**](AzureADAdministratorsApi.md#azure_ad_administrators_list_by_server) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/flexibleServers/{serverName}/administrators |  |


## azure_ad_administrators_create_or_update

> <AzureADAdministrator> azure_ad_administrators_create_or_update(api_version, subscription_id, resource_group_name, server_name, administrator_name, parameters)



Creates or updates an existing Azure Active Directory administrator.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::AzureADAdministratorsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.
administrator_name = 'ActiveDirectory' # String | The name of the Azure AD Administrator.
parameters = AzureSDK::AzureADAdministrator.new # AzureADAdministrator | The required parameters for creating or updating an aad administrator.

begin
  
  result = api_instance.azure_ad_administrators_create_or_update(api_version, subscription_id, resource_group_name, server_name, administrator_name, parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling AzureADAdministratorsApi->azure_ad_administrators_create_or_update: #{e}"
end
```

#### Using the azure_ad_administrators_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AzureADAdministrator>, Integer, Hash)> azure_ad_administrators_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, server_name, administrator_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.azure_ad_administrators_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, server_name, administrator_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AzureADAdministrator>
rescue AzureSDK::ApiError => e
  puts "Error when calling AzureADAdministratorsApi->azure_ad_administrators_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **administrator_name** | **String** | The name of the Azure AD Administrator. |  |
| **parameters** | [**AzureADAdministrator**](AzureADAdministrator.md) | The required parameters for creating or updating an aad administrator. |  |

### Return type

[**AzureADAdministrator**](AzureADAdministrator.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## azure_ad_administrators_delete

> azure_ad_administrators_delete(api_version, subscription_id, resource_group_name, server_name, administrator_name)



Deletes an Azure AD Administrator.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::AzureADAdministratorsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.
administrator_name = 'ActiveDirectory' # String | The name of the Azure AD Administrator.

begin
  
  api_instance.azure_ad_administrators_delete(api_version, subscription_id, resource_group_name, server_name, administrator_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling AzureADAdministratorsApi->azure_ad_administrators_delete: #{e}"
end
```

#### Using the azure_ad_administrators_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> azure_ad_administrators_delete_with_http_info(api_version, subscription_id, resource_group_name, server_name, administrator_name)

```ruby
begin
  
  data, status_code, headers = api_instance.azure_ad_administrators_delete_with_http_info(api_version, subscription_id, resource_group_name, server_name, administrator_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling AzureADAdministratorsApi->azure_ad_administrators_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **administrator_name** | **String** | The name of the Azure AD Administrator. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## azure_ad_administrators_get

> <AzureADAdministrator> azure_ad_administrators_get(api_version, subscription_id, resource_group_name, server_name, administrator_name)



Gets information about an azure ad administrator.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::AzureADAdministratorsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.
administrator_name = 'ActiveDirectory' # String | The name of the Azure AD Administrator.

begin
  
  result = api_instance.azure_ad_administrators_get(api_version, subscription_id, resource_group_name, server_name, administrator_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling AzureADAdministratorsApi->azure_ad_administrators_get: #{e}"
end
```

#### Using the azure_ad_administrators_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AzureADAdministrator>, Integer, Hash)> azure_ad_administrators_get_with_http_info(api_version, subscription_id, resource_group_name, server_name, administrator_name)

```ruby
begin
  
  data, status_code, headers = api_instance.azure_ad_administrators_get_with_http_info(api_version, subscription_id, resource_group_name, server_name, administrator_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AzureADAdministrator>
rescue AzureSDK::ApiError => e
  puts "Error when calling AzureADAdministratorsApi->azure_ad_administrators_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **administrator_name** | **String** | The name of the Azure AD Administrator. |  |

### Return type

[**AzureADAdministrator**](AzureADAdministrator.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## azure_ad_administrators_list_by_server

> <AdministratorListResult> azure_ad_administrators_list_by_server(api_version, subscription_id, resource_group_name, server_name)



List all the AAD administrators in a given server.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::AzureADAdministratorsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.

begin
  
  result = api_instance.azure_ad_administrators_list_by_server(api_version, subscription_id, resource_group_name, server_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling AzureADAdministratorsApi->azure_ad_administrators_list_by_server: #{e}"
end
```

#### Using the azure_ad_administrators_list_by_server_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdministratorListResult>, Integer, Hash)> azure_ad_administrators_list_by_server_with_http_info(api_version, subscription_id, resource_group_name, server_name)

```ruby
begin
  
  data, status_code, headers = api_instance.azure_ad_administrators_list_by_server_with_http_info(api_version, subscription_id, resource_group_name, server_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdministratorListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling AzureADAdministratorsApi->azure_ad_administrators_list_by_server_with_http_info: #{e}"
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

[**AdministratorListResult**](AdministratorListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

