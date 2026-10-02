# AzureSDK::VirtualMachineScaleSetVMRunCommandsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**virtual_machine_scale_set_vm_run_commands_create_or_update**](VirtualMachineScaleSetVMRunCommandsApi.md#virtual_machine_scale_set_vm_run_commands_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/virtualMachines/{instanceId}/runCommands/{runCommandName} |  |
| [**virtual_machine_scale_set_vm_run_commands_delete**](VirtualMachineScaleSetVMRunCommandsApi.md#virtual_machine_scale_set_vm_run_commands_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/virtualMachines/{instanceId}/runCommands/{runCommandName} |  |
| [**virtual_machine_scale_set_vm_run_commands_get**](VirtualMachineScaleSetVMRunCommandsApi.md#virtual_machine_scale_set_vm_run_commands_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/virtualMachines/{instanceId}/runCommands/{runCommandName} |  |
| [**virtual_machine_scale_set_vm_run_commands_list**](VirtualMachineScaleSetVMRunCommandsApi.md#virtual_machine_scale_set_vm_run_commands_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/virtualMachines/{instanceId}/runCommands |  |
| [**virtual_machine_scale_set_vm_run_commands_update**](VirtualMachineScaleSetVMRunCommandsApi.md#virtual_machine_scale_set_vm_run_commands_update) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/virtualMachines/{instanceId}/runCommands/{runCommandName} |  |


## virtual_machine_scale_set_vm_run_commands_create_or_update

> <VirtualMachineRunCommand> virtual_machine_scale_set_vm_run_commands_create_or_update(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, run_command_name, run_command)



The operation to create or update the VMSS VM run command.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::VirtualMachineScaleSetVMRunCommandsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VirtualMachineScaleSet
instance_id = 'instance_id_example' # String | The name of the VirtualMachineScaleSetVM
run_command_name = 'run_command_name_example' # String | The name of the VirtualMachineRunCommand
run_command = AzureSDK::VirtualMachineRunCommand.new({location: 'location_example'}) # VirtualMachineRunCommand | Parameters supplied to the Create Virtual Machine RunCommand operation.

begin
  
  result = api_instance.virtual_machine_scale_set_vm_run_commands_create_or_update(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, run_command_name, run_command)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMRunCommandsApi->virtual_machine_scale_set_vm_run_commands_create_or_update: #{e}"
end
```

#### Using the virtual_machine_scale_set_vm_run_commands_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualMachineRunCommand>, Integer, Hash)> virtual_machine_scale_set_vm_run_commands_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, run_command_name, run_command)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_set_vm_run_commands_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, run_command_name, run_command)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualMachineRunCommand>
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMRunCommandsApi->virtual_machine_scale_set_vm_run_commands_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_scale_set_name** | **String** | The name of the VirtualMachineScaleSet |  |
| **instance_id** | **String** | The name of the VirtualMachineScaleSetVM |  |
| **run_command_name** | **String** | The name of the VirtualMachineRunCommand |  |
| **run_command** | [**VirtualMachineRunCommand**](VirtualMachineRunCommand.md) | Parameters supplied to the Create Virtual Machine RunCommand operation. |  |

### Return type

[**VirtualMachineRunCommand**](VirtualMachineRunCommand.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## virtual_machine_scale_set_vm_run_commands_delete

> virtual_machine_scale_set_vm_run_commands_delete(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, run_command_name)



The operation to delete the VMSS VM run command.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::VirtualMachineScaleSetVMRunCommandsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VirtualMachineScaleSet
instance_id = 'instance_id_example' # String | The name of the VirtualMachineScaleSetVM
run_command_name = 'run_command_name_example' # String | The name of the VirtualMachineRunCommand

begin
  
  api_instance.virtual_machine_scale_set_vm_run_commands_delete(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, run_command_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMRunCommandsApi->virtual_machine_scale_set_vm_run_commands_delete: #{e}"
end
```

#### Using the virtual_machine_scale_set_vm_run_commands_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_machine_scale_set_vm_run_commands_delete_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, run_command_name)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_set_vm_run_commands_delete_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, run_command_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMRunCommandsApi->virtual_machine_scale_set_vm_run_commands_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_scale_set_name** | **String** | The name of the VirtualMachineScaleSet |  |
| **instance_id** | **String** | The name of the VirtualMachineScaleSetVM |  |
| **run_command_name** | **String** | The name of the VirtualMachineRunCommand |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_scale_set_vm_run_commands_get

> <VirtualMachineRunCommand> virtual_machine_scale_set_vm_run_commands_get(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, run_command_name, opts)



The operation to get the VMSS VM run command.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::VirtualMachineScaleSetVMRunCommandsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VirtualMachineScaleSet
instance_id = 'instance_id_example' # String | The name of the VirtualMachineScaleSetVM
run_command_name = 'run_command_name_example' # String | The name of the VirtualMachineRunCommand
opts = {
  expand: 'expand_example' # String | The expand expression to apply on the operation.
}

begin
  
  result = api_instance.virtual_machine_scale_set_vm_run_commands_get(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, run_command_name, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMRunCommandsApi->virtual_machine_scale_set_vm_run_commands_get: #{e}"
end
```

#### Using the virtual_machine_scale_set_vm_run_commands_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualMachineRunCommand>, Integer, Hash)> virtual_machine_scale_set_vm_run_commands_get_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, run_command_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_set_vm_run_commands_get_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, run_command_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualMachineRunCommand>
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMRunCommandsApi->virtual_machine_scale_set_vm_run_commands_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_scale_set_name** | **String** | The name of the VirtualMachineScaleSet |  |
| **instance_id** | **String** | The name of the VirtualMachineScaleSetVM |  |
| **run_command_name** | **String** | The name of the VirtualMachineRunCommand |  |
| **expand** | **String** | The expand expression to apply on the operation. | [optional] |

### Return type

[**VirtualMachineRunCommand**](VirtualMachineRunCommand.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_scale_set_vm_run_commands_list

> <VirtualMachineRunCommandsListResult> virtual_machine_scale_set_vm_run_commands_list(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, opts)



The operation to get all run commands of an instance in Virtual Machine Scaleset.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::VirtualMachineScaleSetVMRunCommandsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VirtualMachineScaleSet
instance_id = 'instance_id_example' # String | The name of the VirtualMachineScaleSetVM
opts = {
  expand: 'expand_example' # String | The expand expression to apply on the operation.
}

begin
  
  result = api_instance.virtual_machine_scale_set_vm_run_commands_list(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMRunCommandsApi->virtual_machine_scale_set_vm_run_commands_list: #{e}"
end
```

#### Using the virtual_machine_scale_set_vm_run_commands_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualMachineRunCommandsListResult>, Integer, Hash)> virtual_machine_scale_set_vm_run_commands_list_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_set_vm_run_commands_list_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualMachineRunCommandsListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMRunCommandsApi->virtual_machine_scale_set_vm_run_commands_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_scale_set_name** | **String** | The name of the VirtualMachineScaleSet |  |
| **instance_id** | **String** | The name of the VirtualMachineScaleSetVM |  |
| **expand** | **String** | The expand expression to apply on the operation. | [optional] |

### Return type

[**VirtualMachineRunCommandsListResult**](VirtualMachineRunCommandsListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_scale_set_vm_run_commands_update

> <VirtualMachineRunCommand> virtual_machine_scale_set_vm_run_commands_update(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, run_command_name, run_command)



The operation to update the VMSS VM run command.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::VirtualMachineScaleSetVMRunCommandsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VirtualMachineScaleSet
instance_id = 'instance_id_example' # String | The name of the VirtualMachineScaleSetVM
run_command_name = 'run_command_name_example' # String | The name of the VirtualMachineRunCommand
run_command = AzureSDK::VirtualMachineRunCommandUpdate.new # VirtualMachineRunCommandUpdate | Resource create parameters.

begin
  
  result = api_instance.virtual_machine_scale_set_vm_run_commands_update(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, run_command_name, run_command)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMRunCommandsApi->virtual_machine_scale_set_vm_run_commands_update: #{e}"
end
```

#### Using the virtual_machine_scale_set_vm_run_commands_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualMachineRunCommand>, Integer, Hash)> virtual_machine_scale_set_vm_run_commands_update_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, run_command_name, run_command)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_set_vm_run_commands_update_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, instance_id, run_command_name, run_command)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualMachineRunCommand>
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineScaleSetVMRunCommandsApi->virtual_machine_scale_set_vm_run_commands_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_scale_set_name** | **String** | The name of the VirtualMachineScaleSet |  |
| **instance_id** | **String** | The name of the VirtualMachineScaleSetVM |  |
| **run_command_name** | **String** | The name of the VirtualMachineRunCommand |  |
| **run_command** | [**VirtualMachineRunCommandUpdate**](VirtualMachineRunCommandUpdate.md) | Resource create parameters. |  |

### Return type

[**VirtualMachineRunCommand**](VirtualMachineRunCommand.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

