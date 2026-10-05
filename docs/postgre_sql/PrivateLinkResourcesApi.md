# AzureRest::PrivateLinkResourcesApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**private_link_resources_get**](PrivateLinkResourcesApi.md#private_link_resources_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/flexibleServers/{serverName}/privateLinkResources/{groupName} |  |
| [**private_link_resources_list_by_server**](PrivateLinkResourcesApi.md#private_link_resources_list_by_server) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/flexibleServers/{serverName}/privateLinkResources |  |


## private_link_resources_get

> <PrivateLinkResource> private_link_resources_get(api_version, subscription_id, resource_group_name, server_name, group_name)



Gets a private link resource for PostgreSQL server.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::PrivateLinkResourcesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.
group_name = 'group_name_example' # String | The name of the private link resource.

begin
  
  result = api_instance.private_link_resources_get(api_version, subscription_id, resource_group_name, server_name, group_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling PrivateLinkResourcesApi->private_link_resources_get: #{e}"
end
```

#### Using the private_link_resources_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PrivateLinkResource>, Integer, Hash)> private_link_resources_get_with_http_info(api_version, subscription_id, resource_group_name, server_name, group_name)

```ruby
begin
  
  data, status_code, headers = api_instance.private_link_resources_get_with_http_info(api_version, subscription_id, resource_group_name, server_name, group_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrivateLinkResource>
rescue AzureRest::ApiError => e
  puts "Error when calling PrivateLinkResourcesApi->private_link_resources_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **group_name** | **String** | The name of the private link resource. |  |

### Return type

[**PrivateLinkResource**](PrivateLinkResource.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## private_link_resources_list_by_server

> <PrivateLinkResourceList> private_link_resources_list_by_server(api_version, subscription_id, resource_group_name, server_name)



Gets the private link resources for PostgreSQL server.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::PrivateLinkResourcesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.

begin
  
  result = api_instance.private_link_resources_list_by_server(api_version, subscription_id, resource_group_name, server_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling PrivateLinkResourcesApi->private_link_resources_list_by_server: #{e}"
end
```

#### Using the private_link_resources_list_by_server_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PrivateLinkResourceList>, Integer, Hash)> private_link_resources_list_by_server_with_http_info(api_version, subscription_id, resource_group_name, server_name)

```ruby
begin
  
  data, status_code, headers = api_instance.private_link_resources_list_by_server_with_http_info(api_version, subscription_id, resource_group_name, server_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrivateLinkResourceList>
rescue AzureRest::ApiError => e
  puts "Error when calling PrivateLinkResourcesApi->private_link_resources_list_by_server_with_http_info: #{e}"
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

[**PrivateLinkResourceList**](PrivateLinkResourceList.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

