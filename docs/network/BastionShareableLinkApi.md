# AzureSDK::BastionShareableLinkApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_bastion_shareable_link**](BastionShareableLinkApi.md#delete_bastion_shareable_link) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/bastionHosts/{bastionHostName}/deleteShareableLinks |  |
| [**delete_bastion_shareable_link_by_token**](BastionShareableLinkApi.md#delete_bastion_shareable_link_by_token) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/bastionHosts/{bastionHostName}/deleteShareableLinksByToken |  |
| [**get_bastion_shareable_link**](BastionShareableLinkApi.md#get_bastion_shareable_link) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/bastionHosts/{bastionHostName}/getShareableLinks |  |
| [**put_bastion_shareable_link**](BastionShareableLinkApi.md#put_bastion_shareable_link) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/bastionHosts/{bastionHostName}/createShareableLinks |  |


## delete_bastion_shareable_link

> delete_bastion_shareable_link(api_version, subscription_id, resource_group_name, bastion_host_name, bsl_request)



Deletes the Bastion Shareable Links for all the VMs specified in the request.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::BastionShareableLinkApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
bastion_host_name = 'bastion_host_name_example' # String | The name of the Bastion Host.
bsl_request = AzureSDK::BastionShareableLinkListRequest.new # BastionShareableLinkListRequest | Post request for Create/Delete/Get Bastion Shareable Link endpoints.

begin
  
  api_instance.delete_bastion_shareable_link(api_version, subscription_id, resource_group_name, bastion_host_name, bsl_request)
rescue AzureSDK::ApiError => e
  puts "Error when calling BastionShareableLinkApi->delete_bastion_shareable_link: #{e}"
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
rescue AzureSDK::ApiError => e
  puts "Error when calling BastionShareableLinkApi->delete_bastion_shareable_link_with_http_info: #{e}"
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
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::BastionShareableLinkApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
bastion_host_name = 'bastion_host_name_example' # String | The name of the Bastion Host.
bsl_token_request = AzureSDK::BastionShareableLinkTokenListRequest.new # BastionShareableLinkTokenListRequest | Post request for Delete Bastion Shareable Link By Token endpoint.

begin
  
  api_instance.delete_bastion_shareable_link_by_token(api_version, subscription_id, resource_group_name, bastion_host_name, bsl_token_request)
rescue AzureSDK::ApiError => e
  puts "Error when calling BastionShareableLinkApi->delete_bastion_shareable_link_by_token: #{e}"
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
rescue AzureSDK::ApiError => e
  puts "Error when calling BastionShareableLinkApi->delete_bastion_shareable_link_by_token_with_http_info: #{e}"
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


## get_bastion_shareable_link

> <BastionShareableLinkListResult> get_bastion_shareable_link(api_version, subscription_id, resource_group_name, bastion_host_name, bsl_request)



Return the Bastion Shareable Links for all the VMs specified in the request.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::BastionShareableLinkApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
bastion_host_name = 'bastion_host_name_example' # String | The name of the Bastion Host.
bsl_request = AzureSDK::BastionShareableLinkListRequest.new # BastionShareableLinkListRequest | Post request for Create/Delete/Get Bastion Shareable Link endpoints.

begin
  
  result = api_instance.get_bastion_shareable_link(api_version, subscription_id, resource_group_name, bastion_host_name, bsl_request)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling BastionShareableLinkApi->get_bastion_shareable_link: #{e}"
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
rescue AzureSDK::ApiError => e
  puts "Error when calling BastionShareableLinkApi->get_bastion_shareable_link_with_http_info: #{e}"
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
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::BastionShareableLinkApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
bastion_host_name = 'bastion_host_name_example' # String | The name of the Bastion Host.
bsl_request = AzureSDK::BastionShareableLinkListRequest.new # BastionShareableLinkListRequest | Post request for Create/Delete/Get Bastion Shareable Link endpoints.

begin
  
  result = api_instance.put_bastion_shareable_link(api_version, subscription_id, resource_group_name, bastion_host_name, bsl_request)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling BastionShareableLinkApi->put_bastion_shareable_link: #{e}"
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
rescue AzureSDK::ApiError => e
  puts "Error when calling BastionShareableLinkApi->put_bastion_shareable_link_with_http_info: #{e}"
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

