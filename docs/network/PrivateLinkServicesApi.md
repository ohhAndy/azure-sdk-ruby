# AzureSDK::PrivateLinkServicesApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**private_link_services_check_private_link_service_visibility**](PrivateLinkServicesApi.md#private_link_services_check_private_link_service_visibility) | **POST** /subscriptions/{subscriptionId}/providers/Microsoft.Network/locations/{location}/checkPrivateLinkServiceVisibility |  |
| [**private_link_services_check_private_link_service_visibility_by_resource_group**](PrivateLinkServicesApi.md#private_link_services_check_private_link_service_visibility_by_resource_group) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/locations/{location}/checkPrivateLinkServiceVisibility |  |
| [**private_link_services_delete**](PrivateLinkServicesApi.md#private_link_services_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/privateLinkServices/{serviceName} |  |
| [**private_link_services_delete_private_endpoint_connection**](PrivateLinkServicesApi.md#private_link_services_delete_private_endpoint_connection) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/privateLinkServices/{serviceName}/privateEndpointConnections/{peConnectionName} |  |
| [**private_link_services_get**](PrivateLinkServicesApi.md#private_link_services_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/privateLinkServices/{serviceName} |  |
| [**private_link_services_get_private_endpoint_connection**](PrivateLinkServicesApi.md#private_link_services_get_private_endpoint_connection) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/privateLinkServices/{serviceName}/privateEndpointConnections/{peConnectionName} |  |
| [**private_link_services_list**](PrivateLinkServicesApi.md#private_link_services_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/privateLinkServices |  |
| [**private_link_services_list_auto_approved_private_link_services**](PrivateLinkServicesApi.md#private_link_services_list_auto_approved_private_link_services) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Network/locations/{location}/autoApprovedPrivateLinkServices |  |
| [**private_link_services_list_auto_approved_private_link_services_by_resource_group**](PrivateLinkServicesApi.md#private_link_services_list_auto_approved_private_link_services_by_resource_group) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/locations/{location}/autoApprovedPrivateLinkServices |  |
| [**private_link_services_list_by_subscription**](PrivateLinkServicesApi.md#private_link_services_list_by_subscription) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Network/privateLinkServices |  |
| [**private_link_services_list_private_endpoint_connections**](PrivateLinkServicesApi.md#private_link_services_list_private_endpoint_connections) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/privateLinkServices/{serviceName}/privateEndpointConnections |  |
| [**private_link_services_update_private_endpoint_connection**](PrivateLinkServicesApi.md#private_link_services_update_private_endpoint_connection) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/privateLinkServices/{serviceName}/privateEndpointConnections/{peConnectionName} |  |


## private_link_services_check_private_link_service_visibility

> <PrivateLinkServiceVisibility> private_link_services_check_private_link_service_visibility(api_version, subscription_id, location, parameters)



Checks whether the subscription is visible to private link service.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::PrivateLinkServicesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
location = 'location_example' # String | The name of the Azure region.
parameters = AzureSDK::CheckPrivateLinkServiceVisibilityRequest.new # CheckPrivateLinkServiceVisibilityRequest | The request body

begin
  
  result = api_instance.private_link_services_check_private_link_service_visibility(api_version, subscription_id, location, parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling PrivateLinkServicesApi->private_link_services_check_private_link_service_visibility: #{e}"
end
```

#### Using the private_link_services_check_private_link_service_visibility_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PrivateLinkServiceVisibility>, Integer, Hash)> private_link_services_check_private_link_service_visibility_with_http_info(api_version, subscription_id, location, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.private_link_services_check_private_link_service_visibility_with_http_info(api_version, subscription_id, location, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrivateLinkServiceVisibility>
rescue AzureSDK::ApiError => e
  puts "Error when calling PrivateLinkServicesApi->private_link_services_check_private_link_service_visibility_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **location** | **String** | The name of the Azure region. |  |
| **parameters** | [**CheckPrivateLinkServiceVisibilityRequest**](CheckPrivateLinkServiceVisibilityRequest.md) | The request body |  |

### Return type

[**PrivateLinkServiceVisibility**](PrivateLinkServiceVisibility.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## private_link_services_check_private_link_service_visibility_by_resource_group

> <PrivateLinkServiceVisibility> private_link_services_check_private_link_service_visibility_by_resource_group(api_version, subscription_id, resource_group_name, location, parameters)



Checks whether the subscription is visible to private link service in the specified resource group.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::PrivateLinkServicesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
location = 'location_example' # String | The name of the Azure region.
parameters = AzureSDK::CheckPrivateLinkServiceVisibilityRequest.new # CheckPrivateLinkServiceVisibilityRequest | The request body

begin
  
  result = api_instance.private_link_services_check_private_link_service_visibility_by_resource_group(api_version, subscription_id, resource_group_name, location, parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling PrivateLinkServicesApi->private_link_services_check_private_link_service_visibility_by_resource_group: #{e}"
end
```

#### Using the private_link_services_check_private_link_service_visibility_by_resource_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PrivateLinkServiceVisibility>, Integer, Hash)> private_link_services_check_private_link_service_visibility_by_resource_group_with_http_info(api_version, subscription_id, resource_group_name, location, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.private_link_services_check_private_link_service_visibility_by_resource_group_with_http_info(api_version, subscription_id, resource_group_name, location, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrivateLinkServiceVisibility>
rescue AzureSDK::ApiError => e
  puts "Error when calling PrivateLinkServicesApi->private_link_services_check_private_link_service_visibility_by_resource_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **location** | **String** | The name of the Azure region. |  |
| **parameters** | [**CheckPrivateLinkServiceVisibilityRequest**](CheckPrivateLinkServiceVisibilityRequest.md) | The request body |  |

### Return type

[**PrivateLinkServiceVisibility**](PrivateLinkServiceVisibility.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## private_link_services_delete

> private_link_services_delete(api_version, subscription_id, resource_group_name, service_name)



Deletes the specified private link service.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::PrivateLinkServicesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
service_name = 'service_name_example' # String | The name of the private link service.

begin
  
  api_instance.private_link_services_delete(api_version, subscription_id, resource_group_name, service_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling PrivateLinkServicesApi->private_link_services_delete: #{e}"
end
```

#### Using the private_link_services_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> private_link_services_delete_with_http_info(api_version, subscription_id, resource_group_name, service_name)

```ruby
begin
  
  data, status_code, headers = api_instance.private_link_services_delete_with_http_info(api_version, subscription_id, resource_group_name, service_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling PrivateLinkServicesApi->private_link_services_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **service_name** | **String** | The name of the private link service. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## private_link_services_delete_private_endpoint_connection

> private_link_services_delete_private_endpoint_connection(api_version, subscription_id, resource_group_name, service_name, pe_connection_name)



Delete private end point connection for a private link service in a subscription.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::PrivateLinkServicesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
service_name = 'service_name_example' # String | The name of the private link service.
pe_connection_name = 'pe_connection_name_example' # String | The name of the resource that is unique within a resource group. This name can be used to access the resource.

begin
  
  api_instance.private_link_services_delete_private_endpoint_connection(api_version, subscription_id, resource_group_name, service_name, pe_connection_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling PrivateLinkServicesApi->private_link_services_delete_private_endpoint_connection: #{e}"
end
```

#### Using the private_link_services_delete_private_endpoint_connection_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> private_link_services_delete_private_endpoint_connection_with_http_info(api_version, subscription_id, resource_group_name, service_name, pe_connection_name)

```ruby
begin
  
  data, status_code, headers = api_instance.private_link_services_delete_private_endpoint_connection_with_http_info(api_version, subscription_id, resource_group_name, service_name, pe_connection_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling PrivateLinkServicesApi->private_link_services_delete_private_endpoint_connection_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **service_name** | **String** | The name of the private link service. |  |
| **pe_connection_name** | **String** | The name of the resource that is unique within a resource group. This name can be used to access the resource. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## private_link_services_get

> <PrivateLinkService> private_link_services_get(api_version, subscription_id, resource_group_name, service_name, opts)



Gets the specified private link service by resource group.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::PrivateLinkServicesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
service_name = 'service_name_example' # String | The name of the private link service.
opts = {
  expand: 'expand_example' # String | Expands referenced resources.
}

begin
  
  result = api_instance.private_link_services_get(api_version, subscription_id, resource_group_name, service_name, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling PrivateLinkServicesApi->private_link_services_get: #{e}"
end
```

#### Using the private_link_services_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PrivateLinkService>, Integer, Hash)> private_link_services_get_with_http_info(api_version, subscription_id, resource_group_name, service_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.private_link_services_get_with_http_info(api_version, subscription_id, resource_group_name, service_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrivateLinkService>
rescue AzureSDK::ApiError => e
  puts "Error when calling PrivateLinkServicesApi->private_link_services_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **service_name** | **String** | The name of the private link service. |  |
| **expand** | **String** | Expands referenced resources. | [optional] |

### Return type

[**PrivateLinkService**](PrivateLinkService.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## private_link_services_get_private_endpoint_connection

> <PrivateEndpointConnection> private_link_services_get_private_endpoint_connection(api_version, subscription_id, resource_group_name, service_name, pe_connection_name, opts)



Get the specific private end point connection by specific private link service in the resource group.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::PrivateLinkServicesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
service_name = 'service_name_example' # String | The name of the private link service.
pe_connection_name = 'pe_connection_name_example' # String | The name of the resource that is unique within a resource group. This name can be used to access the resource.
opts = {
  expand: 'expand_example' # String | Expands referenced resources.
}

begin
  
  result = api_instance.private_link_services_get_private_endpoint_connection(api_version, subscription_id, resource_group_name, service_name, pe_connection_name, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling PrivateLinkServicesApi->private_link_services_get_private_endpoint_connection: #{e}"
end
```

#### Using the private_link_services_get_private_endpoint_connection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PrivateEndpointConnection>, Integer, Hash)> private_link_services_get_private_endpoint_connection_with_http_info(api_version, subscription_id, resource_group_name, service_name, pe_connection_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.private_link_services_get_private_endpoint_connection_with_http_info(api_version, subscription_id, resource_group_name, service_name, pe_connection_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrivateEndpointConnection>
rescue AzureSDK::ApiError => e
  puts "Error when calling PrivateLinkServicesApi->private_link_services_get_private_endpoint_connection_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **service_name** | **String** | The name of the private link service. |  |
| **pe_connection_name** | **String** | The name of the resource that is unique within a resource group. This name can be used to access the resource. |  |
| **expand** | **String** | Expands referenced resources. | [optional] |

### Return type

[**PrivateEndpointConnection**](PrivateEndpointConnection.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## private_link_services_list

> <PrivateLinkServiceListResult> private_link_services_list(api_version, subscription_id, resource_group_name)



Gets all private link services in a resource group.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::PrivateLinkServicesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.

begin
  
  result = api_instance.private_link_services_list(api_version, subscription_id, resource_group_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling PrivateLinkServicesApi->private_link_services_list: #{e}"
end
```

#### Using the private_link_services_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PrivateLinkServiceListResult>, Integer, Hash)> private_link_services_list_with_http_info(api_version, subscription_id, resource_group_name)

```ruby
begin
  
  data, status_code, headers = api_instance.private_link_services_list_with_http_info(api_version, subscription_id, resource_group_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrivateLinkServiceListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling PrivateLinkServicesApi->private_link_services_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |

### Return type

[**PrivateLinkServiceListResult**](PrivateLinkServiceListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## private_link_services_list_auto_approved_private_link_services

> <AutoApprovedPrivateLinkServicesResult> private_link_services_list_auto_approved_private_link_services(api_version, subscription_id, location)



Returns all of the private link service ids that can be linked to a Private Endpoint with auto approved in this subscription in this region.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::PrivateLinkServicesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
location = 'location_example' # String | The name of the Azure region.

begin
  
  result = api_instance.private_link_services_list_auto_approved_private_link_services(api_version, subscription_id, location)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling PrivateLinkServicesApi->private_link_services_list_auto_approved_private_link_services: #{e}"
end
```

#### Using the private_link_services_list_auto_approved_private_link_services_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AutoApprovedPrivateLinkServicesResult>, Integer, Hash)> private_link_services_list_auto_approved_private_link_services_with_http_info(api_version, subscription_id, location)

```ruby
begin
  
  data, status_code, headers = api_instance.private_link_services_list_auto_approved_private_link_services_with_http_info(api_version, subscription_id, location)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AutoApprovedPrivateLinkServicesResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling PrivateLinkServicesApi->private_link_services_list_auto_approved_private_link_services_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **location** | **String** | The name of the Azure region. |  |

### Return type

[**AutoApprovedPrivateLinkServicesResult**](AutoApprovedPrivateLinkServicesResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## private_link_services_list_auto_approved_private_link_services_by_resource_group

> <AutoApprovedPrivateLinkServicesResult> private_link_services_list_auto_approved_private_link_services_by_resource_group(api_version, subscription_id, resource_group_name, location)



Returns all of the private link service ids that can be linked to a Private Endpoint with auto approved in this subscription in this region.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::PrivateLinkServicesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
location = 'location_example' # String | The name of the Azure region.

begin
  
  result = api_instance.private_link_services_list_auto_approved_private_link_services_by_resource_group(api_version, subscription_id, resource_group_name, location)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling PrivateLinkServicesApi->private_link_services_list_auto_approved_private_link_services_by_resource_group: #{e}"
end
```

#### Using the private_link_services_list_auto_approved_private_link_services_by_resource_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AutoApprovedPrivateLinkServicesResult>, Integer, Hash)> private_link_services_list_auto_approved_private_link_services_by_resource_group_with_http_info(api_version, subscription_id, resource_group_name, location)

```ruby
begin
  
  data, status_code, headers = api_instance.private_link_services_list_auto_approved_private_link_services_by_resource_group_with_http_info(api_version, subscription_id, resource_group_name, location)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AutoApprovedPrivateLinkServicesResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling PrivateLinkServicesApi->private_link_services_list_auto_approved_private_link_services_by_resource_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **location** | **String** | The name of the Azure region. |  |

### Return type

[**AutoApprovedPrivateLinkServicesResult**](AutoApprovedPrivateLinkServicesResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## private_link_services_list_by_subscription

> <PrivateLinkServiceListResult> private_link_services_list_by_subscription(api_version, subscription_id)



Gets all private link service in a subscription.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::PrivateLinkServicesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.

begin
  
  result = api_instance.private_link_services_list_by_subscription(api_version, subscription_id)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling PrivateLinkServicesApi->private_link_services_list_by_subscription: #{e}"
end
```

#### Using the private_link_services_list_by_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PrivateLinkServiceListResult>, Integer, Hash)> private_link_services_list_by_subscription_with_http_info(api_version, subscription_id)

```ruby
begin
  
  data, status_code, headers = api_instance.private_link_services_list_by_subscription_with_http_info(api_version, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrivateLinkServiceListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling PrivateLinkServicesApi->private_link_services_list_by_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |

### Return type

[**PrivateLinkServiceListResult**](PrivateLinkServiceListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## private_link_services_list_private_endpoint_connections

> <PrivateEndpointConnectionListResult> private_link_services_list_private_endpoint_connections(api_version, subscription_id, resource_group_name, service_name)



Gets all private end point connections for a specific private link service.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::PrivateLinkServicesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
service_name = 'service_name_example' # String | The name of the private link service.

begin
  
  result = api_instance.private_link_services_list_private_endpoint_connections(api_version, subscription_id, resource_group_name, service_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling PrivateLinkServicesApi->private_link_services_list_private_endpoint_connections: #{e}"
end
```

#### Using the private_link_services_list_private_endpoint_connections_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PrivateEndpointConnectionListResult>, Integer, Hash)> private_link_services_list_private_endpoint_connections_with_http_info(api_version, subscription_id, resource_group_name, service_name)

```ruby
begin
  
  data, status_code, headers = api_instance.private_link_services_list_private_endpoint_connections_with_http_info(api_version, subscription_id, resource_group_name, service_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrivateEndpointConnectionListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling PrivateLinkServicesApi->private_link_services_list_private_endpoint_connections_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **service_name** | **String** | The name of the private link service. |  |

### Return type

[**PrivateEndpointConnectionListResult**](PrivateEndpointConnectionListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## private_link_services_update_private_endpoint_connection

> <PrivateEndpointConnection> private_link_services_update_private_endpoint_connection(api_version, subscription_id, resource_group_name, service_name, pe_connection_name, parameters)



Approve or reject private end point connection for a private link service in a subscription.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::PrivateLinkServicesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
service_name = 'service_name_example' # String | The name of the private link service.
pe_connection_name = 'pe_connection_name_example' # String | The name of the resource that is unique within a resource group. This name can be used to access the resource.
parameters = AzureSDK::PrivateEndpointConnection.new # PrivateEndpointConnection | Parameters supplied to approve or reject the private end point connection.

begin
  
  result = api_instance.private_link_services_update_private_endpoint_connection(api_version, subscription_id, resource_group_name, service_name, pe_connection_name, parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling PrivateLinkServicesApi->private_link_services_update_private_endpoint_connection: #{e}"
end
```

#### Using the private_link_services_update_private_endpoint_connection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PrivateEndpointConnection>, Integer, Hash)> private_link_services_update_private_endpoint_connection_with_http_info(api_version, subscription_id, resource_group_name, service_name, pe_connection_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.private_link_services_update_private_endpoint_connection_with_http_info(api_version, subscription_id, resource_group_name, service_name, pe_connection_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrivateEndpointConnection>
rescue AzureSDK::ApiError => e
  puts "Error when calling PrivateLinkServicesApi->private_link_services_update_private_endpoint_connection_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **service_name** | **String** | The name of the private link service. |  |
| **pe_connection_name** | **String** | The name of the resource that is unique within a resource group. This name can be used to access the resource. |  |
| **parameters** | [**PrivateEndpointConnection**](PrivateEndpointConnection.md) | Parameters supplied to approve or reject the private end point connection. |  |

### Return type

[**PrivateEndpointConnection**](PrivateEndpointConnection.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

