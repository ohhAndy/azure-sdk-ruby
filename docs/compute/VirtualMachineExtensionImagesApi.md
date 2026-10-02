# AzureSDK::VirtualMachineExtensionImagesApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**virtual_machine_extension_images_get**](VirtualMachineExtensionImagesApi.md#virtual_machine_extension_images_get) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Compute/locations/{location}/publishers/{publisherName}/artifacttypes/vmextension/types/{type}/versions/{version} |  |
| [**virtual_machine_extension_images_list_types**](VirtualMachineExtensionImagesApi.md#virtual_machine_extension_images_list_types) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Compute/locations/{location}/publishers/{publisherName}/artifacttypes/vmextension/types |  |
| [**virtual_machine_extension_images_list_versions**](VirtualMachineExtensionImagesApi.md#virtual_machine_extension_images_list_versions) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Compute/locations/{location}/publishers/{publisherName}/artifacttypes/vmextension/types/{type}/versions |  |


## virtual_machine_extension_images_get

> <VirtualMachineExtensionImage> virtual_machine_extension_images_get(api_version, subscription_id, location, publisher_name, type, version)



Gets a virtual machine extension image.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::VirtualMachineExtensionImagesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
location = 'location_example' # String | The name of Azure region.
publisher_name = 'publisher_name_example' # String | 
type = 'type_example' # String | 
version = 'version_example' # String | 

begin
  
  result = api_instance.virtual_machine_extension_images_get(api_version, subscription_id, location, publisher_name, type, version)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineExtensionImagesApi->virtual_machine_extension_images_get: #{e}"
end
```

#### Using the virtual_machine_extension_images_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualMachineExtensionImage>, Integer, Hash)> virtual_machine_extension_images_get_with_http_info(api_version, subscription_id, location, publisher_name, type, version)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_extension_images_get_with_http_info(api_version, subscription_id, location, publisher_name, type, version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualMachineExtensionImage>
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineExtensionImagesApi->virtual_machine_extension_images_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **location** | **String** | The name of Azure region. |  |
| **publisher_name** | **String** |  |  |
| **type** | **String** |  |  |
| **version** | **String** |  |  |

### Return type

[**VirtualMachineExtensionImage**](VirtualMachineExtensionImage.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_extension_images_list_types

> <Array<VirtualMachineExtensionImage>> virtual_machine_extension_images_list_types(api_version, subscription_id, location, publisher_name)



Gets a list of virtual machine extension image types.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::VirtualMachineExtensionImagesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
location = 'location_example' # String | The name of Azure region.
publisher_name = 'publisher_name_example' # String | 

begin
  
  result = api_instance.virtual_machine_extension_images_list_types(api_version, subscription_id, location, publisher_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineExtensionImagesApi->virtual_machine_extension_images_list_types: #{e}"
end
```

#### Using the virtual_machine_extension_images_list_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<VirtualMachineExtensionImage>>, Integer, Hash)> virtual_machine_extension_images_list_types_with_http_info(api_version, subscription_id, location, publisher_name)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_extension_images_list_types_with_http_info(api_version, subscription_id, location, publisher_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<VirtualMachineExtensionImage>>
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineExtensionImagesApi->virtual_machine_extension_images_list_types_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **location** | **String** | The name of Azure region. |  |
| **publisher_name** | **String** |  |  |

### Return type

[**Array&lt;VirtualMachineExtensionImage&gt;**](VirtualMachineExtensionImage.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_extension_images_list_versions

> <Array<VirtualMachineExtensionImage>> virtual_machine_extension_images_list_versions(api_version, subscription_id, location, publisher_name, type, opts)



Gets a list of virtual machine extension image versions.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::VirtualMachineExtensionImagesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
location = 'location_example' # String | The name of Azure region.
publisher_name = 'publisher_name_example' # String | 
type = 'type_example' # String | 
opts = {
  filter: 'filter_example', # String | The filter to apply on the operation.
  top: 56, # Integer | 
  orderby: 'orderby_example', # String | 
  expand: 'properties' # String | Expand the response to include additional read-only metadata. Allowed values: `properties` — returns extended metadata (`releaseCategory`, `urgencyLevel`, `runProfile`).
}

begin
  
  result = api_instance.virtual_machine_extension_images_list_versions(api_version, subscription_id, location, publisher_name, type, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineExtensionImagesApi->virtual_machine_extension_images_list_versions: #{e}"
end
```

#### Using the virtual_machine_extension_images_list_versions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<VirtualMachineExtensionImage>>, Integer, Hash)> virtual_machine_extension_images_list_versions_with_http_info(api_version, subscription_id, location, publisher_name, type, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_extension_images_list_versions_with_http_info(api_version, subscription_id, location, publisher_name, type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<VirtualMachineExtensionImage>>
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineExtensionImagesApi->virtual_machine_extension_images_list_versions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **location** | **String** | The name of Azure region. |  |
| **publisher_name** | **String** |  |  |
| **type** | **String** |  |  |
| **filter** | **String** | The filter to apply on the operation. | [optional] |
| **top** | **Integer** |  | [optional] |
| **orderby** | **String** |  | [optional] |
| **expand** | **String** | Expand the response to include additional read-only metadata. Allowed values: &#x60;properties&#x60; — returns extended metadata (&#x60;releaseCategory&#x60;, &#x60;urgencyLevel&#x60;, &#x60;runProfile&#x60;). | [optional] |

### Return type

[**Array&lt;VirtualMachineExtensionImage&gt;**](VirtualMachineExtensionImage.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

