# AzureSDK::VirtualMachineScaleSetVMExtensionsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**virtual_machine_scale_set_vm_extensions_create_or_update**](VirtualMachineScaleSetVMExtensionsApi.md#virtual_machine_scale_set_vm_extensions_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/virtualMachines/{instanceId}/extensions/{vmExtensionName} |  |
| [**virtual_machine_scale_set_vm_extensions_delete**](VirtualMachineScaleSetVMExtensionsApi.md#virtual_machine_scale_set_vm_extensions_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/virtualMachines/{instanceId}/extensions/{vmExtensionName} |  |
| [**virtual_machine_scale_set_vm_extensions_get**](VirtualMachineScaleSetVMExtensionsApi.md#virtual_machine_scale_set_vm_extensions_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/virtualMachines/{instanceId}/extensions/{vmExtensionName} |  |
| [**virtual_machine_scale_set_vm_extensions_list**](VirtualMachineScaleSetVMExtensionsApi.md#virtual_machine_scale_set_vm_extensions_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/virtualMachines/{instanceId}/extensions |  |
| [**virtual_machine_scale_set_vm_extensions_update**](VirtualMachineScaleSetVMExtensionsApi.md#virtual_machine_scale_set_vm_extensions_update) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/virtualMachines/{instanceId}/extensions/{vmExtensionName} |  |


## virtual_machine_scale_set_vm_extensions_create_or_update

> <VirtualMachineScaleSetVMExtension> virtual_machine_scale_set_vm_extensions_create_or_update(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, vm_extension_name, extension_parameters)



The operation to create or update the VMSS VM extension.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::VirtualMachineScaleSetVMExtensionsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.
instance_id = 'instance_id_example' # String | The instance ID of the virtual machine.
vm_extension_name = 'vm_extension_name_example' # String | The name of the virtual machine extension.
extension_parameters = AzureSDK::VirtualMachineScaleSetVMExtension.new # VirtualMachineScaleSetVMExtension | Parameters supplied to the Create Virtual Machine Extension operation.

begin
  
  result = api_instance.virtual_machine_scale_set_vm_extensions_create_or_update(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, vm_extension_name, extension_parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMExtensionsApi->virtual_machine_scale_set_vm_extensions_create_or_update: #{e}"
end
```

#### Using the virtual_machine_scale_set_vm_extensions_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualMachineScaleSetVMExtension>, Integer, Hash)> virtual_machine_scale_set_vm_extensions_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, vm_extension_name, extension_parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_set_vm_extensions_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, vm_extension_name, extension_parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualMachineScaleSetVMExtension>
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMExtensionsApi->virtual_machine_scale_set_vm_extensions_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_scale_set_name** | **String** | The name of the VM scale set. |  |
| **instance_id** | **String** | The instance ID of the virtual machine. |  |
| **vm_extension_name** | **String** | The name of the virtual machine extension. |  |
| **extension_parameters** | [**VirtualMachineScaleSetVMExtension**](VirtualMachineScaleSetVMExtension.md) | Parameters supplied to the Create Virtual Machine Extension operation. |  |

### Return type

[**VirtualMachineScaleSetVMExtension**](VirtualMachineScaleSetVMExtension.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## virtual_machine_scale_set_vm_extensions_delete

> virtual_machine_scale_set_vm_extensions_delete(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, vm_extension_name)



The operation to delete the VMSS VM extension.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::VirtualMachineScaleSetVMExtensionsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.
instance_id = 'instance_id_example' # String | The instance ID of the virtual machine.
vm_extension_name = 'vm_extension_name_example' # String | The name of the virtual machine extension.

begin
  
  api_instance.virtual_machine_scale_set_vm_extensions_delete(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, vm_extension_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMExtensionsApi->virtual_machine_scale_set_vm_extensions_delete: #{e}"
end
```

#### Using the virtual_machine_scale_set_vm_extensions_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_machine_scale_set_vm_extensions_delete_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, vm_extension_name)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_set_vm_extensions_delete_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, vm_extension_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMExtensionsApi->virtual_machine_scale_set_vm_extensions_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_scale_set_name** | **String** | The name of the VM scale set. |  |
| **instance_id** | **String** | The instance ID of the virtual machine. |  |
| **vm_extension_name** | **String** | The name of the virtual machine extension. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_scale_set_vm_extensions_get

> <VirtualMachineScaleSetVMExtension> virtual_machine_scale_set_vm_extensions_get(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, vm_extension_name, opts)



The operation to get the VMSS VM extension.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::VirtualMachineScaleSetVMExtensionsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.
instance_id = 'instance_id_example' # String | The instance ID of the virtual machine.
vm_extension_name = 'vm_extension_name_example' # String | The name of the virtual machine extension.
opts = {
  expand: 'expand_example' # String | The expand expression to apply on the operation.
}

begin
  
  result = api_instance.virtual_machine_scale_set_vm_extensions_get(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, vm_extension_name, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMExtensionsApi->virtual_machine_scale_set_vm_extensions_get: #{e}"
end
```

#### Using the virtual_machine_scale_set_vm_extensions_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualMachineScaleSetVMExtension>, Integer, Hash)> virtual_machine_scale_set_vm_extensions_get_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, vm_extension_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_set_vm_extensions_get_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, vm_extension_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualMachineScaleSetVMExtension>
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMExtensionsApi->virtual_machine_scale_set_vm_extensions_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_scale_set_name** | **String** | The name of the VM scale set. |  |
| **instance_id** | **String** | The instance ID of the virtual machine. |  |
| **vm_extension_name** | **String** | The name of the virtual machine extension. |  |
| **expand** | **String** | The expand expression to apply on the operation. | [optional] |

### Return type

[**VirtualMachineScaleSetVMExtension**](VirtualMachineScaleSetVMExtension.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_scale_set_vm_extensions_list

> <VirtualMachineScaleSetVMExtensionsListResult> virtual_machine_scale_set_vm_extensions_list(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, opts)



The operation to get all extensions of an instance in Virtual Machine Scaleset.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::VirtualMachineScaleSetVMExtensionsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.
instance_id = 'instance_id_example' # String | The instance ID of the virtual machine.
opts = {
  expand: 'expand_example' # String | The expand expression to apply on the operation.
}

begin
  
  result = api_instance.virtual_machine_scale_set_vm_extensions_list(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMExtensionsApi->virtual_machine_scale_set_vm_extensions_list: #{e}"
end
```

#### Using the virtual_machine_scale_set_vm_extensions_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualMachineScaleSetVMExtensionsListResult>, Integer, Hash)> virtual_machine_scale_set_vm_extensions_list_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_set_vm_extensions_list_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualMachineScaleSetVMExtensionsListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMExtensionsApi->virtual_machine_scale_set_vm_extensions_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_scale_set_name** | **String** | The name of the VM scale set. |  |
| **instance_id** | **String** | The instance ID of the virtual machine. |  |
| **expand** | **String** | The expand expression to apply on the operation. | [optional] |

### Return type

[**VirtualMachineScaleSetVMExtensionsListResult**](VirtualMachineScaleSetVMExtensionsListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_scale_set_vm_extensions_update

> <VirtualMachineScaleSetVMExtension> virtual_machine_scale_set_vm_extensions_update(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, vm_extension_name, extension_parameters)



The operation to update the VMSS VM extension.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::VirtualMachineScaleSetVMExtensionsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.
instance_id = 'instance_id_example' # String | The instance ID of the virtual machine.
vm_extension_name = 'vm_extension_name_example' # String | The name of the virtual machine extension.
extension_parameters = AzureSDK::VirtualMachineScaleSetVMExtensionUpdate.new # VirtualMachineScaleSetVMExtensionUpdate | Parameters supplied to the Update Virtual Machine Extension operation.

begin
  
  result = api_instance.virtual_machine_scale_set_vm_extensions_update(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, vm_extension_name, extension_parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMExtensionsApi->virtual_machine_scale_set_vm_extensions_update: #{e}"
end
```

#### Using the virtual_machine_scale_set_vm_extensions_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualMachineScaleSetVMExtension>, Integer, Hash)> virtual_machine_scale_set_vm_extensions_update_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, vm_extension_name, extension_parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_set_vm_extensions_update_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, vm_extension_name, extension_parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualMachineScaleSetVMExtension>
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMExtensionsApi->virtual_machine_scale_set_vm_extensions_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_scale_set_name** | **String** | The name of the VM scale set. |  |
| **instance_id** | **String** | The instance ID of the virtual machine. |  |
| **vm_extension_name** | **String** | The name of the virtual machine extension. |  |
| **extension_parameters** | [**VirtualMachineScaleSetVMExtensionUpdate**](VirtualMachineScaleSetVMExtensionUpdate.md) | Parameters supplied to the Update Virtual Machine Extension operation. |  |

### Return type

[**VirtualMachineScaleSetVMExtension**](VirtualMachineScaleSetVMExtension.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

