# AzureRest::VirtualMachinesApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**virtual_machines_assess_patches**](VirtualMachinesApi.md#virtual_machines_assess_patches) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachines/{vmName}/assessPatches |  |
| [**virtual_machines_attach_detach_data_disks**](VirtualMachinesApi.md#virtual_machines_attach_detach_data_disks) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachines/{vmName}/attachDetachDataDisks |  |
| [**virtual_machines_capture**](VirtualMachinesApi.md#virtual_machines_capture) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachines/{vmName}/capture |  |
| [**virtual_machines_convert_to_managed_disks**](VirtualMachinesApi.md#virtual_machines_convert_to_managed_disks) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachines/{vmName}/convertToManagedDisks |  |
| [**virtual_machines_create_or_update**](VirtualMachinesApi.md#virtual_machines_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachines/{vmName} |  |
| [**virtual_machines_deallocate**](VirtualMachinesApi.md#virtual_machines_deallocate) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachines/{vmName}/deallocate |  |
| [**virtual_machines_delete**](VirtualMachinesApi.md#virtual_machines_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachines/{vmName} |  |
| [**virtual_machines_generalize**](VirtualMachinesApi.md#virtual_machines_generalize) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachines/{vmName}/generalize |  |
| [**virtual_machines_get**](VirtualMachinesApi.md#virtual_machines_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachines/{vmName} |  |
| [**virtual_machines_install_patches**](VirtualMachinesApi.md#virtual_machines_install_patches) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachines/{vmName}/installPatches |  |
| [**virtual_machines_instance_view**](VirtualMachinesApi.md#virtual_machines_instance_view) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachines/{vmName}/instanceView |  |
| [**virtual_machines_list**](VirtualMachinesApi.md#virtual_machines_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachines |  |
| [**virtual_machines_list_all**](VirtualMachinesApi.md#virtual_machines_list_all) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Compute/virtualMachines |  |
| [**virtual_machines_list_available_sizes**](VirtualMachinesApi.md#virtual_machines_list_available_sizes) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachines/{vmName}/vmSizes |  |
| [**virtual_machines_list_by_location**](VirtualMachinesApi.md#virtual_machines_list_by_location) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Compute/locations/{location}/virtualMachines |  |
| [**virtual_machines_migrate_to_vm_scale_set**](VirtualMachinesApi.md#virtual_machines_migrate_to_vm_scale_set) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachines/{vmName}/migrateToVirtualMachineScaleSet |  |
| [**virtual_machines_perform_maintenance**](VirtualMachinesApi.md#virtual_machines_perform_maintenance) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachines/{vmName}/performMaintenance |  |
| [**virtual_machines_power_off**](VirtualMachinesApi.md#virtual_machines_power_off) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachines/{vmName}/powerOff |  |
| [**virtual_machines_reapply**](VirtualMachinesApi.md#virtual_machines_reapply) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachines/{vmName}/reapply |  |
| [**virtual_machines_redeploy**](VirtualMachinesApi.md#virtual_machines_redeploy) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachines/{vmName}/redeploy |  |
| [**virtual_machines_reimage**](VirtualMachinesApi.md#virtual_machines_reimage) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachines/{vmName}/reimage |  |
| [**virtual_machines_restart**](VirtualMachinesApi.md#virtual_machines_restart) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachines/{vmName}/restart |  |
| [**virtual_machines_retrieve_boot_diagnostics_data**](VirtualMachinesApi.md#virtual_machines_retrieve_boot_diagnostics_data) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachines/{vmName}/retrieveBootDiagnosticsData |  |
| [**virtual_machines_run_command**](VirtualMachinesApi.md#virtual_machines_run_command) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachines/{vmName}/runCommand |  |
| [**virtual_machines_simulate_eviction**](VirtualMachinesApi.md#virtual_machines_simulate_eviction) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachines/{vmName}/simulateEviction |  |
| [**virtual_machines_start**](VirtualMachinesApi.md#virtual_machines_start) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachines/{vmName}/start |  |
| [**virtual_machines_update**](VirtualMachinesApi.md#virtual_machines_update) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachines/{vmName} |  |


## virtual_machines_assess_patches

> <VirtualMachineAssessPatchesResult> virtual_machines_assess_patches(api_version, subscription_id, resource_group_name, vm_name)



Assess patches on the VM.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachinesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_name = 'vm_name_example' # String | The name of the virtual machine.

begin
  
  result = api_instance.virtual_machines_assess_patches(api_version, subscription_id, resource_group_name, vm_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachinesApi->virtual_machines_assess_patches: #{e}"
end
```

#### Using the virtual_machines_assess_patches_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualMachineAssessPatchesResult>, Integer, Hash)> virtual_machines_assess_patches_with_http_info(api_version, subscription_id, resource_group_name, vm_name)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machines_assess_patches_with_http_info(api_version, subscription_id, resource_group_name, vm_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualMachineAssessPatchesResult>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachinesApi->virtual_machines_assess_patches_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_name** | **String** | The name of the virtual machine. |  |

### Return type

[**VirtualMachineAssessPatchesResult**](VirtualMachineAssessPatchesResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machines_attach_detach_data_disks

> <StorageProfile> virtual_machines_attach_detach_data_disks(api_version, subscription_id, resource_group_name, vm_name, parameters)



Attach and detach data disks to/from the virtual machine.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachinesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_name = 'vm_name_example' # String | The name of the virtual machine.
parameters = AzureRest::AttachDetachDataDisksRequest.new # AttachDetachDataDisksRequest | Parameters supplied to the attach and detach data disks operation on the virtual machine.

begin
  
  result = api_instance.virtual_machines_attach_detach_data_disks(api_version, subscription_id, resource_group_name, vm_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachinesApi->virtual_machines_attach_detach_data_disks: #{e}"
end
```

#### Using the virtual_machines_attach_detach_data_disks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StorageProfile>, Integer, Hash)> virtual_machines_attach_detach_data_disks_with_http_info(api_version, subscription_id, resource_group_name, vm_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machines_attach_detach_data_disks_with_http_info(api_version, subscription_id, resource_group_name, vm_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StorageProfile>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachinesApi->virtual_machines_attach_detach_data_disks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_name** | **String** | The name of the virtual machine. |  |
| **parameters** | [**AttachDetachDataDisksRequest**](AttachDetachDataDisksRequest.md) | Parameters supplied to the attach and detach data disks operation on the virtual machine. |  |

### Return type

[**StorageProfile**](StorageProfile.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## virtual_machines_capture

> <VirtualMachineCaptureResult> virtual_machines_capture(api_version, subscription_id, resource_group_name, vm_name, parameters)



Captures the VM by copying virtual hard disks of the VM and outputs a template that can be used to create similar VMs.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachinesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_name = 'vm_name_example' # String | The name of the virtual machine.
parameters = AzureRest::VirtualMachineCaptureParameters.new({vhd_prefix: 'vhd_prefix_example', destination_container_name: 'destination_container_name_example', overwrite_vhds: false}) # VirtualMachineCaptureParameters | Parameters supplied to the Capture Virtual Machine operation.

begin
  
  result = api_instance.virtual_machines_capture(api_version, subscription_id, resource_group_name, vm_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachinesApi->virtual_machines_capture: #{e}"
end
```

#### Using the virtual_machines_capture_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualMachineCaptureResult>, Integer, Hash)> virtual_machines_capture_with_http_info(api_version, subscription_id, resource_group_name, vm_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machines_capture_with_http_info(api_version, subscription_id, resource_group_name, vm_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualMachineCaptureResult>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachinesApi->virtual_machines_capture_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_name** | **String** | The name of the virtual machine. |  |
| **parameters** | [**VirtualMachineCaptureParameters**](VirtualMachineCaptureParameters.md) | Parameters supplied to the Capture Virtual Machine operation. |  |

### Return type

[**VirtualMachineCaptureResult**](VirtualMachineCaptureResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## virtual_machines_convert_to_managed_disks

> virtual_machines_convert_to_managed_disks(api_version, subscription_id, resource_group_name, vm_name)



Converts virtual machine disks from blob-based to managed disks. Virtual machine must be stop-deallocated before invoking this operation.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachinesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_name = 'vm_name_example' # String | The name of the virtual machine.

begin
  
  api_instance.virtual_machines_convert_to_managed_disks(api_version, subscription_id, resource_group_name, vm_name)
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachinesApi->virtual_machines_convert_to_managed_disks: #{e}"
end
```

#### Using the virtual_machines_convert_to_managed_disks_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_machines_convert_to_managed_disks_with_http_info(api_version, subscription_id, resource_group_name, vm_name)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machines_convert_to_managed_disks_with_http_info(api_version, subscription_id, resource_group_name, vm_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachinesApi->virtual_machines_convert_to_managed_disks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_name** | **String** | The name of the virtual machine. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machines_create_or_update

> <VirtualMachine> virtual_machines_create_or_update(api_version, subscription_id, resource_group_name, vm_name, parameters, opts)



The operation to create or update a virtual machine. Please note some properties can be set only during virtual machine creation.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachinesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_name = 'vm_name_example' # String | The name of the virtual machine.
parameters = AzureRest::VirtualMachine.new({location: 'location_example'}) # VirtualMachine | Parameters supplied to the Create Virtual Machine operation.
opts = {
  if_match: 'if_match_example', # String | The ETag of the transformation. Omit this value to always overwrite the current resource. Specify the last-seen ETag value to prevent accidentally overwriting concurrent changes.
  if_none_match: 'if_none_match_example' # String | Set to '*' to allow a new record set to be created, but to prevent updating an existing record set. Other values will result in error from server as they are not supported.
}

begin
  
  result = api_instance.virtual_machines_create_or_update(api_version, subscription_id, resource_group_name, vm_name, parameters, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachinesApi->virtual_machines_create_or_update: #{e}"
end
```

#### Using the virtual_machines_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualMachine>, Integer, Hash)> virtual_machines_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, vm_name, parameters, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machines_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, vm_name, parameters, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualMachine>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachinesApi->virtual_machines_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_name** | **String** | The name of the virtual machine. |  |
| **parameters** | [**VirtualMachine**](VirtualMachine.md) | Parameters supplied to the Create Virtual Machine operation. |  |
| **if_match** | **String** | The ETag of the transformation. Omit this value to always overwrite the current resource. Specify the last-seen ETag value to prevent accidentally overwriting concurrent changes. | [optional] |
| **if_none_match** | **String** | Set to &#39;*&#39; to allow a new record set to be created, but to prevent updating an existing record set. Other values will result in error from server as they are not supported. | [optional] |

### Return type

[**VirtualMachine**](VirtualMachine.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## virtual_machines_deallocate

> virtual_machines_deallocate(api_version, subscription_id, resource_group_name, vm_name, opts)



Shuts down the virtual machine and releases the compute resources. You are not billed for the compute resources that this virtual machine uses.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachinesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_name = 'vm_name_example' # String | The name of the virtual machine.
opts = {
  hibernate: true, # Boolean | Optional parameter to hibernate a virtual machine.
  force_deallocate: true # Boolean | Optional parameter to force deallocate a virtual machine. Default is false.
}

begin
  
  api_instance.virtual_machines_deallocate(api_version, subscription_id, resource_group_name, vm_name, opts)
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachinesApi->virtual_machines_deallocate: #{e}"
end
```

#### Using the virtual_machines_deallocate_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_machines_deallocate_with_http_info(api_version, subscription_id, resource_group_name, vm_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machines_deallocate_with_http_info(api_version, subscription_id, resource_group_name, vm_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachinesApi->virtual_machines_deallocate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_name** | **String** | The name of the virtual machine. |  |
| **hibernate** | **Boolean** | Optional parameter to hibernate a virtual machine. | [optional] |
| **force_deallocate** | **Boolean** | Optional parameter to force deallocate a virtual machine. Default is false. | [optional] |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machines_delete

> virtual_machines_delete(api_version, subscription_id, resource_group_name, vm_name, opts)



The operation to delete a virtual machine.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachinesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_name = 'vm_name_example' # String | The name of the virtual machine.
opts = {
  force_deletion: true # Boolean | Optional parameter to force delete virtual machines.
}

begin
  
  api_instance.virtual_machines_delete(api_version, subscription_id, resource_group_name, vm_name, opts)
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachinesApi->virtual_machines_delete: #{e}"
end
```

#### Using the virtual_machines_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_machines_delete_with_http_info(api_version, subscription_id, resource_group_name, vm_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machines_delete_with_http_info(api_version, subscription_id, resource_group_name, vm_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachinesApi->virtual_machines_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_name** | **String** | The name of the virtual machine. |  |
| **force_deletion** | **Boolean** | Optional parameter to force delete virtual machines. | [optional] |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machines_generalize

> virtual_machines_generalize(api_version, subscription_id, resource_group_name, vm_name)



Sets the OS state of the virtual machine to generalized. It is recommended to sysprep the virtual machine before performing this operation. For Windows, please refer to [Create a managed image of a generalized VM in Azure](https://docs.microsoft.com/azure/virtual-machines/windows/capture-image-resource). For Linux, please refer to [How to create an image of a virtual machine or VHD](https://docs.microsoft.com/azure/virtual-machines/linux/capture-image).

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachinesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_name = 'vm_name_example' # String | The name of the virtual machine.

begin
  
  api_instance.virtual_machines_generalize(api_version, subscription_id, resource_group_name, vm_name)
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachinesApi->virtual_machines_generalize: #{e}"
end
```

#### Using the virtual_machines_generalize_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_machines_generalize_with_http_info(api_version, subscription_id, resource_group_name, vm_name)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machines_generalize_with_http_info(api_version, subscription_id, resource_group_name, vm_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachinesApi->virtual_machines_generalize_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_name** | **String** | The name of the virtual machine. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machines_get

> <VirtualMachine> virtual_machines_get(api_version, subscription_id, resource_group_name, vm_name, opts)



Retrieves information about the model view or the instance view of a virtual machine.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachinesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_name = 'vm_name_example' # String | The name of the virtual machine.
opts = {
  expand: 'instanceView' # String | The expand expression to apply on the operation. 'InstanceView' retrieves a snapshot of the runtime properties of the virtual machine that is managed by the platform and can change outside of control plane operations. 'UserData' retrieves the UserData property as part of the VM model view that was provided by the user during the VM Create/Update operation.
}

begin
  
  result = api_instance.virtual_machines_get(api_version, subscription_id, resource_group_name, vm_name, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachinesApi->virtual_machines_get: #{e}"
end
```

#### Using the virtual_machines_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualMachine>, Integer, Hash)> virtual_machines_get_with_http_info(api_version, subscription_id, resource_group_name, vm_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machines_get_with_http_info(api_version, subscription_id, resource_group_name, vm_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualMachine>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachinesApi->virtual_machines_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_name** | **String** | The name of the virtual machine. |  |
| **expand** | **String** | The expand expression to apply on the operation. &#39;InstanceView&#39; retrieves a snapshot of the runtime properties of the virtual machine that is managed by the platform and can change outside of control plane operations. &#39;UserData&#39; retrieves the UserData property as part of the VM model view that was provided by the user during the VM Create/Update operation. | [optional] |

### Return type

[**VirtualMachine**](VirtualMachine.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machines_install_patches

> <VirtualMachineInstallPatchesResult> virtual_machines_install_patches(api_version, subscription_id, resource_group_name, vm_name, install_patches_input)



Installs patches on the VM.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachinesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_name = 'vm_name_example' # String | The name of the virtual machine.
install_patches_input = AzureRest::VirtualMachineInstallPatchesParameters.new({reboot_setting: AzureRest::VMGuestPatchRebootSetting::IF_REQUIRED}) # VirtualMachineInstallPatchesParameters | Input for InstallPatches as directly received by the API

begin
  
  result = api_instance.virtual_machines_install_patches(api_version, subscription_id, resource_group_name, vm_name, install_patches_input)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachinesApi->virtual_machines_install_patches: #{e}"
end
```

#### Using the virtual_machines_install_patches_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualMachineInstallPatchesResult>, Integer, Hash)> virtual_machines_install_patches_with_http_info(api_version, subscription_id, resource_group_name, vm_name, install_patches_input)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machines_install_patches_with_http_info(api_version, subscription_id, resource_group_name, vm_name, install_patches_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualMachineInstallPatchesResult>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachinesApi->virtual_machines_install_patches_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_name** | **String** | The name of the virtual machine. |  |
| **install_patches_input** | [**VirtualMachineInstallPatchesParameters**](VirtualMachineInstallPatchesParameters.md) | Input for InstallPatches as directly received by the API |  |

### Return type

[**VirtualMachineInstallPatchesResult**](VirtualMachineInstallPatchesResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## virtual_machines_instance_view

> <VirtualMachineInstanceView> virtual_machines_instance_view(api_version, subscription_id, resource_group_name, vm_name)



Retrieves information about the run-time state of a virtual machine.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachinesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_name = 'vm_name_example' # String | The name of the virtual machine.

begin
  
  result = api_instance.virtual_machines_instance_view(api_version, subscription_id, resource_group_name, vm_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachinesApi->virtual_machines_instance_view: #{e}"
end
```

#### Using the virtual_machines_instance_view_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualMachineInstanceView>, Integer, Hash)> virtual_machines_instance_view_with_http_info(api_version, subscription_id, resource_group_name, vm_name)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machines_instance_view_with_http_info(api_version, subscription_id, resource_group_name, vm_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualMachineInstanceView>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachinesApi->virtual_machines_instance_view_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_name** | **String** | The name of the virtual machine. |  |

### Return type

[**VirtualMachineInstanceView**](VirtualMachineInstanceView.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machines_list

> <VirtualMachineListResult> virtual_machines_list(api_version, subscription_id, resource_group_name, opts)



Lists all of the virtual machines in the specified resource group. Use the nextLink property in the response to get the next page of virtual machines.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachinesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
opts = {
  filter: 'filter_example', # String | The system query option to filter VMs returned in the response. Allowed value is 'virtualMachineScaleSet/id' eq /subscriptions/{subId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmssName}'
  expand: 'instanceView' # String | The expand expression to apply on operation. 'instanceView' enables fetching run time status of all Virtual Machines, this can only be specified if a valid $filter option is specified
}

begin
  
  result = api_instance.virtual_machines_list(api_version, subscription_id, resource_group_name, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachinesApi->virtual_machines_list: #{e}"
end
```

#### Using the virtual_machines_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualMachineListResult>, Integer, Hash)> virtual_machines_list_with_http_info(api_version, subscription_id, resource_group_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machines_list_with_http_info(api_version, subscription_id, resource_group_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualMachineListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachinesApi->virtual_machines_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **filter** | **String** | The system query option to filter VMs returned in the response. Allowed value is &#39;virtualMachineScaleSet/id&#39; eq /subscriptions/{subId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmssName}&#39; | [optional] |
| **expand** | **String** | The expand expression to apply on operation. &#39;instanceView&#39; enables fetching run time status of all Virtual Machines, this can only be specified if a valid $filter option is specified | [optional] |

### Return type

[**VirtualMachineListResult**](VirtualMachineListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machines_list_all

> <VirtualMachineListResult> virtual_machines_list_all(api_version, subscription_id, opts)



Lists all of the virtual machines in the specified subscription. Use the nextLink property in the response to get the next page of virtual machines.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachinesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
opts = {
  status_only: 'status_only_example', # String | statusOnly=true enables fetching run time status of all Virtual Machines in the subscription.
  filter: 'filter_example', # String | The system query option to filter VMs returned in the response. Allowed value is 'virtualMachineScaleSet/id' eq /subscriptions/{subId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmssName}'
  expand: 'instanceView' # String | The expand expression to apply on operation. 'instanceView' enables fetching run time status of all Virtual Machines, this can only be specified if a valid $filter option is specified
}

begin
  
  result = api_instance.virtual_machines_list_all(api_version, subscription_id, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachinesApi->virtual_machines_list_all: #{e}"
end
```

#### Using the virtual_machines_list_all_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualMachineListResult>, Integer, Hash)> virtual_machines_list_all_with_http_info(api_version, subscription_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machines_list_all_with_http_info(api_version, subscription_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualMachineListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachinesApi->virtual_machines_list_all_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **status_only** | **String** | statusOnly&#x3D;true enables fetching run time status of all Virtual Machines in the subscription. | [optional] |
| **filter** | **String** | The system query option to filter VMs returned in the response. Allowed value is &#39;virtualMachineScaleSet/id&#39; eq /subscriptions/{subId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmssName}&#39; | [optional] |
| **expand** | **String** | The expand expression to apply on operation. &#39;instanceView&#39; enables fetching run time status of all Virtual Machines, this can only be specified if a valid $filter option is specified | [optional] |

### Return type

[**VirtualMachineListResult**](VirtualMachineListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machines_list_available_sizes

> <VirtualMachineSizeListResult> virtual_machines_list_available_sizes(api_version, subscription_id, resource_group_name, vm_name)



Lists all available virtual machine sizes to which the specified virtual machine can be resized.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachinesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_name = 'vm_name_example' # String | The name of the virtual machine.

begin
  
  result = api_instance.virtual_machines_list_available_sizes(api_version, subscription_id, resource_group_name, vm_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachinesApi->virtual_machines_list_available_sizes: #{e}"
end
```

#### Using the virtual_machines_list_available_sizes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualMachineSizeListResult>, Integer, Hash)> virtual_machines_list_available_sizes_with_http_info(api_version, subscription_id, resource_group_name, vm_name)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machines_list_available_sizes_with_http_info(api_version, subscription_id, resource_group_name, vm_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualMachineSizeListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachinesApi->virtual_machines_list_available_sizes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_name** | **String** | The name of the virtual machine. |  |

### Return type

[**VirtualMachineSizeListResult**](VirtualMachineSizeListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machines_list_by_location

> <VirtualMachineListResult> virtual_machines_list_by_location(api_version, subscription_id, location)



Gets all the virtual machines under the specified subscription for the specified location.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachinesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
location = 'location_example' # String | The name of Azure region.

begin
  
  result = api_instance.virtual_machines_list_by_location(api_version, subscription_id, location)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachinesApi->virtual_machines_list_by_location: #{e}"
end
```

#### Using the virtual_machines_list_by_location_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualMachineListResult>, Integer, Hash)> virtual_machines_list_by_location_with_http_info(api_version, subscription_id, location)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machines_list_by_location_with_http_info(api_version, subscription_id, location)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualMachineListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachinesApi->virtual_machines_list_by_location_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **location** | **String** | The name of Azure region. |  |

### Return type

[**VirtualMachineListResult**](VirtualMachineListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machines_migrate_to_vm_scale_set

> virtual_machines_migrate_to_vm_scale_set(api_version, subscription_id, resource_group_name, vm_name, opts)



Migrate a virtual machine from availability set to Flexible Virtual Machine Scale Set.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachinesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_name = 'vm_name_example' # String | The name of the virtual machine.
opts = {
  parameters: AzureRest::MigrateVMToVirtualMachineScaleSetInput.new # MigrateVMToVirtualMachineScaleSetInput | Parameters supplied to the Migrate Virtual Machine operation.
}

begin
  
  api_instance.virtual_machines_migrate_to_vm_scale_set(api_version, subscription_id, resource_group_name, vm_name, opts)
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachinesApi->virtual_machines_migrate_to_vm_scale_set: #{e}"
end
```

#### Using the virtual_machines_migrate_to_vm_scale_set_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_machines_migrate_to_vm_scale_set_with_http_info(api_version, subscription_id, resource_group_name, vm_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machines_migrate_to_vm_scale_set_with_http_info(api_version, subscription_id, resource_group_name, vm_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachinesApi->virtual_machines_migrate_to_vm_scale_set_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_name** | **String** | The name of the virtual machine. |  |
| **parameters** | [**MigrateVMToVirtualMachineScaleSetInput**](MigrateVMToVirtualMachineScaleSetInput.md) | Parameters supplied to the Migrate Virtual Machine operation. | [optional] |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## virtual_machines_perform_maintenance

> virtual_machines_perform_maintenance(api_version, subscription_id, resource_group_name, vm_name)



The operation to perform maintenance on a virtual machine.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachinesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_name = 'vm_name_example' # String | The name of the virtual machine.

begin
  
  api_instance.virtual_machines_perform_maintenance(api_version, subscription_id, resource_group_name, vm_name)
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachinesApi->virtual_machines_perform_maintenance: #{e}"
end
```

#### Using the virtual_machines_perform_maintenance_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_machines_perform_maintenance_with_http_info(api_version, subscription_id, resource_group_name, vm_name)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machines_perform_maintenance_with_http_info(api_version, subscription_id, resource_group_name, vm_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachinesApi->virtual_machines_perform_maintenance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_name** | **String** | The name of the virtual machine. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machines_power_off

> virtual_machines_power_off(api_version, subscription_id, resource_group_name, vm_name, opts)



The operation to power off (stop) a virtual machine. The virtual machine can be restarted with the same provisioned resources. You are still charged for this virtual machine.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachinesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_name = 'vm_name_example' # String | The name of the virtual machine.
opts = {
  skip_shutdown: true # Boolean | The parameter to request non-graceful VM shutdown. True value for this flag indicates non-graceful shutdown whereas false indicates otherwise. Default value for this flag is false if not specified
}

begin
  
  api_instance.virtual_machines_power_off(api_version, subscription_id, resource_group_name, vm_name, opts)
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachinesApi->virtual_machines_power_off: #{e}"
end
```

#### Using the virtual_machines_power_off_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_machines_power_off_with_http_info(api_version, subscription_id, resource_group_name, vm_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machines_power_off_with_http_info(api_version, subscription_id, resource_group_name, vm_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachinesApi->virtual_machines_power_off_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_name** | **String** | The name of the virtual machine. |  |
| **skip_shutdown** | **Boolean** | The parameter to request non-graceful VM shutdown. True value for this flag indicates non-graceful shutdown whereas false indicates otherwise. Default value for this flag is false if not specified | [optional] |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machines_reapply

> virtual_machines_reapply(api_version, subscription_id, resource_group_name, vm_name)



The operation to reapply a virtual machine's state.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachinesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_name = 'vm_name_example' # String | The name of the virtual machine.

begin
  
  api_instance.virtual_machines_reapply(api_version, subscription_id, resource_group_name, vm_name)
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachinesApi->virtual_machines_reapply: #{e}"
end
```

#### Using the virtual_machines_reapply_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_machines_reapply_with_http_info(api_version, subscription_id, resource_group_name, vm_name)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machines_reapply_with_http_info(api_version, subscription_id, resource_group_name, vm_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachinesApi->virtual_machines_reapply_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_name** | **String** | The name of the virtual machine. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machines_redeploy

> virtual_machines_redeploy(api_version, subscription_id, resource_group_name, vm_name)



Shuts down the virtual machine, moves it to a new node, and powers it back on.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachinesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_name = 'vm_name_example' # String | The name of the virtual machine.

begin
  
  api_instance.virtual_machines_redeploy(api_version, subscription_id, resource_group_name, vm_name)
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachinesApi->virtual_machines_redeploy: #{e}"
end
```

#### Using the virtual_machines_redeploy_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_machines_redeploy_with_http_info(api_version, subscription_id, resource_group_name, vm_name)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machines_redeploy_with_http_info(api_version, subscription_id, resource_group_name, vm_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachinesApi->virtual_machines_redeploy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_name** | **String** | The name of the virtual machine. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machines_reimage

> virtual_machines_reimage(api_version, subscription_id, resource_group_name, vm_name, opts)



Reimages (upgrade the operating system) a virtual machine which don't have a ephemeral OS disk, for virtual machines who have a ephemeral OS disk the virtual machine is reset to initial state. NOTE: The retaining of old OS disk depends on the value of deleteOption of OS disk. If deleteOption is detach, the old OS disk will be preserved after reimage. If deleteOption is delete, the old OS disk will be deleted after reimage. The deleteOption of the OS disk should be updated accordingly before performing the reimage.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachinesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_name = 'vm_name_example' # String | The name of the virtual machine.
opts = {
  parameters: AzureRest::VirtualMachineReimageParameters.new # VirtualMachineReimageParameters | Parameters supplied to the Reimage Virtual Machine operation.
}

begin
  
  api_instance.virtual_machines_reimage(api_version, subscription_id, resource_group_name, vm_name, opts)
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachinesApi->virtual_machines_reimage: #{e}"
end
```

#### Using the virtual_machines_reimage_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_machines_reimage_with_http_info(api_version, subscription_id, resource_group_name, vm_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machines_reimage_with_http_info(api_version, subscription_id, resource_group_name, vm_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachinesApi->virtual_machines_reimage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_name** | **String** | The name of the virtual machine. |  |
| **parameters** | [**VirtualMachineReimageParameters**](VirtualMachineReimageParameters.md) | Parameters supplied to the Reimage Virtual Machine operation. | [optional] |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## virtual_machines_restart

> virtual_machines_restart(api_version, subscription_id, resource_group_name, vm_name)



The operation to restart a virtual machine.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachinesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_name = 'vm_name_example' # String | The name of the virtual machine.

begin
  
  api_instance.virtual_machines_restart(api_version, subscription_id, resource_group_name, vm_name)
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachinesApi->virtual_machines_restart: #{e}"
end
```

#### Using the virtual_machines_restart_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_machines_restart_with_http_info(api_version, subscription_id, resource_group_name, vm_name)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machines_restart_with_http_info(api_version, subscription_id, resource_group_name, vm_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachinesApi->virtual_machines_restart_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_name** | **String** | The name of the virtual machine. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machines_retrieve_boot_diagnostics_data

> <RetrieveBootDiagnosticsDataResult> virtual_machines_retrieve_boot_diagnostics_data(api_version, subscription_id, resource_group_name, vm_name, opts)



The operation to retrieve SAS URIs for a virtual machine's boot diagnostic logs.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachinesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_name = 'vm_name_example' # String | The name of the virtual machine.
opts = {
  sas_uri_expiration_time_in_minutes: 56 # Integer | Expiration duration in minutes for the SAS URIs with a value between 1 to 1440 minutes. **Note:** If not specified, SAS URIs will be generated with a default expiration duration of 120 minutes.
}

begin
  
  result = api_instance.virtual_machines_retrieve_boot_diagnostics_data(api_version, subscription_id, resource_group_name, vm_name, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachinesApi->virtual_machines_retrieve_boot_diagnostics_data: #{e}"
end
```

#### Using the virtual_machines_retrieve_boot_diagnostics_data_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetrieveBootDiagnosticsDataResult>, Integer, Hash)> virtual_machines_retrieve_boot_diagnostics_data_with_http_info(api_version, subscription_id, resource_group_name, vm_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machines_retrieve_boot_diagnostics_data_with_http_info(api_version, subscription_id, resource_group_name, vm_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetrieveBootDiagnosticsDataResult>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachinesApi->virtual_machines_retrieve_boot_diagnostics_data_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_name** | **String** | The name of the virtual machine. |  |
| **sas_uri_expiration_time_in_minutes** | **Integer** | Expiration duration in minutes for the SAS URIs with a value between 1 to 1440 minutes. **Note:** If not specified, SAS URIs will be generated with a default expiration duration of 120 minutes. | [optional] |

### Return type

[**RetrieveBootDiagnosticsDataResult**](RetrieveBootDiagnosticsDataResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machines_run_command

> <RunCommandResult> virtual_machines_run_command(api_version, subscription_id, resource_group_name, vm_name, parameters)



Run command on the VM.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachinesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_name = 'vm_name_example' # String | The name of the virtual machine.
parameters = AzureRest::RunCommandInput.new({command_id: 'command_id_example'}) # RunCommandInput | Parameters supplied to the Run command operation.

begin
  
  result = api_instance.virtual_machines_run_command(api_version, subscription_id, resource_group_name, vm_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachinesApi->virtual_machines_run_command: #{e}"
end
```

#### Using the virtual_machines_run_command_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RunCommandResult>, Integer, Hash)> virtual_machines_run_command_with_http_info(api_version, subscription_id, resource_group_name, vm_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machines_run_command_with_http_info(api_version, subscription_id, resource_group_name, vm_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RunCommandResult>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachinesApi->virtual_machines_run_command_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_name** | **String** | The name of the virtual machine. |  |
| **parameters** | [**RunCommandInput**](RunCommandInput.md) | Parameters supplied to the Run command operation. |  |

### Return type

[**RunCommandResult**](RunCommandResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## virtual_machines_simulate_eviction

> virtual_machines_simulate_eviction(api_version, subscription_id, resource_group_name, vm_name)



The operation to simulate the eviction of spot virtual machine.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachinesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_name = 'vm_name_example' # String | The name of the virtual machine.

begin
  
  api_instance.virtual_machines_simulate_eviction(api_version, subscription_id, resource_group_name, vm_name)
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachinesApi->virtual_machines_simulate_eviction: #{e}"
end
```

#### Using the virtual_machines_simulate_eviction_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_machines_simulate_eviction_with_http_info(api_version, subscription_id, resource_group_name, vm_name)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machines_simulate_eviction_with_http_info(api_version, subscription_id, resource_group_name, vm_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachinesApi->virtual_machines_simulate_eviction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_name** | **String** | The name of the virtual machine. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machines_start

> virtual_machines_start(api_version, subscription_id, resource_group_name, vm_name)



The operation to start a virtual machine.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachinesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_name = 'vm_name_example' # String | The name of the virtual machine.

begin
  
  api_instance.virtual_machines_start(api_version, subscription_id, resource_group_name, vm_name)
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachinesApi->virtual_machines_start: #{e}"
end
```

#### Using the virtual_machines_start_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_machines_start_with_http_info(api_version, subscription_id, resource_group_name, vm_name)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machines_start_with_http_info(api_version, subscription_id, resource_group_name, vm_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachinesApi->virtual_machines_start_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_name** | **String** | The name of the virtual machine. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machines_update

> <VirtualMachine> virtual_machines_update(api_version, subscription_id, resource_group_name, vm_name, parameters, opts)



The operation to update a virtual machine.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachinesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_name = 'vm_name_example' # String | The name of the virtual machine.
parameters = AzureRest::VirtualMachineUpdate.new # VirtualMachineUpdate | Parameters supplied to the Update Virtual Machine operation.
opts = {
  if_match: 'if_match_example', # String | The ETag of the transformation. Omit this value to always overwrite the current resource. Specify the last-seen ETag value to prevent accidentally overwriting concurrent changes.
  if_none_match: 'if_none_match_example' # String | Set to '*' to allow a new record set to be created, but to prevent updating an existing record set. Other values will result in error from server as they are not supported.
}

begin
  
  result = api_instance.virtual_machines_update(api_version, subscription_id, resource_group_name, vm_name, parameters, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachinesApi->virtual_machines_update: #{e}"
end
```

#### Using the virtual_machines_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualMachine>, Integer, Hash)> virtual_machines_update_with_http_info(api_version, subscription_id, resource_group_name, vm_name, parameters, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machines_update_with_http_info(api_version, subscription_id, resource_group_name, vm_name, parameters, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualMachine>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachinesApi->virtual_machines_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_name** | **String** | The name of the virtual machine. |  |
| **parameters** | [**VirtualMachineUpdate**](VirtualMachineUpdate.md) | Parameters supplied to the Update Virtual Machine operation. |  |
| **if_match** | **String** | The ETag of the transformation. Omit this value to always overwrite the current resource. Specify the last-seen ETag value to prevent accidentally overwriting concurrent changes. | [optional] |
| **if_none_match** | **String** | Set to &#39;*&#39; to allow a new record set to be created, but to prevent updating an existing record set. Other values will result in error from server as they are not supported. | [optional] |

### Return type

[**VirtualMachine**](VirtualMachine.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

