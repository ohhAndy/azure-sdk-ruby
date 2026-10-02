# AzureSDK::VirtualMachineScaleSetExtensionsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**virtual_machine_scale_set_extensions_create_or_update**](VirtualMachineScaleSetExtensionsApi.md#virtual_machine_scale_set_extensions_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/extensions/{vmssExtensionName} |  |
| [**virtual_machine_scale_set_extensions_delete**](VirtualMachineScaleSetExtensionsApi.md#virtual_machine_scale_set_extensions_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/extensions/{vmssExtensionName} |  |
| [**virtual_machine_scale_set_extensions_get**](VirtualMachineScaleSetExtensionsApi.md#virtual_machine_scale_set_extensions_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/extensions/{vmssExtensionName} |  |
| [**virtual_machine_scale_set_extensions_list**](VirtualMachineScaleSetExtensionsApi.md#virtual_machine_scale_set_extensions_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/extensions |  |
| [**virtual_machine_scale_set_extensions_update**](VirtualMachineScaleSetExtensionsApi.md#virtual_machine_scale_set_extensions_update) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/extensions/{vmssExtensionName} |  |


## virtual_machine_scale_set_extensions_create_or_update

> <VirtualMachineScaleSetExtension> virtual_machine_scale_set_extensions_create_or_update(api_version, subscription_id, resource_group_name, vm_scale_set_name, vmss_extension_name, extension_parameters)



The operation to create or update an extension.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::VirtualMachineScaleSetExtensionsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.
vmss_extension_name = 'vmss_extension_name_example' # String | The name of the VM scale set extension.
extension_parameters = AzureSDK::VirtualMachineScaleSetExtension.new # VirtualMachineScaleSetExtension | Parameters supplied to the Create VM scale set Extension operation.

begin
  
  result = api_instance.virtual_machine_scale_set_extensions_create_or_update(api_version, subscription_id, resource_group_name, vm_scale_set_name, vmss_extension_name, extension_parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineScaleSetExtensionsApi->virtual_machine_scale_set_extensions_create_or_update: #{e}"
end
```

#### Using the virtual_machine_scale_set_extensions_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualMachineScaleSetExtension>, Integer, Hash)> virtual_machine_scale_set_extensions_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, vmss_extension_name, extension_parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_set_extensions_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, vmss_extension_name, extension_parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualMachineScaleSetExtension>
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineScaleSetExtensionsApi->virtual_machine_scale_set_extensions_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_scale_set_name** | **String** | The name of the VM scale set. |  |
| **vmss_extension_name** | **String** | The name of the VM scale set extension. |  |
| **extension_parameters** | [**VirtualMachineScaleSetExtension**](VirtualMachineScaleSetExtension.md) | Parameters supplied to the Create VM scale set Extension operation. |  |

### Return type

[**VirtualMachineScaleSetExtension**](VirtualMachineScaleSetExtension.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## virtual_machine_scale_set_extensions_delete

> virtual_machine_scale_set_extensions_delete(api_version, subscription_id, resource_group_name, vm_scale_set_name, vmss_extension_name)



The operation to delete the extension.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::VirtualMachineScaleSetExtensionsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.
vmss_extension_name = 'vmss_extension_name_example' # String | The name of the VM scale set extension.

begin
  
  api_instance.virtual_machine_scale_set_extensions_delete(api_version, subscription_id, resource_group_name, vm_scale_set_name, vmss_extension_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineScaleSetExtensionsApi->virtual_machine_scale_set_extensions_delete: #{e}"
end
```

#### Using the virtual_machine_scale_set_extensions_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_machine_scale_set_extensions_delete_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, vmss_extension_name)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_set_extensions_delete_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, vmss_extension_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineScaleSetExtensionsApi->virtual_machine_scale_set_extensions_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_scale_set_name** | **String** | The name of the VM scale set. |  |
| **vmss_extension_name** | **String** | The name of the VM scale set extension. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_scale_set_extensions_get

> <VirtualMachineScaleSetExtension> virtual_machine_scale_set_extensions_get(api_version, subscription_id, resource_group_name, vm_scale_set_name, vmss_extension_name, opts)



The operation to get the extension.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::VirtualMachineScaleSetExtensionsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.
vmss_extension_name = 'vmss_extension_name_example' # String | The name of the VM scale set extension.
opts = {
  expand: 'expand_example' # String | The expand expression to apply on the operation.
}

begin
  
  result = api_instance.virtual_machine_scale_set_extensions_get(api_version, subscription_id, resource_group_name, vm_scale_set_name, vmss_extension_name, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineScaleSetExtensionsApi->virtual_machine_scale_set_extensions_get: #{e}"
end
```

#### Using the virtual_machine_scale_set_extensions_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualMachineScaleSetExtension>, Integer, Hash)> virtual_machine_scale_set_extensions_get_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, vmss_extension_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_set_extensions_get_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, vmss_extension_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualMachineScaleSetExtension>
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineScaleSetExtensionsApi->virtual_machine_scale_set_extensions_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_scale_set_name** | **String** | The name of the VM scale set. |  |
| **vmss_extension_name** | **String** | The name of the VM scale set extension. |  |
| **expand** | **String** | The expand expression to apply on the operation. | [optional] |

### Return type

[**VirtualMachineScaleSetExtension**](VirtualMachineScaleSetExtension.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_scale_set_extensions_list

> <VirtualMachineScaleSetExtensionListResult> virtual_machine_scale_set_extensions_list(api_version, subscription_id, resource_group_name, vm_scale_set_name)



Gets a list of all extensions in a VM scale set.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::VirtualMachineScaleSetExtensionsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.

begin
  
  result = api_instance.virtual_machine_scale_set_extensions_list(api_version, subscription_id, resource_group_name, vm_scale_set_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineScaleSetExtensionsApi->virtual_machine_scale_set_extensions_list: #{e}"
end
```

#### Using the virtual_machine_scale_set_extensions_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualMachineScaleSetExtensionListResult>, Integer, Hash)> virtual_machine_scale_set_extensions_list_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_set_extensions_list_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualMachineScaleSetExtensionListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineScaleSetExtensionsApi->virtual_machine_scale_set_extensions_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_scale_set_name** | **String** | The name of the VM scale set. |  |

### Return type

[**VirtualMachineScaleSetExtensionListResult**](VirtualMachineScaleSetExtensionListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_scale_set_extensions_update

> <VirtualMachineScaleSetExtension> virtual_machine_scale_set_extensions_update(api_version, subscription_id, resource_group_name, vm_scale_set_name, vmss_extension_name, extension_parameters)



The operation to update an extension.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::VirtualMachineScaleSetExtensionsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.
vmss_extension_name = 'vmss_extension_name_example' # String | The name of the VM scale set extension.
extension_parameters = AzureSDK::VirtualMachineScaleSetExtensionUpdate.new # VirtualMachineScaleSetExtensionUpdate | Parameters supplied to the Update VM scale set Extension operation.

begin
  
  result = api_instance.virtual_machine_scale_set_extensions_update(api_version, subscription_id, resource_group_name, vm_scale_set_name, vmss_extension_name, extension_parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineScaleSetExtensionsApi->virtual_machine_scale_set_extensions_update: #{e}"
end
```

#### Using the virtual_machine_scale_set_extensions_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualMachineScaleSetExtension>, Integer, Hash)> virtual_machine_scale_set_extensions_update_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, vmss_extension_name, extension_parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_set_extensions_update_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, vmss_extension_name, extension_parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualMachineScaleSetExtension>
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineScaleSetExtensionsApi->virtual_machine_scale_set_extensions_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_scale_set_name** | **String** | The name of the VM scale set. |  |
| **vmss_extension_name** | **String** | The name of the VM scale set extension. |  |
| **extension_parameters** | [**VirtualMachineScaleSetExtensionUpdate**](VirtualMachineScaleSetExtensionUpdate.md) | Parameters supplied to the Update VM scale set Extension operation. |  |

### Return type

[**VirtualMachineScaleSetExtension**](VirtualMachineScaleSetExtension.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

