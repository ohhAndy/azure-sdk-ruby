# AzureSDK::AdministratorMicrosoftEntrasApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**administrators_microsoft_entra_create_or_update**](AdministratorMicrosoftEntrasApi.md#administrators_microsoft_entra_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/flexibleServers/{serverName}/administrators/{objectId} |  |
| [**administrators_microsoft_entra_delete**](AdministratorMicrosoftEntrasApi.md#administrators_microsoft_entra_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/flexibleServers/{serverName}/administrators/{objectId} |  |
| [**administrators_microsoft_entra_get**](AdministratorMicrosoftEntrasApi.md#administrators_microsoft_entra_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/flexibleServers/{serverName}/administrators/{objectId} |  |
| [**administrators_microsoft_entra_list_by_server**](AdministratorMicrosoftEntrasApi.md#administrators_microsoft_entra_list_by_server) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/flexibleServers/{serverName}/administrators |  |


## administrators_microsoft_entra_create_or_update

> administrators_microsoft_entra_create_or_update(api_version, subscription_id, resource_group_name, server_name, object_id, parameters)



Creates a new server administrator associated to a Microsoft Entra principal.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::AdministratorMicrosoftEntrasApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.
object_id = 'object_id_example' # String | Object identifier of the Microsoft Entra principal.
parameters = AzureSDK::AdministratorMicrosoftEntraAdd.new # AdministratorMicrosoftEntraAdd | Required parameters for adding a server administrator associated to a Microsoft Entra principal.

begin
  
  api_instance.administrators_microsoft_entra_create_or_update(api_version, subscription_id, resource_group_name, server_name, object_id, parameters)
rescue AzureSDK::ApiError => e
  puts "Error when calling AdministratorMicrosoftEntrasApi->administrators_microsoft_entra_create_or_update: #{e}"
end
```

#### Using the administrators_microsoft_entra_create_or_update_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> administrators_microsoft_entra_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, server_name, object_id, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.administrators_microsoft_entra_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, server_name, object_id, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling AdministratorMicrosoftEntrasApi->administrators_microsoft_entra_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **object_id** | **String** | Object identifier of the Microsoft Entra principal. |  |
| **parameters** | [**AdministratorMicrosoftEntraAdd**](AdministratorMicrosoftEntraAdd.md) | Required parameters for adding a server administrator associated to a Microsoft Entra principal. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## administrators_microsoft_entra_delete

> administrators_microsoft_entra_delete(api_version, subscription_id, resource_group_name, server_name, object_id)



Deletes an existing server administrator associated to a Microsoft Entra principal.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::AdministratorMicrosoftEntrasApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.
object_id = 'object_id_example' # String | Object identifier of the Microsoft Entra principal.

begin
  
  api_instance.administrators_microsoft_entra_delete(api_version, subscription_id, resource_group_name, server_name, object_id)
rescue AzureSDK::ApiError => e
  puts "Error when calling AdministratorMicrosoftEntrasApi->administrators_microsoft_entra_delete: #{e}"
end
```

#### Using the administrators_microsoft_entra_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> administrators_microsoft_entra_delete_with_http_info(api_version, subscription_id, resource_group_name, server_name, object_id)

```ruby
begin
  
  data, status_code, headers = api_instance.administrators_microsoft_entra_delete_with_http_info(api_version, subscription_id, resource_group_name, server_name, object_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling AdministratorMicrosoftEntrasApi->administrators_microsoft_entra_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **object_id** | **String** | Object identifier of the Microsoft Entra principal. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## administrators_microsoft_entra_get

> <AdministratorMicrosoftEntra> administrators_microsoft_entra_get(api_version, subscription_id, resource_group_name, server_name, object_id)



Gets information about a server administrator associated to a Microsoft Entra principal.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::AdministratorMicrosoftEntrasApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.
object_id = 'object_id_example' # String | Object identifier of the Microsoft Entra principal.

begin
  
  result = api_instance.administrators_microsoft_entra_get(api_version, subscription_id, resource_group_name, server_name, object_id)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling AdministratorMicrosoftEntrasApi->administrators_microsoft_entra_get: #{e}"
end
```

#### Using the administrators_microsoft_entra_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdministratorMicrosoftEntra>, Integer, Hash)> administrators_microsoft_entra_get_with_http_info(api_version, subscription_id, resource_group_name, server_name, object_id)

```ruby
begin
  
  data, status_code, headers = api_instance.administrators_microsoft_entra_get_with_http_info(api_version, subscription_id, resource_group_name, server_name, object_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdministratorMicrosoftEntra>
rescue AzureSDK::ApiError => e
  puts "Error when calling AdministratorMicrosoftEntrasApi->administrators_microsoft_entra_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **object_id** | **String** | Object identifier of the Microsoft Entra principal. |  |

### Return type

[**AdministratorMicrosoftEntra**](AdministratorMicrosoftEntra.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## administrators_microsoft_entra_list_by_server

> <AdministratorMicrosoftEntraList> administrators_microsoft_entra_list_by_server(api_version, subscription_id, resource_group_name, server_name)



List all server administrators associated to a Microsoft Entra principal.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::AdministratorMicrosoftEntrasApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.

begin
  
  result = api_instance.administrators_microsoft_entra_list_by_server(api_version, subscription_id, resource_group_name, server_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling AdministratorMicrosoftEntrasApi->administrators_microsoft_entra_list_by_server: #{e}"
end
```

#### Using the administrators_microsoft_entra_list_by_server_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdministratorMicrosoftEntraList>, Integer, Hash)> administrators_microsoft_entra_list_by_server_with_http_info(api_version, subscription_id, resource_group_name, server_name)

```ruby
begin
  
  data, status_code, headers = api_instance.administrators_microsoft_entra_list_by_server_with_http_info(api_version, subscription_id, resource_group_name, server_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdministratorMicrosoftEntraList>
rescue AzureSDK::ApiError => e
  puts "Error when calling AdministratorMicrosoftEntrasApi->administrators_microsoft_entra_list_by_server_with_http_info: #{e}"
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

[**AdministratorMicrosoftEntraList**](AdministratorMicrosoftEntraList.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

