# AzureSDK::VirtualMachineDiagnosticRunCommandsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**virtual_machine_diagnostic_run_commands_create_or_update**](VirtualMachineDiagnosticRunCommandsApi.md#virtual_machine_diagnostic_run_commands_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachines/{vmName}/diagnosticRunCommands/{runCommandName} |  |
| [**virtual_machine_diagnostic_run_commands_delete**](VirtualMachineDiagnosticRunCommandsApi.md#virtual_machine_diagnostic_run_commands_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachines/{vmName}/diagnosticRunCommands/{runCommandName} |  |
| [**virtual_machine_diagnostic_run_commands_diagnostic_list_by_virtual_machine**](VirtualMachineDiagnosticRunCommandsApi.md#virtual_machine_diagnostic_run_commands_diagnostic_list_by_virtual_machine) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachines/{vmName}/diagnosticRunCommands |  |
| [**virtual_machine_diagnostic_run_commands_get_by_virtual_machine**](VirtualMachineDiagnosticRunCommandsApi.md#virtual_machine_diagnostic_run_commands_get_by_virtual_machine) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachines/{vmName}/diagnosticRunCommands/{runCommandName} |  |
| [**virtual_machine_diagnostic_run_commands_update**](VirtualMachineDiagnosticRunCommandsApi.md#virtual_machine_diagnostic_run_commands_update) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachines/{vmName}/diagnosticRunCommands/{runCommandName} |  |


## virtual_machine_diagnostic_run_commands_create_or_update

> <VirtualMachineDiagnosticRunCommand> virtual_machine_diagnostic_run_commands_create_or_update(api_version, subscription_id, resource_group_name, vm_name, run_command_name, run_command)



The operation to create or update the diagnostic run command.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::VirtualMachineDiagnosticRunCommandsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_name = 'vm_name_example' # String | The name of the VirtualMachine
run_command_name = 'run_command_name_example' # String | The name of the VirtualMachineDiagnosticRunCommand
run_command = AzureSDK::VirtualMachineDiagnosticRunCommand.new({location: 'location_example'}) # VirtualMachineDiagnosticRunCommand | Parameters supplied to the Create Virtual Machine Diagnostic RunCommand operation.

begin
  
  result = api_instance.virtual_machine_diagnostic_run_commands_create_or_update(api_version, subscription_id, resource_group_name, vm_name, run_command_name, run_command)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineDiagnosticRunCommandsApi->virtual_machine_diagnostic_run_commands_create_or_update: #{e}"
end
```

#### Using the virtual_machine_diagnostic_run_commands_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualMachineDiagnosticRunCommand>, Integer, Hash)> virtual_machine_diagnostic_run_commands_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, vm_name, run_command_name, run_command)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_diagnostic_run_commands_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, vm_name, run_command_name, run_command)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualMachineDiagnosticRunCommand>
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineDiagnosticRunCommandsApi->virtual_machine_diagnostic_run_commands_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_name** | **String** | The name of the VirtualMachine |  |
| **run_command_name** | **String** | The name of the VirtualMachineDiagnosticRunCommand |  |
| **run_command** | [**VirtualMachineDiagnosticRunCommand**](VirtualMachineDiagnosticRunCommand.md) | Parameters supplied to the Create Virtual Machine Diagnostic RunCommand operation. |  |

### Return type

[**VirtualMachineDiagnosticRunCommand**](VirtualMachineDiagnosticRunCommand.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## virtual_machine_diagnostic_run_commands_delete

> virtual_machine_diagnostic_run_commands_delete(api_version, subscription_id, resource_group_name, vm_name, run_command_name)



The operation to delete the diagnostic run command.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::VirtualMachineDiagnosticRunCommandsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_name = 'vm_name_example' # String | The name of the VirtualMachine
run_command_name = 'run_command_name_example' # String | The name of the VirtualMachineDiagnosticRunCommand

begin
  
  api_instance.virtual_machine_diagnostic_run_commands_delete(api_version, subscription_id, resource_group_name, vm_name, run_command_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineDiagnosticRunCommandsApi->virtual_machine_diagnostic_run_commands_delete: #{e}"
end
```

#### Using the virtual_machine_diagnostic_run_commands_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_machine_diagnostic_run_commands_delete_with_http_info(api_version, subscription_id, resource_group_name, vm_name, run_command_name)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_diagnostic_run_commands_delete_with_http_info(api_version, subscription_id, resource_group_name, vm_name, run_command_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineDiagnosticRunCommandsApi->virtual_machine_diagnostic_run_commands_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_name** | **String** | The name of the VirtualMachine |  |
| **run_command_name** | **String** | The name of the VirtualMachineDiagnosticRunCommand |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_diagnostic_run_commands_diagnostic_list_by_virtual_machine

> <VirtualMachineDiagnosticRunCommandsListResult> virtual_machine_diagnostic_run_commands_diagnostic_list_by_virtual_machine(api_version, subscription_id, resource_group_name, vm_name, opts)



The operation to get all diagnostic run commands of a Virtual Machine.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::VirtualMachineDiagnosticRunCommandsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_name = 'vm_name_example' # String | The name of the VirtualMachine
opts = {
  expand: 'expand_example' # String | The expand expression to apply on the operation.
}

begin
  
  result = api_instance.virtual_machine_diagnostic_run_commands_diagnostic_list_by_virtual_machine(api_version, subscription_id, resource_group_name, vm_name, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineDiagnosticRunCommandsApi->virtual_machine_diagnostic_run_commands_diagnostic_list_by_virtual_machine: #{e}"
end
```

#### Using the virtual_machine_diagnostic_run_commands_diagnostic_list_by_virtual_machine_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualMachineDiagnosticRunCommandsListResult>, Integer, Hash)> virtual_machine_diagnostic_run_commands_diagnostic_list_by_virtual_machine_with_http_info(api_version, subscription_id, resource_group_name, vm_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_diagnostic_run_commands_diagnostic_list_by_virtual_machine_with_http_info(api_version, subscription_id, resource_group_name, vm_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualMachineDiagnosticRunCommandsListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineDiagnosticRunCommandsApi->virtual_machine_diagnostic_run_commands_diagnostic_list_by_virtual_machine_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_name** | **String** | The name of the VirtualMachine |  |
| **expand** | **String** | The expand expression to apply on the operation. | [optional] |

### Return type

[**VirtualMachineDiagnosticRunCommandsListResult**](VirtualMachineDiagnosticRunCommandsListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_diagnostic_run_commands_get_by_virtual_machine

> <VirtualMachineDiagnosticRunCommand> virtual_machine_diagnostic_run_commands_get_by_virtual_machine(api_version, subscription_id, resource_group_name, vm_name, run_command_name, opts)



The operation to get the diagnostic run command.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::VirtualMachineDiagnosticRunCommandsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_name = 'vm_name_example' # String | The name of the VirtualMachine
run_command_name = 'run_command_name_example' # String | The name of the VirtualMachineDiagnosticRunCommand
opts = {
  expand: 'expand_example' # String | The expand expression to apply on the operation.
}

begin
  
  result = api_instance.virtual_machine_diagnostic_run_commands_get_by_virtual_machine(api_version, subscription_id, resource_group_name, vm_name, run_command_name, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineDiagnosticRunCommandsApi->virtual_machine_diagnostic_run_commands_get_by_virtual_machine: #{e}"
end
```

#### Using the virtual_machine_diagnostic_run_commands_get_by_virtual_machine_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualMachineDiagnosticRunCommand>, Integer, Hash)> virtual_machine_diagnostic_run_commands_get_by_virtual_machine_with_http_info(api_version, subscription_id, resource_group_name, vm_name, run_command_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_diagnostic_run_commands_get_by_virtual_machine_with_http_info(api_version, subscription_id, resource_group_name, vm_name, run_command_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualMachineDiagnosticRunCommand>
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineDiagnosticRunCommandsApi->virtual_machine_diagnostic_run_commands_get_by_virtual_machine_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_name** | **String** | The name of the VirtualMachine |  |
| **run_command_name** | **String** | The name of the VirtualMachineDiagnosticRunCommand |  |
| **expand** | **String** | The expand expression to apply on the operation. | [optional] |

### Return type

[**VirtualMachineDiagnosticRunCommand**](VirtualMachineDiagnosticRunCommand.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_diagnostic_run_commands_update

> <VirtualMachineDiagnosticRunCommand> virtual_machine_diagnostic_run_commands_update(api_version, subscription_id, resource_group_name, vm_name, run_command_name, run_command)



The operation to update the diagnostic run command.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::VirtualMachineDiagnosticRunCommandsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_name = 'vm_name_example' # String | The name of the VirtualMachine
run_command_name = 'run_command_name_example' # String | The name of the VirtualMachineDiagnosticRunCommand
run_command = AzureSDK::VirtualMachineRunCommandUpdate.new # VirtualMachineRunCommandUpdate | Parameters supplied to the Update Virtual Machine Diagnostic RunCommand operation.

begin
  
  result = api_instance.virtual_machine_diagnostic_run_commands_update(api_version, subscription_id, resource_group_name, vm_name, run_command_name, run_command)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineDiagnosticRunCommandsApi->virtual_machine_diagnostic_run_commands_update: #{e}"
end
```

#### Using the virtual_machine_diagnostic_run_commands_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualMachineDiagnosticRunCommand>, Integer, Hash)> virtual_machine_diagnostic_run_commands_update_with_http_info(api_version, subscription_id, resource_group_name, vm_name, run_command_name, run_command)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_diagnostic_run_commands_update_with_http_info(api_version, subscription_id, resource_group_name, vm_name, run_command_name, run_command)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualMachineDiagnosticRunCommand>
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineDiagnosticRunCommandsApi->virtual_machine_diagnostic_run_commands_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_name** | **String** | The name of the VirtualMachine |  |
| **run_command_name** | **String** | The name of the VirtualMachineDiagnosticRunCommand |  |
| **run_command** | [**VirtualMachineRunCommandUpdate**](VirtualMachineRunCommandUpdate.md) | Parameters supplied to the Update Virtual Machine Diagnostic RunCommand operation. |  |

### Return type

[**VirtualMachineDiagnosticRunCommand**](VirtualMachineDiagnosticRunCommand.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

