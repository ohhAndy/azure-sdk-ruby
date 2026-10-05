# AzureRest::VirtualMachineScaleSetsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**virtual_machine_scale_sets_approve_rolling_upgrade**](VirtualMachineScaleSetsApi.md#virtual_machine_scale_sets_approve_rolling_upgrade) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/approveRollingUpgrade |  |
| [**virtual_machine_scale_sets_convert_to_single_placement_group**](VirtualMachineScaleSetsApi.md#virtual_machine_scale_sets_convert_to_single_placement_group) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/convertToSinglePlacementGroup |  |
| [**virtual_machine_scale_sets_create_or_update**](VirtualMachineScaleSetsApi.md#virtual_machine_scale_sets_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName} |  |
| [**virtual_machine_scale_sets_deallocate**](VirtualMachineScaleSetsApi.md#virtual_machine_scale_sets_deallocate) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/deallocate |  |
| [**virtual_machine_scale_sets_delete**](VirtualMachineScaleSetsApi.md#virtual_machine_scale_sets_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName} |  |
| [**virtual_machine_scale_sets_delete_instances**](VirtualMachineScaleSetsApi.md#virtual_machine_scale_sets_delete_instances) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/delete |  |
| [**virtual_machine_scale_sets_force_recovery_service_fabric_platform_update_domain_walk**](VirtualMachineScaleSetsApi.md#virtual_machine_scale_sets_force_recovery_service_fabric_platform_update_domain_walk) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/forceRecoveryServiceFabricPlatformUpdateDomainWalk |  |
| [**virtual_machine_scale_sets_get**](VirtualMachineScaleSetsApi.md#virtual_machine_scale_sets_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName} |  |
| [**virtual_machine_scale_sets_get_instance_view**](VirtualMachineScaleSetsApi.md#virtual_machine_scale_sets_get_instance_view) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/instanceView |  |
| [**virtual_machine_scale_sets_get_os_upgrade_history**](VirtualMachineScaleSetsApi.md#virtual_machine_scale_sets_get_os_upgrade_history) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/osUpgradeHistory |  |
| [**virtual_machine_scale_sets_list**](VirtualMachineScaleSetsApi.md#virtual_machine_scale_sets_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets |  |
| [**virtual_machine_scale_sets_list_all**](VirtualMachineScaleSetsApi.md#virtual_machine_scale_sets_list_all) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Compute/virtualMachineScaleSets |  |
| [**virtual_machine_scale_sets_list_by_location**](VirtualMachineScaleSetsApi.md#virtual_machine_scale_sets_list_by_location) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Compute/locations/{location}/virtualMachineScaleSets |  |
| [**virtual_machine_scale_sets_list_skus**](VirtualMachineScaleSetsApi.md#virtual_machine_scale_sets_list_skus) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/skus |  |
| [**virtual_machine_scale_sets_migrate_vm_availability_zone**](VirtualMachineScaleSetsApi.md#virtual_machine_scale_sets_migrate_vm_availability_zone) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/migrateVMAvailabilityZone |  |
| [**virtual_machine_scale_sets_perform_maintenance**](VirtualMachineScaleSetsApi.md#virtual_machine_scale_sets_perform_maintenance) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/performMaintenance |  |
| [**virtual_machine_scale_sets_power_off**](VirtualMachineScaleSetsApi.md#virtual_machine_scale_sets_power_off) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/poweroff |  |
| [**virtual_machine_scale_sets_reapply**](VirtualMachineScaleSetsApi.md#virtual_machine_scale_sets_reapply) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/reapply |  |
| [**virtual_machine_scale_sets_redeploy**](VirtualMachineScaleSetsApi.md#virtual_machine_scale_sets_redeploy) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/redeploy |  |
| [**virtual_machine_scale_sets_reimage**](VirtualMachineScaleSetsApi.md#virtual_machine_scale_sets_reimage) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/reimage |  |
| [**virtual_machine_scale_sets_reimage_all**](VirtualMachineScaleSetsApi.md#virtual_machine_scale_sets_reimage_all) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/reimageall |  |
| [**virtual_machine_scale_sets_restart**](VirtualMachineScaleSetsApi.md#virtual_machine_scale_sets_restart) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/restart |  |
| [**virtual_machine_scale_sets_scale_out**](VirtualMachineScaleSetsApi.md#virtual_machine_scale_sets_scale_out) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/scaleOut |  |
| [**virtual_machine_scale_sets_set_orchestration_service_state**](VirtualMachineScaleSetsApi.md#virtual_machine_scale_sets_set_orchestration_service_state) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/setOrchestrationServiceState |  |
| [**virtual_machine_scale_sets_start**](VirtualMachineScaleSetsApi.md#virtual_machine_scale_sets_start) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/start |  |
| [**virtual_machine_scale_sets_update**](VirtualMachineScaleSetsApi.md#virtual_machine_scale_sets_update) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName} |  |
| [**virtual_machine_scale_sets_update_instances**](VirtualMachineScaleSetsApi.md#virtual_machine_scale_sets_update_instances) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/manualupgrade |  |


## virtual_machine_scale_sets_approve_rolling_upgrade

> virtual_machine_scale_sets_approve_rolling_upgrade(api_version, subscription_id, resource_group_name, vm_scale_set_name, opts)



Approve upgrade on deferred rolling upgrades for OS disks in the virtual machines in a VM scale set.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineScaleSetsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.
opts = {
  vm_instance_ids: AzureRest::VirtualMachineScaleSetVMInstanceIDs.new # VirtualMachineScaleSetVMInstanceIDs | A list of virtual machine instance IDs from the VM scale set.
}

begin
  
  api_instance.virtual_machine_scale_sets_approve_rolling_upgrade(api_version, subscription_id, resource_group_name, vm_scale_set_name, opts)
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetsApi->virtual_machine_scale_sets_approve_rolling_upgrade: #{e}"
end
```

#### Using the virtual_machine_scale_sets_approve_rolling_upgrade_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_machine_scale_sets_approve_rolling_upgrade_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_sets_approve_rolling_upgrade_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetsApi->virtual_machine_scale_sets_approve_rolling_upgrade_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_scale_set_name** | **String** | The name of the VM scale set. |  |
| **vm_instance_ids** | [**VirtualMachineScaleSetVMInstanceIDs**](VirtualMachineScaleSetVMInstanceIDs.md) | A list of virtual machine instance IDs from the VM scale set. | [optional] |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## virtual_machine_scale_sets_convert_to_single_placement_group

> virtual_machine_scale_sets_convert_to_single_placement_group(api_version, subscription_id, resource_group_name, vm_scale_set_name, parameters)



Converts SinglePlacementGroup property to false for a existing virtual machine scale set.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineScaleSetsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.
parameters = AzureRest::VMScaleSetConvertToSinglePlacementGroupInput.new # VMScaleSetConvertToSinglePlacementGroupInput | The input object for ConvertToSinglePlacementGroup API.

begin
  
  api_instance.virtual_machine_scale_sets_convert_to_single_placement_group(api_version, subscription_id, resource_group_name, vm_scale_set_name, parameters)
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetsApi->virtual_machine_scale_sets_convert_to_single_placement_group: #{e}"
end
```

#### Using the virtual_machine_scale_sets_convert_to_single_placement_group_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_machine_scale_sets_convert_to_single_placement_group_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_sets_convert_to_single_placement_group_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetsApi->virtual_machine_scale_sets_convert_to_single_placement_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_scale_set_name** | **String** | The name of the VM scale set. |  |
| **parameters** | [**VMScaleSetConvertToSinglePlacementGroupInput**](VMScaleSetConvertToSinglePlacementGroupInput.md) | The input object for ConvertToSinglePlacementGroup API. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## virtual_machine_scale_sets_create_or_update

> <VirtualMachineScaleSet> virtual_machine_scale_sets_create_or_update(api_version, subscription_id, resource_group_name, vm_scale_set_name, parameters, opts)



Create or update a VM scale set.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineScaleSetsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.
parameters = AzureRest::VirtualMachineScaleSet.new({location: 'location_example'}) # VirtualMachineScaleSet | The scale set object.
opts = {
  if_match: 'if_match_example', # String | The ETag of the transformation. Omit this value to always overwrite the current resource. Specify the last-seen ETag value to prevent accidentally overwriting concurrent changes.
  if_none_match: 'if_none_match_example' # String | Set to '*' to allow a new record set to be created, but to prevent updating an existing record set. Other values will result in error from server as they are not supported.
}

begin
  
  result = api_instance.virtual_machine_scale_sets_create_or_update(api_version, subscription_id, resource_group_name, vm_scale_set_name, parameters, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetsApi->virtual_machine_scale_sets_create_or_update: #{e}"
end
```

#### Using the virtual_machine_scale_sets_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualMachineScaleSet>, Integer, Hash)> virtual_machine_scale_sets_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, parameters, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_sets_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, parameters, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualMachineScaleSet>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetsApi->virtual_machine_scale_sets_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_scale_set_name** | **String** | The name of the VM scale set. |  |
| **parameters** | [**VirtualMachineScaleSet**](VirtualMachineScaleSet.md) | The scale set object. |  |
| **if_match** | **String** | The ETag of the transformation. Omit this value to always overwrite the current resource. Specify the last-seen ETag value to prevent accidentally overwriting concurrent changes. | [optional] |
| **if_none_match** | **String** | Set to &#39;*&#39; to allow a new record set to be created, but to prevent updating an existing record set. Other values will result in error from server as they are not supported. | [optional] |

### Return type

[**VirtualMachineScaleSet**](VirtualMachineScaleSet.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## virtual_machine_scale_sets_deallocate

> virtual_machine_scale_sets_deallocate(api_version, subscription_id, resource_group_name, vm_scale_set_name, opts)



Deallocates specific virtual machines in a VM scale set. Shuts down the virtual machines and releases the compute resources. You are not billed for the compute resources that this virtual machine scale set deallocates.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineScaleSetsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.
opts = {
  hibernate: true, # Boolean | Optional parameter to hibernate a virtual machine from the VM scale set. (This feature is available for VMSS with Flexible OrchestrationMode only)
  vm_instance_ids: AzureRest::VirtualMachineScaleSetVMInstanceIDs.new # VirtualMachineScaleSetVMInstanceIDs | A list of virtual machine instance IDs from the VM scale set.
}

begin
  
  api_instance.virtual_machine_scale_sets_deallocate(api_version, subscription_id, resource_group_name, vm_scale_set_name, opts)
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetsApi->virtual_machine_scale_sets_deallocate: #{e}"
end
```

#### Using the virtual_machine_scale_sets_deallocate_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_machine_scale_sets_deallocate_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_sets_deallocate_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetsApi->virtual_machine_scale_sets_deallocate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_scale_set_name** | **String** | The name of the VM scale set. |  |
| **hibernate** | **Boolean** | Optional parameter to hibernate a virtual machine from the VM scale set. (This feature is available for VMSS with Flexible OrchestrationMode only) | [optional] |
| **vm_instance_ids** | [**VirtualMachineScaleSetVMInstanceIDs**](VirtualMachineScaleSetVMInstanceIDs.md) | A list of virtual machine instance IDs from the VM scale set. | [optional] |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## virtual_machine_scale_sets_delete

> virtual_machine_scale_sets_delete(api_version, subscription_id, resource_group_name, vm_scale_set_name, opts)



Deletes a VM scale set.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineScaleSetsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.
opts = {
  force_deletion: true # Boolean | Optional parameter to force delete a VM scale set. (Feature in Preview)
}

begin
  
  api_instance.virtual_machine_scale_sets_delete(api_version, subscription_id, resource_group_name, vm_scale_set_name, opts)
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetsApi->virtual_machine_scale_sets_delete: #{e}"
end
```

#### Using the virtual_machine_scale_sets_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_machine_scale_sets_delete_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_sets_delete_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetsApi->virtual_machine_scale_sets_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_scale_set_name** | **String** | The name of the VM scale set. |  |
| **force_deletion** | **Boolean** | Optional parameter to force delete a VM scale set. (Feature in Preview) | [optional] |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_scale_sets_delete_instances

> virtual_machine_scale_sets_delete_instances(api_version, subscription_id, resource_group_name, vm_scale_set_name, vm_instance_ids, opts)



Deletes virtual machines in a VM scale set.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineScaleSetsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.
vm_instance_ids = AzureRest::VirtualMachineScaleSetVMInstanceRequiredIDs.new({instance_ids: ['instance_ids_example']}) # VirtualMachineScaleSetVMInstanceRequiredIDs | A list of virtual machine instance IDs from the VM scale set.
opts = {
  force_deletion: true # Boolean | Optional parameter to force delete virtual machines from the VM scale set. (Feature in Preview)
}

begin
  
  api_instance.virtual_machine_scale_sets_delete_instances(api_version, subscription_id, resource_group_name, vm_scale_set_name, vm_instance_ids, opts)
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetsApi->virtual_machine_scale_sets_delete_instances: #{e}"
end
```

#### Using the virtual_machine_scale_sets_delete_instances_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_machine_scale_sets_delete_instances_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, vm_instance_ids, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_sets_delete_instances_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, vm_instance_ids, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetsApi->virtual_machine_scale_sets_delete_instances_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_scale_set_name** | **String** | The name of the VM scale set. |  |
| **vm_instance_ids** | [**VirtualMachineScaleSetVMInstanceRequiredIDs**](VirtualMachineScaleSetVMInstanceRequiredIDs.md) | A list of virtual machine instance IDs from the VM scale set. |  |
| **force_deletion** | **Boolean** | Optional parameter to force delete virtual machines from the VM scale set. (Feature in Preview) | [optional] |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## virtual_machine_scale_sets_force_recovery_service_fabric_platform_update_domain_walk

> <RecoveryWalkResponse> virtual_machine_scale_sets_force_recovery_service_fabric_platform_update_domain_walk(api_version, subscription_id, resource_group_name, vm_scale_set_name, platform_update_domain, opts)



Manual platform update domain walk to update virtual machines in a service fabric virtual machine scale set.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineScaleSetsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.
platform_update_domain = 56 # Integer | The platform update domain for which a manual recovery walk is requested
opts = {
  zone: 'zone_example', # String | The zone in which the manual recovery walk is requested for cross zone virtual machine scale set
  placement_group_id: 'placement_group_id_example' # String | The placement group id for which the manual recovery walk is requested.
}

begin
  
  result = api_instance.virtual_machine_scale_sets_force_recovery_service_fabric_platform_update_domain_walk(api_version, subscription_id, resource_group_name, vm_scale_set_name, platform_update_domain, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetsApi->virtual_machine_scale_sets_force_recovery_service_fabric_platform_update_domain_walk: #{e}"
end
```

#### Using the virtual_machine_scale_sets_force_recovery_service_fabric_platform_update_domain_walk_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RecoveryWalkResponse>, Integer, Hash)> virtual_machine_scale_sets_force_recovery_service_fabric_platform_update_domain_walk_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, platform_update_domain, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_sets_force_recovery_service_fabric_platform_update_domain_walk_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, platform_update_domain, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RecoveryWalkResponse>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetsApi->virtual_machine_scale_sets_force_recovery_service_fabric_platform_update_domain_walk_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_scale_set_name** | **String** | The name of the VM scale set. |  |
| **platform_update_domain** | **Integer** | The platform update domain for which a manual recovery walk is requested |  |
| **zone** | **String** | The zone in which the manual recovery walk is requested for cross zone virtual machine scale set | [optional] |
| **placement_group_id** | **String** | The placement group id for which the manual recovery walk is requested. | [optional] |

### Return type

[**RecoveryWalkResponse**](RecoveryWalkResponse.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_scale_sets_get

> <VirtualMachineScaleSet> virtual_machine_scale_sets_get(api_version, subscription_id, resource_group_name, vm_scale_set_name, opts)



Display information about a virtual machine scale set.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineScaleSetsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.
opts = {
  expand: 'userData' # String | The expand expression to apply on the operation. 'UserData' retrieves the UserData property of the VM scale set that was provided by the user during the VM scale set Create/Update operation
}

begin
  
  result = api_instance.virtual_machine_scale_sets_get(api_version, subscription_id, resource_group_name, vm_scale_set_name, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetsApi->virtual_machine_scale_sets_get: #{e}"
end
```

#### Using the virtual_machine_scale_sets_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualMachineScaleSet>, Integer, Hash)> virtual_machine_scale_sets_get_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_sets_get_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualMachineScaleSet>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetsApi->virtual_machine_scale_sets_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_scale_set_name** | **String** | The name of the VM scale set. |  |
| **expand** | **String** | The expand expression to apply on the operation. &#39;UserData&#39; retrieves the UserData property of the VM scale set that was provided by the user during the VM scale set Create/Update operation | [optional] |

### Return type

[**VirtualMachineScaleSet**](VirtualMachineScaleSet.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_scale_sets_get_instance_view

> <VirtualMachineScaleSetInstanceView> virtual_machine_scale_sets_get_instance_view(api_version, subscription_id, resource_group_name, vm_scale_set_name)



Gets the status of a VM scale set instance.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineScaleSetsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.

begin
  
  result = api_instance.virtual_machine_scale_sets_get_instance_view(api_version, subscription_id, resource_group_name, vm_scale_set_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetsApi->virtual_machine_scale_sets_get_instance_view: #{e}"
end
```

#### Using the virtual_machine_scale_sets_get_instance_view_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualMachineScaleSetInstanceView>, Integer, Hash)> virtual_machine_scale_sets_get_instance_view_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_sets_get_instance_view_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualMachineScaleSetInstanceView>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetsApi->virtual_machine_scale_sets_get_instance_view_with_http_info: #{e}"
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

[**VirtualMachineScaleSetInstanceView**](VirtualMachineScaleSetInstanceView.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_scale_sets_get_os_upgrade_history

> <VirtualMachineScaleSetListOSUpgradeHistory> virtual_machine_scale_sets_get_os_upgrade_history(api_version, subscription_id, resource_group_name, vm_scale_set_name)



Gets list of OS upgrades on a VM scale set instance.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineScaleSetsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.

begin
  
  result = api_instance.virtual_machine_scale_sets_get_os_upgrade_history(api_version, subscription_id, resource_group_name, vm_scale_set_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetsApi->virtual_machine_scale_sets_get_os_upgrade_history: #{e}"
end
```

#### Using the virtual_machine_scale_sets_get_os_upgrade_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualMachineScaleSetListOSUpgradeHistory>, Integer, Hash)> virtual_machine_scale_sets_get_os_upgrade_history_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_sets_get_os_upgrade_history_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualMachineScaleSetListOSUpgradeHistory>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetsApi->virtual_machine_scale_sets_get_os_upgrade_history_with_http_info: #{e}"
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

[**VirtualMachineScaleSetListOSUpgradeHistory**](VirtualMachineScaleSetListOSUpgradeHistory.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_scale_sets_list

> <VirtualMachineScaleSetListResult> virtual_machine_scale_sets_list(api_version, subscription_id, resource_group_name)



Gets a list of all VM scale sets under a resource group.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineScaleSetsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.

begin
  
  result = api_instance.virtual_machine_scale_sets_list(api_version, subscription_id, resource_group_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetsApi->virtual_machine_scale_sets_list: #{e}"
end
```

#### Using the virtual_machine_scale_sets_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualMachineScaleSetListResult>, Integer, Hash)> virtual_machine_scale_sets_list_with_http_info(api_version, subscription_id, resource_group_name)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_sets_list_with_http_info(api_version, subscription_id, resource_group_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualMachineScaleSetListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetsApi->virtual_machine_scale_sets_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |

### Return type

[**VirtualMachineScaleSetListResult**](VirtualMachineScaleSetListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_scale_sets_list_all

> <VirtualMachineScaleSetListWithLinkResult> virtual_machine_scale_sets_list_all(api_version, subscription_id)



Gets a list of all VM Scale Sets in the subscription, regardless of the associated resource group. Use nextLink property in the response to get the next page of VM Scale Sets. Do this till nextLink is null to fetch all the VM Scale Sets.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineScaleSetsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.

begin
  
  result = api_instance.virtual_machine_scale_sets_list_all(api_version, subscription_id)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetsApi->virtual_machine_scale_sets_list_all: #{e}"
end
```

#### Using the virtual_machine_scale_sets_list_all_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualMachineScaleSetListWithLinkResult>, Integer, Hash)> virtual_machine_scale_sets_list_all_with_http_info(api_version, subscription_id)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_sets_list_all_with_http_info(api_version, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualMachineScaleSetListWithLinkResult>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetsApi->virtual_machine_scale_sets_list_all_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |

### Return type

[**VirtualMachineScaleSetListWithLinkResult**](VirtualMachineScaleSetListWithLinkResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_scale_sets_list_by_location

> <VirtualMachineScaleSetListResult> virtual_machine_scale_sets_list_by_location(api_version, subscription_id, location)



Gets all the VM scale sets under the specified subscription for the specified location.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineScaleSetsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
location = 'location_example' # String | The name of Azure region.

begin
  
  result = api_instance.virtual_machine_scale_sets_list_by_location(api_version, subscription_id, location)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetsApi->virtual_machine_scale_sets_list_by_location: #{e}"
end
```

#### Using the virtual_machine_scale_sets_list_by_location_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualMachineScaleSetListResult>, Integer, Hash)> virtual_machine_scale_sets_list_by_location_with_http_info(api_version, subscription_id, location)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_sets_list_by_location_with_http_info(api_version, subscription_id, location)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualMachineScaleSetListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetsApi->virtual_machine_scale_sets_list_by_location_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **location** | **String** | The name of Azure region. |  |

### Return type

[**VirtualMachineScaleSetListResult**](VirtualMachineScaleSetListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_scale_sets_list_skus

> <VirtualMachineScaleSetListSkusResult> virtual_machine_scale_sets_list_skus(api_version, subscription_id, resource_group_name, vm_scale_set_name)



Gets a list of SKUs available for your VM scale set, including the minimum and maximum VM instances allowed for each SKU.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineScaleSetsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.

begin
  
  result = api_instance.virtual_machine_scale_sets_list_skus(api_version, subscription_id, resource_group_name, vm_scale_set_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetsApi->virtual_machine_scale_sets_list_skus: #{e}"
end
```

#### Using the virtual_machine_scale_sets_list_skus_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualMachineScaleSetListSkusResult>, Integer, Hash)> virtual_machine_scale_sets_list_skus_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_sets_list_skus_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualMachineScaleSetListSkusResult>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetsApi->virtual_machine_scale_sets_list_skus_with_http_info: #{e}"
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

[**VirtualMachineScaleSetListSkusResult**](VirtualMachineScaleSetListSkusResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_scale_sets_migrate_vm_availability_zone

> virtual_machine_scale_sets_migrate_vm_availability_zone(api_version, subscription_id, resource_group_name, vm_scale_set_name, body)



Migrates one or more virtual machines in a VM scale set to an availability zone.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineScaleSetsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.
body = AzureRest::MigrateVMAvailabilityZoneInput.new({instance_ids: ['instance_ids_example']}) # MigrateVMAvailabilityZoneInput | The input object for the MigrateVMAvailabilityZone API.

begin
  
  api_instance.virtual_machine_scale_sets_migrate_vm_availability_zone(api_version, subscription_id, resource_group_name, vm_scale_set_name, body)
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetsApi->virtual_machine_scale_sets_migrate_vm_availability_zone: #{e}"
end
```

#### Using the virtual_machine_scale_sets_migrate_vm_availability_zone_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_machine_scale_sets_migrate_vm_availability_zone_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, body)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_sets_migrate_vm_availability_zone_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetsApi->virtual_machine_scale_sets_migrate_vm_availability_zone_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_scale_set_name** | **String** | The name of the VM scale set. |  |
| **body** | [**MigrateVMAvailabilityZoneInput**](MigrateVMAvailabilityZoneInput.md) | The input object for the MigrateVMAvailabilityZone API. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## virtual_machine_scale_sets_perform_maintenance

> virtual_machine_scale_sets_perform_maintenance(api_version, subscription_id, resource_group_name, vm_scale_set_name, opts)



Perform maintenance on one or more virtual machines in a VM scale set. Operation on instances which are not eligible for perform maintenance will be failed. Please refer to best practices for more details: https://docs.microsoft.com/azure/virtual-machine-scale-sets/virtual-machine-scale-sets-maintenance-notifications

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineScaleSetsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.
opts = {
  vm_instance_ids: AzureRest::VirtualMachineScaleSetVMInstanceIDs.new # VirtualMachineScaleSetVMInstanceIDs | A list of virtual machine instance IDs from the VM scale set.
}

begin
  
  api_instance.virtual_machine_scale_sets_perform_maintenance(api_version, subscription_id, resource_group_name, vm_scale_set_name, opts)
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetsApi->virtual_machine_scale_sets_perform_maintenance: #{e}"
end
```

#### Using the virtual_machine_scale_sets_perform_maintenance_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_machine_scale_sets_perform_maintenance_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_sets_perform_maintenance_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetsApi->virtual_machine_scale_sets_perform_maintenance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_scale_set_name** | **String** | The name of the VM scale set. |  |
| **vm_instance_ids** | [**VirtualMachineScaleSetVMInstanceIDs**](VirtualMachineScaleSetVMInstanceIDs.md) | A list of virtual machine instance IDs from the VM scale set. | [optional] |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## virtual_machine_scale_sets_power_off

> virtual_machine_scale_sets_power_off(api_version, subscription_id, resource_group_name, vm_scale_set_name, opts)



Power off (stop) one or more virtual machines in a VM scale set. Note that resources are still attached and you are getting charged for the resources. Instead, use deallocate to release resources and avoid charges.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineScaleSetsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.
opts = {
  skip_shutdown: true, # Boolean | The parameter to request non-graceful VM shutdown. True value for this flag indicates non-graceful shutdown whereas false indicates otherwise. Default value for this flag is false if not specified
  vm_instance_ids: AzureRest::VirtualMachineScaleSetVMInstanceIDs.new # VirtualMachineScaleSetVMInstanceIDs | A list of virtual machine instance IDs from the VM scale set.
}

begin
  
  api_instance.virtual_machine_scale_sets_power_off(api_version, subscription_id, resource_group_name, vm_scale_set_name, opts)
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetsApi->virtual_machine_scale_sets_power_off: #{e}"
end
```

#### Using the virtual_machine_scale_sets_power_off_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_machine_scale_sets_power_off_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_sets_power_off_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetsApi->virtual_machine_scale_sets_power_off_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_scale_set_name** | **String** | The name of the VM scale set. |  |
| **skip_shutdown** | **Boolean** | The parameter to request non-graceful VM shutdown. True value for this flag indicates non-graceful shutdown whereas false indicates otherwise. Default value for this flag is false if not specified | [optional] |
| **vm_instance_ids** | [**VirtualMachineScaleSetVMInstanceIDs**](VirtualMachineScaleSetVMInstanceIDs.md) | A list of virtual machine instance IDs from the VM scale set. | [optional] |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## virtual_machine_scale_sets_reapply

> virtual_machine_scale_sets_reapply(api_version, subscription_id, resource_group_name, vm_scale_set_name)



Reapplies the Virtual Machine Scale Set Virtual Machine Profile to the Virtual Machine Instances

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineScaleSetsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.

begin
  
  api_instance.virtual_machine_scale_sets_reapply(api_version, subscription_id, resource_group_name, vm_scale_set_name)
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetsApi->virtual_machine_scale_sets_reapply: #{e}"
end
```

#### Using the virtual_machine_scale_sets_reapply_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_machine_scale_sets_reapply_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_sets_reapply_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetsApi->virtual_machine_scale_sets_reapply_with_http_info: #{e}"
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

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_scale_sets_redeploy

> virtual_machine_scale_sets_redeploy(api_version, subscription_id, resource_group_name, vm_scale_set_name, opts)



Shuts down all the virtual machines in the virtual machine scale set, moves them to a new node, and powers them back on.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineScaleSetsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.
opts = {
  vm_instance_ids: AzureRest::VirtualMachineScaleSetVMInstanceIDs.new # VirtualMachineScaleSetVMInstanceIDs | A list of virtual machine instance IDs from the VM scale set.
}

begin
  
  api_instance.virtual_machine_scale_sets_redeploy(api_version, subscription_id, resource_group_name, vm_scale_set_name, opts)
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetsApi->virtual_machine_scale_sets_redeploy: #{e}"
end
```

#### Using the virtual_machine_scale_sets_redeploy_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_machine_scale_sets_redeploy_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_sets_redeploy_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetsApi->virtual_machine_scale_sets_redeploy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_scale_set_name** | **String** | The name of the VM scale set. |  |
| **vm_instance_ids** | [**VirtualMachineScaleSetVMInstanceIDs**](VirtualMachineScaleSetVMInstanceIDs.md) | A list of virtual machine instance IDs from the VM scale set. | [optional] |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## virtual_machine_scale_sets_reimage

> virtual_machine_scale_sets_reimage(api_version, subscription_id, resource_group_name, vm_scale_set_name, opts)



Reimages (upgrade the operating system) one or more virtual machines in a VM scale set which don't have a ephemeral OS disk, for virtual machines who have a ephemeral OS disk the virtual machine is reset to initial state.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineScaleSetsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.
opts = {
  vm_scale_set_reimage_input: AzureRest::VirtualMachineScaleSetReimageParameters.new # VirtualMachineScaleSetReimageParameters | Parameters for Reimaging VM ScaleSet.
}

begin
  
  api_instance.virtual_machine_scale_sets_reimage(api_version, subscription_id, resource_group_name, vm_scale_set_name, opts)
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetsApi->virtual_machine_scale_sets_reimage: #{e}"
end
```

#### Using the virtual_machine_scale_sets_reimage_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_machine_scale_sets_reimage_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_sets_reimage_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetsApi->virtual_machine_scale_sets_reimage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_scale_set_name** | **String** | The name of the VM scale set. |  |
| **vm_scale_set_reimage_input** | [**VirtualMachineScaleSetReimageParameters**](VirtualMachineScaleSetReimageParameters.md) | Parameters for Reimaging VM ScaleSet. | [optional] |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## virtual_machine_scale_sets_reimage_all

> virtual_machine_scale_sets_reimage_all(api_version, subscription_id, resource_group_name, vm_scale_set_name, opts)



Reimages all the disks ( including data disks ) in the virtual machines in a VM scale set. This operation is only supported for managed disks.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineScaleSetsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.
opts = {
  vm_instance_ids: AzureRest::VirtualMachineScaleSetVMInstanceIDs.new # VirtualMachineScaleSetVMInstanceIDs | A list of virtual machine instance IDs from the VM scale set.
}

begin
  
  api_instance.virtual_machine_scale_sets_reimage_all(api_version, subscription_id, resource_group_name, vm_scale_set_name, opts)
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetsApi->virtual_machine_scale_sets_reimage_all: #{e}"
end
```

#### Using the virtual_machine_scale_sets_reimage_all_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_machine_scale_sets_reimage_all_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_sets_reimage_all_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetsApi->virtual_machine_scale_sets_reimage_all_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_scale_set_name** | **String** | The name of the VM scale set. |  |
| **vm_instance_ids** | [**VirtualMachineScaleSetVMInstanceIDs**](VirtualMachineScaleSetVMInstanceIDs.md) | A list of virtual machine instance IDs from the VM scale set. | [optional] |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## virtual_machine_scale_sets_restart

> virtual_machine_scale_sets_restart(api_version, subscription_id, resource_group_name, vm_scale_set_name, opts)



Restarts one or more virtual machines in a VM scale set.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineScaleSetsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.
opts = {
  vm_instance_ids: AzureRest::VirtualMachineScaleSetVMInstanceIDs.new # VirtualMachineScaleSetVMInstanceIDs | A list of virtual machine instance IDs from the VM scale set.
}

begin
  
  api_instance.virtual_machine_scale_sets_restart(api_version, subscription_id, resource_group_name, vm_scale_set_name, opts)
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetsApi->virtual_machine_scale_sets_restart: #{e}"
end
```

#### Using the virtual_machine_scale_sets_restart_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_machine_scale_sets_restart_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_sets_restart_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetsApi->virtual_machine_scale_sets_restart_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_scale_set_name** | **String** | The name of the VM scale set. |  |
| **vm_instance_ids** | [**VirtualMachineScaleSetVMInstanceIDs**](VirtualMachineScaleSetVMInstanceIDs.md) | A list of virtual machine instance IDs from the VM scale set. | [optional] |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## virtual_machine_scale_sets_scale_out

> virtual_machine_scale_sets_scale_out(api_version, subscription_id, resource_group_name, vm_scale_set_name, parameters)



Scales out one or more virtual machines in a VM scale set.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineScaleSetsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.
parameters = AzureRest::VMScaleSetScaleOutInput.new({capacity: 3.56}) # VMScaleSetScaleOutInput | The input object for ScaleOut API.

begin
  
  api_instance.virtual_machine_scale_sets_scale_out(api_version, subscription_id, resource_group_name, vm_scale_set_name, parameters)
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetsApi->virtual_machine_scale_sets_scale_out: #{e}"
end
```

#### Using the virtual_machine_scale_sets_scale_out_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_machine_scale_sets_scale_out_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_sets_scale_out_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetsApi->virtual_machine_scale_sets_scale_out_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_scale_set_name** | **String** | The name of the VM scale set. |  |
| **parameters** | [**VMScaleSetScaleOutInput**](VMScaleSetScaleOutInput.md) | The input object for ScaleOut API. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## virtual_machine_scale_sets_set_orchestration_service_state

> virtual_machine_scale_sets_set_orchestration_service_state(api_version, subscription_id, resource_group_name, vm_scale_set_name, parameters)



Changes ServiceState property for a given service

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineScaleSetsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.
parameters = AzureRest::OrchestrationServiceStateInput.new({service_name: AzureRest::OrchestrationServiceNames::AUTOMATIC_REPAIRS, action: AzureRest::OrchestrationServiceStateAction::RESUME}) # OrchestrationServiceStateInput | The input object for SetOrchestrationServiceState API.

begin
  
  api_instance.virtual_machine_scale_sets_set_orchestration_service_state(api_version, subscription_id, resource_group_name, vm_scale_set_name, parameters)
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetsApi->virtual_machine_scale_sets_set_orchestration_service_state: #{e}"
end
```

#### Using the virtual_machine_scale_sets_set_orchestration_service_state_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_machine_scale_sets_set_orchestration_service_state_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_sets_set_orchestration_service_state_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetsApi->virtual_machine_scale_sets_set_orchestration_service_state_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_scale_set_name** | **String** | The name of the VM scale set. |  |
| **parameters** | [**OrchestrationServiceStateInput**](OrchestrationServiceStateInput.md) | The input object for SetOrchestrationServiceState API. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## virtual_machine_scale_sets_start

> virtual_machine_scale_sets_start(api_version, subscription_id, resource_group_name, vm_scale_set_name, opts)



Starts one or more virtual machines in a VM scale set.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineScaleSetsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.
opts = {
  vm_instance_ids: AzureRest::VirtualMachineScaleSetVMInstanceIDs.new # VirtualMachineScaleSetVMInstanceIDs | A list of virtual machine instance IDs from the VM scale set.
}

begin
  
  api_instance.virtual_machine_scale_sets_start(api_version, subscription_id, resource_group_name, vm_scale_set_name, opts)
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetsApi->virtual_machine_scale_sets_start: #{e}"
end
```

#### Using the virtual_machine_scale_sets_start_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_machine_scale_sets_start_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_sets_start_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetsApi->virtual_machine_scale_sets_start_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_scale_set_name** | **String** | The name of the VM scale set. |  |
| **vm_instance_ids** | [**VirtualMachineScaleSetVMInstanceIDs**](VirtualMachineScaleSetVMInstanceIDs.md) | A list of virtual machine instance IDs from the VM scale set. | [optional] |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## virtual_machine_scale_sets_update

> <VirtualMachineScaleSet> virtual_machine_scale_sets_update(api_version, subscription_id, resource_group_name, vm_scale_set_name, parameters, opts)



Update a VM scale set.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineScaleSetsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.
parameters = AzureRest::VirtualMachineScaleSetUpdate.new # VirtualMachineScaleSetUpdate | The scale set object.
opts = {
  if_match: 'if_match_example', # String | The ETag of the transformation. Omit this value to always overwrite the current resource. Specify the last-seen ETag value to prevent accidentally overwriting concurrent changes.
  if_none_match: 'if_none_match_example' # String | Set to '*' to allow a new record set to be created, but to prevent updating an existing record set. Other values will result in error from server as they are not supported.
}

begin
  
  result = api_instance.virtual_machine_scale_sets_update(api_version, subscription_id, resource_group_name, vm_scale_set_name, parameters, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetsApi->virtual_machine_scale_sets_update: #{e}"
end
```

#### Using the virtual_machine_scale_sets_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualMachineScaleSet>, Integer, Hash)> virtual_machine_scale_sets_update_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, parameters, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_sets_update_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, parameters, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualMachineScaleSet>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetsApi->virtual_machine_scale_sets_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_scale_set_name** | **String** | The name of the VM scale set. |  |
| **parameters** | [**VirtualMachineScaleSetUpdate**](VirtualMachineScaleSetUpdate.md) | The scale set object. |  |
| **if_match** | **String** | The ETag of the transformation. Omit this value to always overwrite the current resource. Specify the last-seen ETag value to prevent accidentally overwriting concurrent changes. | [optional] |
| **if_none_match** | **String** | Set to &#39;*&#39; to allow a new record set to be created, but to prevent updating an existing record set. Other values will result in error from server as they are not supported. | [optional] |

### Return type

[**VirtualMachineScaleSet**](VirtualMachineScaleSet.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## virtual_machine_scale_sets_update_instances

> virtual_machine_scale_sets_update_instances(api_version, subscription_id, resource_group_name, vm_scale_set_name, vm_instance_ids)



Upgrades one or more virtual machines to the latest SKU set in the VM scale set model.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineScaleSetsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.
vm_instance_ids = AzureRest::VirtualMachineScaleSetVMInstanceRequiredIDs.new({instance_ids: ['instance_ids_example']}) # VirtualMachineScaleSetVMInstanceRequiredIDs | A list of virtual machine instance IDs from the VM scale set.

begin
  
  api_instance.virtual_machine_scale_sets_update_instances(api_version, subscription_id, resource_group_name, vm_scale_set_name, vm_instance_ids)
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetsApi->virtual_machine_scale_sets_update_instances: #{e}"
end
```

#### Using the virtual_machine_scale_sets_update_instances_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_machine_scale_sets_update_instances_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, vm_instance_ids)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_sets_update_instances_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, vm_instance_ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineScaleSetsApi->virtual_machine_scale_sets_update_instances_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_scale_set_name** | **String** | The name of the VM scale set. |  |
| **vm_instance_ids** | [**VirtualMachineScaleSetVMInstanceRequiredIDs**](VirtualMachineScaleSetVMInstanceRequiredIDs.md) | A list of virtual machine instance IDs from the VM scale set. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

