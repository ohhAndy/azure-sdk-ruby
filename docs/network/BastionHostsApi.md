# AzureRest::BastionHostsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**bastion_hosts_create_or_update**](BastionHostsApi.md#bastion_hosts_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/bastionHosts/{bastionHostName} |  |
| [**bastion_hosts_delete**](BastionHostsApi.md#bastion_hosts_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/bastionHosts/{bastionHostName} |  |
| [**bastion_hosts_get**](BastionHostsApi.md#bastion_hosts_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/bastionHosts/{bastionHostName} |  |
| [**bastion_hosts_list**](BastionHostsApi.md#bastion_hosts_list) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Network/bastionHosts |  |
| [**bastion_hosts_list_by_resource_group**](BastionHostsApi.md#bastion_hosts_list_by_resource_group) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/bastionHosts |  |
| [**bastion_hosts_update**](BastionHostsApi.md#bastion_hosts_update) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/bastionHosts/{bastionHostName} |  |
| [**delete_bastion_shareable_link**](BastionHostsApi.md#delete_bastion_shareable_link) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/bastionHosts/{bastionHostName}/deleteShareableLinks |  |
| [**delete_bastion_shareable_link_by_token**](BastionHostsApi.md#delete_bastion_shareable_link_by_token) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/bastionHosts/{bastionHostName}/deleteShareableLinksByToken |  |
| [**disconnect_active_sessions**](BastionHostsApi.md#disconnect_active_sessions) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/bastionHosts/{bastionHostName}/disconnectActiveSessions |  |
| [**get_active_sessions**](BastionHostsApi.md#get_active_sessions) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/bastionHosts/{bastionHostName}/getActiveSessions |  |
| [**get_bastion_shareable_link**](BastionHostsApi.md#get_bastion_shareable_link) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/bastionHosts/{bastionHostName}/getShareableLinks |  |
| [**put_bastion_shareable_link**](BastionHostsApi.md#put_bastion_shareable_link) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/bastionHosts/{bastionHostName}/createShareableLinks |  |


## bastion_hosts_create_or_update

> <BastionHost> bastion_hosts_create_or_update(api_version, subscription_id, resource_group_name, bastion_host_name, parameters)



Creates or updates the specified Bastion Host.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::BastionHostsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
bastion_host_name = 'bastion_host_name_example' # String | The name of the Bastion Host.
parameters = AzureRest::BastionHost.new # BastionHost | Parameters supplied to the create or update Bastion Host operation.

begin
  
  result = api_instance.bastion_hosts_create_or_update(api_version, subscription_id, resource_group_name, bastion_host_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling BastionHostsApi->bastion_hosts_create_or_update: #{e}"
end
```

#### Using the bastion_hosts_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BastionHost>, Integer, Hash)> bastion_hosts_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, bastion_host_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.bastion_hosts_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, bastion_host_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BastionHost>
rescue AzureRest::ApiError => e
  puts "Error when calling BastionHostsApi->bastion_hosts_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **bastion_host_name** | **String** | The name of the Bastion Host. |  |
| **parameters** | [**BastionHost**](BastionHost.md) | Parameters supplied to the create or update Bastion Host operation. |  |

### Return type

[**BastionHost**](BastionHost.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## bastion_hosts_delete

> bastion_hosts_delete(api_version, subscription_id, resource_group_name, bastion_host_name)



Deletes the specified Bastion Host.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::BastionHostsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
bastion_host_name = 'bastion_host_name_example' # String | The name of the Bastion Host.

begin
  
  api_instance.bastion_hosts_delete(api_version, subscription_id, resource_group_name, bastion_host_name)
rescue AzureRest::ApiError => e
  puts "Error when calling BastionHostsApi->bastion_hosts_delete: #{e}"
end
```

#### Using the bastion_hosts_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> bastion_hosts_delete_with_http_info(api_version, subscription_id, resource_group_name, bastion_host_name)

```ruby
begin
  
  data, status_code, headers = api_instance.bastion_hosts_delete_with_http_info(api_version, subscription_id, resource_group_name, bastion_host_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling BastionHostsApi->bastion_hosts_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **bastion_host_name** | **String** | The name of the Bastion Host. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## bastion_hosts_get

> <BastionHost> bastion_hosts_get(api_version, subscription_id, resource_group_name, bastion_host_name)



Gets the specified Bastion Host.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::BastionHostsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
bastion_host_name = 'bastion_host_name_example' # String | The name of the Bastion Host.

begin
  
  result = api_instance.bastion_hosts_get(api_version, subscription_id, resource_group_name, bastion_host_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling BastionHostsApi->bastion_hosts_get: #{e}"
end
```

#### Using the bastion_hosts_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BastionHost>, Integer, Hash)> bastion_hosts_get_with_http_info(api_version, subscription_id, resource_group_name, bastion_host_name)

```ruby
begin
  
  data, status_code, headers = api_instance.bastion_hosts_get_with_http_info(api_version, subscription_id, resource_group_name, bastion_host_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BastionHost>
rescue AzureRest::ApiError => e
  puts "Error when calling BastionHostsApi->bastion_hosts_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **bastion_host_name** | **String** | The name of the Bastion Host. |  |

### Return type

[**BastionHost**](BastionHost.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## bastion_hosts_list

> <BastionHostListResult> bastion_hosts_list(api_version, subscription_id)



Lists all Bastion Hosts in a subscription.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::BastionHostsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.

begin
  
  result = api_instance.bastion_hosts_list(api_version, subscription_id)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling BastionHostsApi->bastion_hosts_list: #{e}"
end
```

#### Using the bastion_hosts_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BastionHostListResult>, Integer, Hash)> bastion_hosts_list_with_http_info(api_version, subscription_id)

```ruby
begin
  
  data, status_code, headers = api_instance.bastion_hosts_list_with_http_info(api_version, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BastionHostListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling BastionHostsApi->bastion_hosts_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |

### Return type

[**BastionHostListResult**](BastionHostListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## bastion_hosts_list_by_resource_group

> <BastionHostListResult> bastion_hosts_list_by_resource_group(api_version, subscription_id, resource_group_name)



Lists all Bastion Hosts in a resource group.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::BastionHostsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.

begin
  
  result = api_instance.bastion_hosts_list_by_resource_group(api_version, subscription_id, resource_group_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling BastionHostsApi->bastion_hosts_list_by_resource_group: #{e}"
end
```

#### Using the bastion_hosts_list_by_resource_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BastionHostListResult>, Integer, Hash)> bastion_hosts_list_by_resource_group_with_http_info(api_version, subscription_id, resource_group_name)

```ruby
begin
  
  data, status_code, headers = api_instance.bastion_hosts_list_by_resource_group_with_http_info(api_version, subscription_id, resource_group_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BastionHostListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling BastionHostsApi->bastion_hosts_list_by_resource_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |

### Return type

[**BastionHostListResult**](BastionHostListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## bastion_hosts_update

> <BastionHost> bastion_hosts_update(api_version, subscription_id, resource_group_name, bastion_host_name, parameters)



Updates Tags or identity for BastionHost resource

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::BastionHostsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
bastion_host_name = 'bastion_host_name_example' # String | The name of the Bastion Host.
parameters = AzureRest::BastionHostUpdate.new # BastionHostUpdate | Parameters supplied to update BastionHost tags or identity.

begin
  
  result = api_instance.bastion_hosts_update(api_version, subscription_id, resource_group_name, bastion_host_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling BastionHostsApi->bastion_hosts_update: #{e}"
end
```

#### Using the bastion_hosts_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BastionHost>, Integer, Hash)> bastion_hosts_update_with_http_info(api_version, subscription_id, resource_group_name, bastion_host_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.bastion_hosts_update_with_http_info(api_version, subscription_id, resource_group_name, bastion_host_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BastionHost>
rescue AzureRest::ApiError => e
  puts "Error when calling BastionHostsApi->bastion_hosts_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **bastion_host_name** | **String** | The name of the Bastion Host. |  |
| **parameters** | [**BastionHostUpdate**](BastionHostUpdate.md) | Parameters supplied to update BastionHost tags or identity. |  |

### Return type

[**BastionHost**](BastionHost.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_bastion_shareable_link

> delete_bastion_shareable_link(api_version, subscription_id, resource_group_name, bastion_host_name, bsl_request)



Deletes the Bastion Shareable Links for all the VMs specified in the request.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::BastionHostsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
bastion_host_name = 'bastion_host_name_example' # String | The name of the Bastion Host.
bsl_request = AzureRest::BastionShareableLinkListRequest.new # BastionShareableLinkListRequest | Post request for Create/Delete/Get Bastion Shareable Link endpoints.

begin
  
  api_instance.delete_bastion_shareable_link(api_version, subscription_id, resource_group_name, bastion_host_name, bsl_request)
rescue AzureRest::ApiError => e
  puts "Error when calling BastionHostsApi->delete_bastion_shareable_link: #{e}"
end
```

#### Using the delete_bastion_shareable_link_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_bastion_shareable_link_with_http_info(api_version, subscription_id, resource_group_name, bastion_host_name, bsl_request)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_bastion_shareable_link_with_http_info(api_version, subscription_id, resource_group_name, bastion_host_name, bsl_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling BastionHostsApi->delete_bastion_shareable_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **bastion_host_name** | **String** | The name of the Bastion Host. |  |
| **bsl_request** | [**BastionShareableLinkListRequest**](BastionShareableLinkListRequest.md) | Post request for Create/Delete/Get Bastion Shareable Link endpoints. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_bastion_shareable_link_by_token

> delete_bastion_shareable_link_by_token(api_version, subscription_id, resource_group_name, bastion_host_name, bsl_token_request)



Deletes the Bastion Shareable Links for all the tokens specified in the request.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::BastionHostsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
bastion_host_name = 'bastion_host_name_example' # String | The name of the Bastion Host.
bsl_token_request = AzureRest::BastionShareableLinkTokenListRequest.new # BastionShareableLinkTokenListRequest | Post request for Delete Bastion Shareable Link By Token endpoint.

begin
  
  api_instance.delete_bastion_shareable_link_by_token(api_version, subscription_id, resource_group_name, bastion_host_name, bsl_token_request)
rescue AzureRest::ApiError => e
  puts "Error when calling BastionHostsApi->delete_bastion_shareable_link_by_token: #{e}"
end
```

#### Using the delete_bastion_shareable_link_by_token_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_bastion_shareable_link_by_token_with_http_info(api_version, subscription_id, resource_group_name, bastion_host_name, bsl_token_request)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_bastion_shareable_link_by_token_with_http_info(api_version, subscription_id, resource_group_name, bastion_host_name, bsl_token_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling BastionHostsApi->delete_bastion_shareable_link_by_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **bastion_host_name** | **String** | The name of the Bastion Host. |  |
| **bsl_token_request** | [**BastionShareableLinkTokenListRequest**](BastionShareableLinkTokenListRequest.md) | Post request for Delete Bastion Shareable Link By Token endpoint. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## disconnect_active_sessions

> <BastionSessionDeleteResult> disconnect_active_sessions(api_version, subscription_id, resource_group_name, bastion_host_name, session_ids)



Returns the list of currently active sessions on the Bastion.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::BastionHostsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
bastion_host_name = 'bastion_host_name_example' # String | The name of the Bastion Host.
session_ids = AzureRest::SessionIds.new # SessionIds | The list of sessionids to disconnect.

begin
  
  result = api_instance.disconnect_active_sessions(api_version, subscription_id, resource_group_name, bastion_host_name, session_ids)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling BastionHostsApi->disconnect_active_sessions: #{e}"
end
```

#### Using the disconnect_active_sessions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BastionSessionDeleteResult>, Integer, Hash)> disconnect_active_sessions_with_http_info(api_version, subscription_id, resource_group_name, bastion_host_name, session_ids)

```ruby
begin
  
  data, status_code, headers = api_instance.disconnect_active_sessions_with_http_info(api_version, subscription_id, resource_group_name, bastion_host_name, session_ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BastionSessionDeleteResult>
rescue AzureRest::ApiError => e
  puts "Error when calling BastionHostsApi->disconnect_active_sessions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **bastion_host_name** | **String** | The name of the Bastion Host. |  |
| **session_ids** | [**SessionIds**](SessionIds.md) | The list of sessionids to disconnect. |  |

### Return type

[**BastionSessionDeleteResult**](BastionSessionDeleteResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_active_sessions

> <BastionActiveSessionListResult> get_active_sessions(api_version, subscription_id, resource_group_name, bastion_host_name)



Returns the list of currently active sessions on the Bastion.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::BastionHostsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
bastion_host_name = 'bastion_host_name_example' # String | The name of the Bastion Host.

begin
  
  result = api_instance.get_active_sessions(api_version, subscription_id, resource_group_name, bastion_host_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling BastionHostsApi->get_active_sessions: #{e}"
end
```

#### Using the get_active_sessions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BastionActiveSessionListResult>, Integer, Hash)> get_active_sessions_with_http_info(api_version, subscription_id, resource_group_name, bastion_host_name)

```ruby
begin
  
  data, status_code, headers = api_instance.get_active_sessions_with_http_info(api_version, subscription_id, resource_group_name, bastion_host_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BastionActiveSessionListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling BastionHostsApi->get_active_sessions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **bastion_host_name** | **String** | The name of the Bastion Host. |  |

### Return type

[**BastionActiveSessionListResult**](BastionActiveSessionListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_bastion_shareable_link

> <BastionShareableLinkListResult> get_bastion_shareable_link(api_version, subscription_id, resource_group_name, bastion_host_name, bsl_request)



Return the Bastion Shareable Links for all the VMs specified in the request.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::BastionHostsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
bastion_host_name = 'bastion_host_name_example' # String | The name of the Bastion Host.
bsl_request = AzureRest::BastionShareableLinkListRequest.new # BastionShareableLinkListRequest | Post request for Create/Delete/Get Bastion Shareable Link endpoints.

begin
  
  result = api_instance.get_bastion_shareable_link(api_version, subscription_id, resource_group_name, bastion_host_name, bsl_request)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling BastionHostsApi->get_bastion_shareable_link: #{e}"
end
```

#### Using the get_bastion_shareable_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BastionShareableLinkListResult>, Integer, Hash)> get_bastion_shareable_link_with_http_info(api_version, subscription_id, resource_group_name, bastion_host_name, bsl_request)

```ruby
begin
  
  data, status_code, headers = api_instance.get_bastion_shareable_link_with_http_info(api_version, subscription_id, resource_group_name, bastion_host_name, bsl_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BastionShareableLinkListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling BastionHostsApi->get_bastion_shareable_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **bastion_host_name** | **String** | The name of the Bastion Host. |  |
| **bsl_request** | [**BastionShareableLinkListRequest**](BastionShareableLinkListRequest.md) | Post request for Create/Delete/Get Bastion Shareable Link endpoints. |  |

### Return type

[**BastionShareableLinkListResult**](BastionShareableLinkListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_bastion_shareable_link

> <BastionShareableLinkListResult> put_bastion_shareable_link(api_version, subscription_id, resource_group_name, bastion_host_name, bsl_request)



Creates a Bastion Shareable Links for all the VMs specified in the request.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::BastionHostsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
bastion_host_name = 'bastion_host_name_example' # String | The name of the Bastion Host.
bsl_request = AzureRest::BastionShareableLinkListRequest.new # BastionShareableLinkListRequest | Post request for Create/Delete/Get Bastion Shareable Link endpoints.

begin
  
  result = api_instance.put_bastion_shareable_link(api_version, subscription_id, resource_group_name, bastion_host_name, bsl_request)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling BastionHostsApi->put_bastion_shareable_link: #{e}"
end
```

#### Using the put_bastion_shareable_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BastionShareableLinkListResult>, Integer, Hash)> put_bastion_shareable_link_with_http_info(api_version, subscription_id, resource_group_name, bastion_host_name, bsl_request)

```ruby
begin
  
  data, status_code, headers = api_instance.put_bastion_shareable_link_with_http_info(api_version, subscription_id, resource_group_name, bastion_host_name, bsl_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BastionShareableLinkListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling BastionHostsApi->put_bastion_shareable_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **bastion_host_name** | **String** | The name of the Bastion Host. |  |
| **bsl_request** | [**BastionShareableLinkListRequest**](BastionShareableLinkListRequest.md) | Post request for Create/Delete/Get Bastion Shareable Link endpoints. |  |

### Return type

[**BastionShareableLinkListResult**](BastionShareableLinkListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

