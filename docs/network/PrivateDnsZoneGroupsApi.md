# AzureRest::PrivateDnsZoneGroupsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**private_dns_zone_groups_create_or_update**](PrivateDnsZoneGroupsApi.md#private_dns_zone_groups_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/privateEndpoints/{privateEndpointName}/privateDnsZoneGroups/{privateDnsZoneGroupName} |  |
| [**private_dns_zone_groups_delete**](PrivateDnsZoneGroupsApi.md#private_dns_zone_groups_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/privateEndpoints/{privateEndpointName}/privateDnsZoneGroups/{privateDnsZoneGroupName} |  |
| [**private_dns_zone_groups_get**](PrivateDnsZoneGroupsApi.md#private_dns_zone_groups_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/privateEndpoints/{privateEndpointName}/privateDnsZoneGroups/{privateDnsZoneGroupName} |  |
| [**private_dns_zone_groups_list**](PrivateDnsZoneGroupsApi.md#private_dns_zone_groups_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/privateEndpoints/{privateEndpointName}/privateDnsZoneGroups |  |


## private_dns_zone_groups_create_or_update

> <PrivateDnsZoneGroup> private_dns_zone_groups_create_or_update(api_version, subscription_id, resource_group_name, private_endpoint_name, private_dns_zone_group_name, parameters)



Creates or updates a private dns zone group in the specified private endpoint.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::PrivateDnsZoneGroupsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
private_endpoint_name = 'private_endpoint_name_example' # String | The name of the private endpoint.
private_dns_zone_group_name = 'private_dns_zone_group_name_example' # String | The name of the private endpoint.
parameters = AzureRest::PrivateDnsZoneGroup.new # PrivateDnsZoneGroup | Parameters supplied to the create or update private dns zone group operation.

begin
  
  result = api_instance.private_dns_zone_groups_create_or_update(api_version, subscription_id, resource_group_name, private_endpoint_name, private_dns_zone_group_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling PrivateDnsZoneGroupsApi->private_dns_zone_groups_create_or_update: #{e}"
end
```

#### Using the private_dns_zone_groups_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PrivateDnsZoneGroup>, Integer, Hash)> private_dns_zone_groups_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, private_endpoint_name, private_dns_zone_group_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.private_dns_zone_groups_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, private_endpoint_name, private_dns_zone_group_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrivateDnsZoneGroup>
rescue AzureRest::ApiError => e
  puts "Error when calling PrivateDnsZoneGroupsApi->private_dns_zone_groups_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **private_endpoint_name** | **String** | The name of the private endpoint. |  |
| **private_dns_zone_group_name** | **String** | The name of the private endpoint. |  |
| **parameters** | [**PrivateDnsZoneGroup**](PrivateDnsZoneGroup.md) | Parameters supplied to the create or update private dns zone group operation. |  |

### Return type

[**PrivateDnsZoneGroup**](PrivateDnsZoneGroup.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## private_dns_zone_groups_delete

> private_dns_zone_groups_delete(api_version, subscription_id, resource_group_name, private_endpoint_name, private_dns_zone_group_name)



Deletes the specified private dns zone group.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::PrivateDnsZoneGroupsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
private_endpoint_name = 'private_endpoint_name_example' # String | The name of the private endpoint.
private_dns_zone_group_name = 'private_dns_zone_group_name_example' # String | The name of the private endpoint.

begin
  
  api_instance.private_dns_zone_groups_delete(api_version, subscription_id, resource_group_name, private_endpoint_name, private_dns_zone_group_name)
rescue AzureRest::ApiError => e
  puts "Error when calling PrivateDnsZoneGroupsApi->private_dns_zone_groups_delete: #{e}"
end
```

#### Using the private_dns_zone_groups_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> private_dns_zone_groups_delete_with_http_info(api_version, subscription_id, resource_group_name, private_endpoint_name, private_dns_zone_group_name)

```ruby
begin
  
  data, status_code, headers = api_instance.private_dns_zone_groups_delete_with_http_info(api_version, subscription_id, resource_group_name, private_endpoint_name, private_dns_zone_group_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling PrivateDnsZoneGroupsApi->private_dns_zone_groups_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **private_endpoint_name** | **String** | The name of the private endpoint. |  |
| **private_dns_zone_group_name** | **String** | The name of the private endpoint. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## private_dns_zone_groups_get

> <PrivateDnsZoneGroup> private_dns_zone_groups_get(api_version, subscription_id, resource_group_name, private_endpoint_name, private_dns_zone_group_name)



Gets the private dns zone group resource by specified private dns zone group name.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::PrivateDnsZoneGroupsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
private_endpoint_name = 'private_endpoint_name_example' # String | The name of the private endpoint.
private_dns_zone_group_name = 'private_dns_zone_group_name_example' # String | The name of the private endpoint.

begin
  
  result = api_instance.private_dns_zone_groups_get(api_version, subscription_id, resource_group_name, private_endpoint_name, private_dns_zone_group_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling PrivateDnsZoneGroupsApi->private_dns_zone_groups_get: #{e}"
end
```

#### Using the private_dns_zone_groups_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PrivateDnsZoneGroup>, Integer, Hash)> private_dns_zone_groups_get_with_http_info(api_version, subscription_id, resource_group_name, private_endpoint_name, private_dns_zone_group_name)

```ruby
begin
  
  data, status_code, headers = api_instance.private_dns_zone_groups_get_with_http_info(api_version, subscription_id, resource_group_name, private_endpoint_name, private_dns_zone_group_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrivateDnsZoneGroup>
rescue AzureRest::ApiError => e
  puts "Error when calling PrivateDnsZoneGroupsApi->private_dns_zone_groups_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **private_endpoint_name** | **String** | The name of the private endpoint. |  |
| **private_dns_zone_group_name** | **String** | The name of the private endpoint. |  |

### Return type

[**PrivateDnsZoneGroup**](PrivateDnsZoneGroup.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## private_dns_zone_groups_list

> <PrivateDnsZoneGroupListResult> private_dns_zone_groups_list(api_version, subscription_id, resource_group_name, private_endpoint_name)



Gets all private dns zone groups in a private endpoint.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::PrivateDnsZoneGroupsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
private_endpoint_name = 'private_endpoint_name_example' # String | The name of the private endpoint.

begin
  
  result = api_instance.private_dns_zone_groups_list(api_version, subscription_id, resource_group_name, private_endpoint_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling PrivateDnsZoneGroupsApi->private_dns_zone_groups_list: #{e}"
end
```

#### Using the private_dns_zone_groups_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PrivateDnsZoneGroupListResult>, Integer, Hash)> private_dns_zone_groups_list_with_http_info(api_version, subscription_id, resource_group_name, private_endpoint_name)

```ruby
begin
  
  data, status_code, headers = api_instance.private_dns_zone_groups_list_with_http_info(api_version, subscription_id, resource_group_name, private_endpoint_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrivateDnsZoneGroupListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling PrivateDnsZoneGroupsApi->private_dns_zone_groups_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **private_endpoint_name** | **String** | The name of the private endpoint. |  |

### Return type

[**PrivateDnsZoneGroupListResult**](PrivateDnsZoneGroupListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

