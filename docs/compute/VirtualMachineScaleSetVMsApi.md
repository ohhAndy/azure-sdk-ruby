# AzureRest::VirtualMachineScaleSetVMsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**virtual_machine_scale_set_vms_approve_rolling_upgrade**](VirtualMachineScaleSetVMsApi.md#virtual_machine_scale_set_vms_approve_rolling_upgrade) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/virtualMachines/{instanceId}/approveRollingUpgrade |  |
| [**virtual_machine_scale_set_vms_attach_detach_data_disks**](VirtualMachineScaleSetVMsApi.md#virtual_machine_scale_set_vms_attach_detach_data_disks) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/virtualMachines/{instanceId}/attachDetachDataDisks |  |
| [**virtual_machine_scale_set_vms_deallocate**](VirtualMachineScaleSetVMsApi.md#virtual_machine_scale_set_vms_deallocate) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/virtualMachines/{instanceId}/deallocate |  |
| [**virtual_machine_scale_set_vms_delete**](VirtualMachineScaleSetVMsApi.md#virtual_machine_scale_set_vms_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/virtualMachines/{instanceId} |  |
| [**virtual_machine_scale_set_vms_get**](VirtualMachineScaleSetVMsApi.md#virtual_machine_scale_set_vms_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/virtualMachines/{instanceId} |  |
| [**virtual_machine_scale_set_vms_get_instance_view**](VirtualMachineScaleSetVMsApi.md#virtual_machine_scale_set_vms_get_instance_view) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/virtualMachines/{instanceId}/instanceView |  |
| [**virtual_machine_scale_set_vms_list**](VirtualMachineScaleSetVMsApi.md#virtual_machine_scale_set_vms_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{virtualMachineScaleSetName}/virtualMachines |  |
| [**virtual_machine_scale_set_vms_perform_maintenance**](VirtualMachineScaleSetVMsApi.md#virtual_machine_scale_set_vms_perform_maintenance) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/virtualMachines/{instanceId}/performMaintenance |  |
| [**virtual_machine_scale_set_vms_power_off**](VirtualMachineScaleSetVMsApi.md#virtual_machine_scale_set_vms_power_off) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/virtualMachines/{instanceId}/powerOff |  |
| [**virtual_machine_scale_set_vms_redeploy**](VirtualMachineScaleSetVMsApi.md#virtual_machine_scale_set_vms_redeploy) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/virtualMachines/{instanceId}/redeploy |  |
| [**virtual_machine_scale_set_vms_reimage**](VirtualMachineScaleSetVMsApi.md#virtual_machine_scale_set_vms_reimage) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/virtualMachines/{instanceId}/reimage |  |
| [**virtual_machine_scale_set_vms_reimage_all**](VirtualMachineScaleSetVMsApi.md#virtual_machine_scale_set_vms_reimage_all) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/virtualMachines/{instanceId}/reimageall |  |
| [**virtual_machine_scale_set_vms_restart**](VirtualMachineScaleSetVMsApi.md#virtual_machine_scale_set_vms_restart) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/virtualMachines/{instanceId}/restart |  |
| [**virtual_machine_scale_set_vms_retrieve_boot_diagnostics_data**](VirtualMachineScaleSetVMsApi.md#virtual_machine_scale_set_vms_retrieve_boot_diagnostics_data) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/virtualMachines/{instanceId}/retrieveBootDiagnosticsData |  |
| [**virtual_machine_scale_set_vms_run_command**](VirtualMachineScaleSetVMsApi.md#virtual_machine_scale_set_vms_run_command) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/virtualMachines/{instanceId}/runCommand |  |
| [**virtual_machine_scale_set_vms_simulate_eviction**](VirtualMachineScaleSetVMsApi.md#virtual_machine_scale_set_vms_simulate_eviction) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/virtualMachines/{instanceId}/simulateEviction |  |
| [**virtual_machine_scale_set_vms_start**](VirtualMachineScaleSetVMsApi.md#virtual_machine_scale_set_vms_start) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/virtualMachines/{instanceId}/start |  |
| [**virtual_machine_scale_set_vms_update**](VirtualMachineScaleSetVMsApi.md#virtual_machine_scale_set_vms_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/virtualMachines/{instanceId} |  |


## virtual_machine_scale_set_vms_approve_rolling_upgrade

> virtual_machine_scale_set_vms_approve_rolling_upgrade(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id)



Approve upgrade on deferred rolling upgrade for OS disk on a VM scale set instance.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineScaleSetVMsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.
instance_id = 'instance_id_example' # String | The instance ID of the virtual machine.

begin
  
  api_instance.virtual_machine_scale_set_vms_approve_rolling_upgrade(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id)
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMsApi->virtual_machine_scale_set_vms_approve_rolling_upgrade: #{e}"
end
```

#### Using the virtual_machine_scale_set_vms_approve_rolling_upgrade_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_machine_scale_set_vms_approve_rolling_upgrade_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_set_vms_approve_rolling_upgrade_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMsApi->virtual_machine_scale_set_vms_approve_rolling_upgrade_with_http_info: #{e}"
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

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_scale_set_vms_attach_detach_data_disks

> <StorageProfile> virtual_machine_scale_set_vms_attach_detach_data_disks(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, parameters)



Attach and detach data disks to/from a virtual machine in a VM scale set.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineScaleSetVMsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.
instance_id = 'instance_id_example' # String | The instance ID of the virtual machine.
parameters = AzureRest::AttachDetachDataDisksRequest.new # AttachDetachDataDisksRequest | Parameters supplied to the attach and detach data disks operation on a Virtual Machine Scale Sets VM.

begin
  
  result = api_instance.virtual_machine_scale_set_vms_attach_detach_data_disks(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMsApi->virtual_machine_scale_set_vms_attach_detach_data_disks: #{e}"
end
```

#### Using the virtual_machine_scale_set_vms_attach_detach_data_disks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StorageProfile>, Integer, Hash)> virtual_machine_scale_set_vms_attach_detach_data_disks_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_set_vms_attach_detach_data_disks_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StorageProfile>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMsApi->virtual_machine_scale_set_vms_attach_detach_data_disks_with_http_info: #{e}"
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
| **parameters** | [**AttachDetachDataDisksRequest**](AttachDetachDataDisksRequest.md) | Parameters supplied to the attach and detach data disks operation on a Virtual Machine Scale Sets VM. |  |

### Return type

[**StorageProfile**](StorageProfile.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## virtual_machine_scale_set_vms_deallocate

> virtual_machine_scale_set_vms_deallocate(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id)



Deallocates a specific virtual machine in a VM scale set. Shuts down the virtual machine and releases the compute resources it uses. You are not billed for the compute resources of this virtual machine once it is deallocated.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineScaleSetVMsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.
instance_id = 'instance_id_example' # String | The instance ID of the virtual machine.

begin
  
  api_instance.virtual_machine_scale_set_vms_deallocate(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id)
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMsApi->virtual_machine_scale_set_vms_deallocate: #{e}"
end
```

#### Using the virtual_machine_scale_set_vms_deallocate_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_machine_scale_set_vms_deallocate_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_set_vms_deallocate_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMsApi->virtual_machine_scale_set_vms_deallocate_with_http_info: #{e}"
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

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_scale_set_vms_delete

> virtual_machine_scale_set_vms_delete(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, opts)



Deletes a virtual machine from a VM scale set.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineScaleSetVMsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.
instance_id = 'instance_id_example' # String | The instance ID of the virtual machine.
opts = {
  force_deletion: true # Boolean | Optional parameter to force delete a virtual machine from a VM scale set. (Feature in Preview)
}

begin
  
  api_instance.virtual_machine_scale_set_vms_delete(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, opts)
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMsApi->virtual_machine_scale_set_vms_delete: #{e}"
end
```

#### Using the virtual_machine_scale_set_vms_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_machine_scale_set_vms_delete_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_set_vms_delete_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMsApi->virtual_machine_scale_set_vms_delete_with_http_info: #{e}"
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
| **force_deletion** | **Boolean** | Optional parameter to force delete a virtual machine from a VM scale set. (Feature in Preview) | [optional] |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_scale_set_vms_get

> <VirtualMachineScaleSetVM> virtual_machine_scale_set_vms_get(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, opts)



Gets a virtual machine from a VM scale set.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineScaleSetVMsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.
instance_id = 'instance_id_example' # String | The instance ID of the virtual machine.
opts = {
  expand: 'instanceView' # String | The expand expression to apply on the operation. 'InstanceView' will retrieve the instance view of the virtual machine. 'UserData' will retrieve the UserData of the virtual machine.
}

begin
  
  result = api_instance.virtual_machine_scale_set_vms_get(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMsApi->virtual_machine_scale_set_vms_get: #{e}"
end
```

#### Using the virtual_machine_scale_set_vms_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualMachineScaleSetVM>, Integer, Hash)> virtual_machine_scale_set_vms_get_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_set_vms_get_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualMachineScaleSetVM>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMsApi->virtual_machine_scale_set_vms_get_with_http_info: #{e}"
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
| **expand** | **String** | The expand expression to apply on the operation. &#39;InstanceView&#39; will retrieve the instance view of the virtual machine. &#39;UserData&#39; will retrieve the UserData of the virtual machine. | [optional] |

### Return type

[**VirtualMachineScaleSetVM**](VirtualMachineScaleSetVM.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_scale_set_vms_get_instance_view

> <VirtualMachineScaleSetVMInstanceView> virtual_machine_scale_set_vms_get_instance_view(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id)



Gets the status of a virtual machine from a VM scale set.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineScaleSetVMsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.
instance_id = 'instance_id_example' # String | The instance ID of the virtual machine.

begin
  
  result = api_instance.virtual_machine_scale_set_vms_get_instance_view(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMsApi->virtual_machine_scale_set_vms_get_instance_view: #{e}"
end
```

#### Using the virtual_machine_scale_set_vms_get_instance_view_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualMachineScaleSetVMInstanceView>, Integer, Hash)> virtual_machine_scale_set_vms_get_instance_view_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_set_vms_get_instance_view_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualMachineScaleSetVMInstanceView>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMsApi->virtual_machine_scale_set_vms_get_instance_view_with_http_info: #{e}"
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

### Return type

[**VirtualMachineScaleSetVMInstanceView**](VirtualMachineScaleSetVMInstanceView.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_scale_set_vms_list

> <VirtualMachineScaleSetVMListResult> virtual_machine_scale_set_vms_list(api_version, subscription_id, resource_group_name, virtual_machine_scale_set_name, opts)



Gets a list of all virtual machines in a VM scale sets.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineScaleSetVMsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
virtual_machine_scale_set_name = 'virtual_machine_scale_set_name_example' # String | The name of the VirtualMachineScaleSet
opts = {
  filter: 'filter_example', # String | The filter to apply to the operation. Allowed values are 'startswith(instanceView/statuses/code, 'PowerState') eq true', 'properties/latestModelApplied eq true', 'properties/latestModelApplied eq false'.
  select: 'select_example', # String | The list parameters. Allowed values are 'instanceView', 'instanceView/statuses'.
  expand: 'expand_example' # String | The expand expression to apply to the operation. Allowed values are 'instanceView'.
}

begin
  
  result = api_instance.virtual_machine_scale_set_vms_list(api_version, subscription_id, resource_group_name, virtual_machine_scale_set_name, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMsApi->virtual_machine_scale_set_vms_list: #{e}"
end
```

#### Using the virtual_machine_scale_set_vms_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualMachineScaleSetVMListResult>, Integer, Hash)> virtual_machine_scale_set_vms_list_with_http_info(api_version, subscription_id, resource_group_name, virtual_machine_scale_set_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_set_vms_list_with_http_info(api_version, subscription_id, resource_group_name, virtual_machine_scale_set_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualMachineScaleSetVMListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMsApi->virtual_machine_scale_set_vms_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **virtual_machine_scale_set_name** | **String** | The name of the VirtualMachineScaleSet |  |
| **filter** | **String** | The filter to apply to the operation. Allowed values are &#39;startswith(instanceView/statuses/code, &#39;PowerState&#39;) eq true&#39;, &#39;properties/latestModelApplied eq true&#39;, &#39;properties/latestModelApplied eq false&#39;. | [optional] |
| **select** | **String** | The list parameters. Allowed values are &#39;instanceView&#39;, &#39;instanceView/statuses&#39;. | [optional] |
| **expand** | **String** | The expand expression to apply to the operation. Allowed values are &#39;instanceView&#39;. | [optional] |

### Return type

[**VirtualMachineScaleSetVMListResult**](VirtualMachineScaleSetVMListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_scale_set_vms_perform_maintenance

> virtual_machine_scale_set_vms_perform_maintenance(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id)



Performs maintenance on a virtual machine in a VM scale set.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineScaleSetVMsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.
instance_id = 'instance_id_example' # String | The instance ID of the virtual machine.

begin
  
  api_instance.virtual_machine_scale_set_vms_perform_maintenance(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id)
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMsApi->virtual_machine_scale_set_vms_perform_maintenance: #{e}"
end
```

#### Using the virtual_machine_scale_set_vms_perform_maintenance_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_machine_scale_set_vms_perform_maintenance_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_set_vms_perform_maintenance_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMsApi->virtual_machine_scale_set_vms_perform_maintenance_with_http_info: #{e}"
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

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_scale_set_vms_power_off

> virtual_machine_scale_set_vms_power_off(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, opts)



Power off (stop) a virtual machine in a VM scale set. Note that resources are still attached and you are getting charged for the resources. Instead, use deallocate to release resources and avoid charges.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineScaleSetVMsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.
instance_id = 'instance_id_example' # String | The instance ID of the virtual machine.
opts = {
  skip_shutdown: true # Boolean | The parameter to request non-graceful VM shutdown. True value for this flag indicates non-graceful shutdown whereas false indicates otherwise. Default value for this flag is false if not specified
}

begin
  
  api_instance.virtual_machine_scale_set_vms_power_off(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, opts)
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMsApi->virtual_machine_scale_set_vms_power_off: #{e}"
end
```

#### Using the virtual_machine_scale_set_vms_power_off_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_machine_scale_set_vms_power_off_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_set_vms_power_off_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMsApi->virtual_machine_scale_set_vms_power_off_with_http_info: #{e}"
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
| **skip_shutdown** | **Boolean** | The parameter to request non-graceful VM shutdown. True value for this flag indicates non-graceful shutdown whereas false indicates otherwise. Default value for this flag is false if not specified | [optional] |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_scale_set_vms_redeploy

> virtual_machine_scale_set_vms_redeploy(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id)



Shuts down the virtual machine in the virtual machine scale set, moves it to a new node, and powers it back on.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineScaleSetVMsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.
instance_id = 'instance_id_example' # String | The instance ID of the virtual machine.

begin
  
  api_instance.virtual_machine_scale_set_vms_redeploy(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id)
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMsApi->virtual_machine_scale_set_vms_redeploy: #{e}"
end
```

#### Using the virtual_machine_scale_set_vms_redeploy_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_machine_scale_set_vms_redeploy_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_set_vms_redeploy_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMsApi->virtual_machine_scale_set_vms_redeploy_with_http_info: #{e}"
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

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_scale_set_vms_reimage

> virtual_machine_scale_set_vms_reimage(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, opts)



Reimages (upgrade the operating system) a specific virtual machine in a VM scale set.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineScaleSetVMsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.
instance_id = 'instance_id_example' # String | The instance ID of the virtual machine.
opts = {
  vm_scale_set_vm_reimage_input: AzureRest::VirtualMachineScaleSetVMReimageParameters.new # VirtualMachineScaleSetVMReimageParameters | Parameters for the Reimaging Virtual machine in ScaleSet.
}

begin
  
  api_instance.virtual_machine_scale_set_vms_reimage(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, opts)
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMsApi->virtual_machine_scale_set_vms_reimage: #{e}"
end
```

#### Using the virtual_machine_scale_set_vms_reimage_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_machine_scale_set_vms_reimage_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_set_vms_reimage_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMsApi->virtual_machine_scale_set_vms_reimage_with_http_info: #{e}"
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
| **vm_scale_set_vm_reimage_input** | [**VirtualMachineScaleSetVMReimageParameters**](VirtualMachineScaleSetVMReimageParameters.md) | Parameters for the Reimaging Virtual machine in ScaleSet. | [optional] |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## virtual_machine_scale_set_vms_reimage_all

> virtual_machine_scale_set_vms_reimage_all(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id)



Allows you to re-image all the disks ( including data disks ) in the a VM scale set instance. This operation is only supported for managed disks.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineScaleSetVMsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.
instance_id = 'instance_id_example' # String | The instance ID of the virtual machine.

begin
  
  api_instance.virtual_machine_scale_set_vms_reimage_all(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id)
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMsApi->virtual_machine_scale_set_vms_reimage_all: #{e}"
end
```

#### Using the virtual_machine_scale_set_vms_reimage_all_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_machine_scale_set_vms_reimage_all_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_set_vms_reimage_all_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMsApi->virtual_machine_scale_set_vms_reimage_all_with_http_info: #{e}"
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

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_scale_set_vms_restart

> virtual_machine_scale_set_vms_restart(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id)



Restarts a virtual machine in a VM scale set.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineScaleSetVMsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.
instance_id = 'instance_id_example' # String | The instance ID of the virtual machine.

begin
  
  api_instance.virtual_machine_scale_set_vms_restart(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id)
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMsApi->virtual_machine_scale_set_vms_restart: #{e}"
end
```

#### Using the virtual_machine_scale_set_vms_restart_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_machine_scale_set_vms_restart_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_set_vms_restart_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMsApi->virtual_machine_scale_set_vms_restart_with_http_info: #{e}"
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

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_scale_set_vms_retrieve_boot_diagnostics_data

> <RetrieveBootDiagnosticsDataResult> virtual_machine_scale_set_vms_retrieve_boot_diagnostics_data(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, opts)



The operation to retrieve SAS URIs of boot diagnostic logs for a virtual machine in a VM scale set.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineScaleSetVMsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.
instance_id = 'instance_id_example' # String | The instance ID of the virtual machine.
opts = {
  sas_uri_expiration_time_in_minutes: 56 # Integer | Expiration duration in minutes for the SAS URIs with a value between 1 to 1440 minutes. **Note:** If not specified, SAS URIs will be generated with a default expiration duration of 120 minutes.
}

begin
  
  result = api_instance.virtual_machine_scale_set_vms_retrieve_boot_diagnostics_data(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMsApi->virtual_machine_scale_set_vms_retrieve_boot_diagnostics_data: #{e}"
end
```

#### Using the virtual_machine_scale_set_vms_retrieve_boot_diagnostics_data_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetrieveBootDiagnosticsDataResult>, Integer, Hash)> virtual_machine_scale_set_vms_retrieve_boot_diagnostics_data_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_set_vms_retrieve_boot_diagnostics_data_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetrieveBootDiagnosticsDataResult>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMsApi->virtual_machine_scale_set_vms_retrieve_boot_diagnostics_data_with_http_info: #{e}"
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
| **sas_uri_expiration_time_in_minutes** | **Integer** | Expiration duration in minutes for the SAS URIs with a value between 1 to 1440 minutes. **Note:** If not specified, SAS URIs will be generated with a default expiration duration of 120 minutes. | [optional] |

### Return type

[**RetrieveBootDiagnosticsDataResult**](RetrieveBootDiagnosticsDataResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_scale_set_vms_run_command

> <RunCommandResult> virtual_machine_scale_set_vms_run_command(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, parameters)



Run command on a virtual machine in a VM scale set.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineScaleSetVMsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.
instance_id = 'instance_id_example' # String | The instance ID of the virtual machine.
parameters = AzureRest::RunCommandInput.new({command_id: 'command_id_example'}) # RunCommandInput | Parameters supplied to the Run command operation.

begin
  
  result = api_instance.virtual_machine_scale_set_vms_run_command(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMsApi->virtual_machine_scale_set_vms_run_command: #{e}"
end
```

#### Using the virtual_machine_scale_set_vms_run_command_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RunCommandResult>, Integer, Hash)> virtual_machine_scale_set_vms_run_command_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_set_vms_run_command_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RunCommandResult>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMsApi->virtual_machine_scale_set_vms_run_command_with_http_info: #{e}"
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
| **parameters** | [**RunCommandInput**](RunCommandInput.md) | Parameters supplied to the Run command operation. |  |

### Return type

[**RunCommandResult**](RunCommandResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## virtual_machine_scale_set_vms_simulate_eviction

> virtual_machine_scale_set_vms_simulate_eviction(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id)



The operation to simulate the eviction of spot virtual machine in a VM scale set.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineScaleSetVMsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.
instance_id = 'instance_id_example' # String | The instance ID of the virtual machine.

begin
  
  api_instance.virtual_machine_scale_set_vms_simulate_eviction(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id)
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMsApi->virtual_machine_scale_set_vms_simulate_eviction: #{e}"
end
```

#### Using the virtual_machine_scale_set_vms_simulate_eviction_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_machine_scale_set_vms_simulate_eviction_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_set_vms_simulate_eviction_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMsApi->virtual_machine_scale_set_vms_simulate_eviction_with_http_info: #{e}"
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

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_scale_set_vms_start

> virtual_machine_scale_set_vms_start(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id)



Starts a virtual machine in a VM scale set.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineScaleSetVMsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.
instance_id = 'instance_id_example' # String | The instance ID of the virtual machine.

begin
  
  api_instance.virtual_machine_scale_set_vms_start(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id)
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMsApi->virtual_machine_scale_set_vms_start: #{e}"
end
```

#### Using the virtual_machine_scale_set_vms_start_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_machine_scale_set_vms_start_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_set_vms_start_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMsApi->virtual_machine_scale_set_vms_start_with_http_info: #{e}"
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

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_scale_set_vms_update

> <VirtualMachineScaleSetVM> virtual_machine_scale_set_vms_update(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, parameters, opts)



Updates a virtual machine of a VM scale set.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineScaleSetVMsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.
instance_id = 'instance_id_example' # String | The instance ID of the virtual machine.
parameters = AzureRest::VirtualMachineScaleSetVM.new({location: 'location_example'}) # VirtualMachineScaleSetVM | Parameters supplied to the Update Virtual Machine Scale Sets VM operation.
opts = {
  if_match: 'if_match_example', # String | The ETag of the transformation. Omit this value to always overwrite the current resource. Specify the last-seen ETag value to prevent accidentally overwriting concurrent changes.
  if_none_match: 'if_none_match_example' # String | Set to '*' to allow a new record set to be created, but to prevent updating an existing record set. Other values will result in error from server as they are not supported.
}

begin
  
  result = api_instance.virtual_machine_scale_set_vms_update(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, parameters, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMsApi->virtual_machine_scale_set_vms_update: #{e}"
end
```

#### Using the virtual_machine_scale_set_vms_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualMachineScaleSetVM>, Integer, Hash)> virtual_machine_scale_set_vms_update_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, parameters, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_set_vms_update_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, parameters, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualMachineScaleSetVM>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMsApi->virtual_machine_scale_set_vms_update_with_http_info: #{e}"
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
| **parameters** | [**VirtualMachineScaleSetVM**](VirtualMachineScaleSetVM.md) | Parameters supplied to the Update Virtual Machine Scale Sets VM operation. |  |
| **if_match** | **String** | The ETag of the transformation. Omit this value to always overwrite the current resource. Specify the last-seen ETag value to prevent accidentally overwriting concurrent changes. | [optional] |
| **if_none_match** | **String** | Set to &#39;*&#39; to allow a new record set to be created, but to prevent updating an existing record set. Other values will result in error from server as they are not supported. | [optional] |

### Return type

[**VirtualMachineScaleSetVM**](VirtualMachineScaleSetVM.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

