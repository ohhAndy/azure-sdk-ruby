# AzureSDK::VirtualApplianceSitesApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**virtual_appliance_sites_create_or_update**](VirtualApplianceSitesApi.md#virtual_appliance_sites_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkVirtualAppliances/{networkVirtualApplianceName}/virtualApplianceSites/{siteName} |  |
| [**virtual_appliance_sites_delete**](VirtualApplianceSitesApi.md#virtual_appliance_sites_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkVirtualAppliances/{networkVirtualApplianceName}/virtualApplianceSites/{siteName} |  |
| [**virtual_appliance_sites_get**](VirtualApplianceSitesApi.md#virtual_appliance_sites_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkVirtualAppliances/{networkVirtualApplianceName}/virtualApplianceSites/{siteName} |  |
| [**virtual_appliance_sites_list**](VirtualApplianceSitesApi.md#virtual_appliance_sites_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkVirtualAppliances/{networkVirtualApplianceName}/virtualApplianceSites |  |


## virtual_appliance_sites_create_or_update

> <VirtualApplianceSite> virtual_appliance_sites_create_or_update(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, site_name, parameters)



Creates or updates the specified Network Virtual Appliance Site.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::VirtualApplianceSitesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_virtual_appliance_name = 'network_virtual_appliance_name_example' # String | The name of Network Virtual Appliance.
site_name = 'site_name_example' # String | The name of the resource that is unique within a resource group. This name can be used to access the resource.
parameters = AzureSDK::VirtualApplianceSite.new # VirtualApplianceSite | Parameters supplied to the create or update Network Virtual Appliance Site operation.

begin
  
  result = api_instance.virtual_appliance_sites_create_or_update(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, site_name, parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualApplianceSitesApi->virtual_appliance_sites_create_or_update: #{e}"
end
```

#### Using the virtual_appliance_sites_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualApplianceSite>, Integer, Hash)> virtual_appliance_sites_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, site_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_appliance_sites_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, site_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualApplianceSite>
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualApplianceSitesApi->virtual_appliance_sites_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_virtual_appliance_name** | **String** | The name of Network Virtual Appliance. |  |
| **site_name** | **String** | The name of the resource that is unique within a resource group. This name can be used to access the resource. |  |
| **parameters** | [**VirtualApplianceSite**](VirtualApplianceSite.md) | Parameters supplied to the create or update Network Virtual Appliance Site operation. |  |

### Return type

[**VirtualApplianceSite**](VirtualApplianceSite.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## virtual_appliance_sites_delete

> virtual_appliance_sites_delete(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, site_name)



Deletes the specified site from a Virtual Appliance.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::VirtualApplianceSitesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_virtual_appliance_name = 'network_virtual_appliance_name_example' # String | The name of Network Virtual Appliance.
site_name = 'site_name_example' # String | The name of the resource that is unique within a resource group. This name can be used to access the resource.

begin
  
  api_instance.virtual_appliance_sites_delete(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, site_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualApplianceSitesApi->virtual_appliance_sites_delete: #{e}"
end
```

#### Using the virtual_appliance_sites_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_appliance_sites_delete_with_http_info(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, site_name)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_appliance_sites_delete_with_http_info(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, site_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualApplianceSitesApi->virtual_appliance_sites_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_virtual_appliance_name** | **String** | The name of Network Virtual Appliance. |  |
| **site_name** | **String** | The name of the resource that is unique within a resource group. This name can be used to access the resource. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_appliance_sites_get

> <VirtualApplianceSite> virtual_appliance_sites_get(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, site_name)



Gets the specified Virtual Appliance Site.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::VirtualApplianceSitesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_virtual_appliance_name = 'network_virtual_appliance_name_example' # String | The name of Network Virtual Appliance.
site_name = 'site_name_example' # String | The name of the resource that is unique within a resource group. This name can be used to access the resource.

begin
  
  result = api_instance.virtual_appliance_sites_get(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, site_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualApplianceSitesApi->virtual_appliance_sites_get: #{e}"
end
```

#### Using the virtual_appliance_sites_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualApplianceSite>, Integer, Hash)> virtual_appliance_sites_get_with_http_info(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, site_name)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_appliance_sites_get_with_http_info(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, site_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualApplianceSite>
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualApplianceSitesApi->virtual_appliance_sites_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_virtual_appliance_name** | **String** | The name of Network Virtual Appliance. |  |
| **site_name** | **String** | The name of the resource that is unique within a resource group. This name can be used to access the resource. |  |

### Return type

[**VirtualApplianceSite**](VirtualApplianceSite.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_appliance_sites_list

> <NetworkVirtualApplianceSiteListResult> virtual_appliance_sites_list(api_version, subscription_id, resource_group_name, network_virtual_appliance_name)



Lists all Network Virtual Appliance Sites in a Network Virtual Appliance resource.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::VirtualApplianceSitesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_virtual_appliance_name = 'network_virtual_appliance_name_example' # String | The name of Network Virtual Appliance.

begin
  
  result = api_instance.virtual_appliance_sites_list(api_version, subscription_id, resource_group_name, network_virtual_appliance_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualApplianceSitesApi->virtual_appliance_sites_list: #{e}"
end
```

#### Using the virtual_appliance_sites_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkVirtualApplianceSiteListResult>, Integer, Hash)> virtual_appliance_sites_list_with_http_info(api_version, subscription_id, resource_group_name, network_virtual_appliance_name)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_appliance_sites_list_with_http_info(api_version, subscription_id, resource_group_name, network_virtual_appliance_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkVirtualApplianceSiteListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualApplianceSitesApi->virtual_appliance_sites_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_virtual_appliance_name** | **String** | The name of Network Virtual Appliance. |  |

### Return type

[**NetworkVirtualApplianceSiteListResult**](NetworkVirtualApplianceSiteListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

