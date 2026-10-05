# AzureRest::VirtualMachineRunCommandsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**virtual_machine_run_commands_create_or_update**](VirtualMachineRunCommandsApi.md#virtual_machine_run_commands_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachines/{vmName}/runCommands/{runCommandName} |  |
| [**virtual_machine_run_commands_delete**](VirtualMachineRunCommandsApi.md#virtual_machine_run_commands_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachines/{vmName}/runCommands/{runCommandName} |  |
| [**virtual_machine_run_commands_get**](VirtualMachineRunCommandsApi.md#virtual_machine_run_commands_get) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Compute/locations/{location}/runCommands/{commandId} |  |
| [**virtual_machine_run_commands_get_by_virtual_machine**](VirtualMachineRunCommandsApi.md#virtual_machine_run_commands_get_by_virtual_machine) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachines/{vmName}/runCommands/{runCommandName} |  |
| [**virtual_machine_run_commands_list**](VirtualMachineRunCommandsApi.md#virtual_machine_run_commands_list) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Compute/locations/{location}/runCommands |  |
| [**virtual_machine_run_commands_list_by_virtual_machine**](VirtualMachineRunCommandsApi.md#virtual_machine_run_commands_list_by_virtual_machine) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachines/{vmName}/runCommands |  |
| [**virtual_machine_run_commands_update**](VirtualMachineRunCommandsApi.md#virtual_machine_run_commands_update) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachines/{vmName}/runCommands/{runCommandName} |  |


## virtual_machine_run_commands_create_or_update

> <VirtualMachineRunCommand> virtual_machine_run_commands_create_or_update(api_version, subscription_id, resource_group_name, vm_name, run_command_name, run_command)



The operation to create or update the run command.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineRunCommandsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_name = 'vm_name_example' # String | The name of the VirtualMachine
run_command_name = 'run_command_name_example' # String | The name of the VirtualMachineRunCommand
run_command = AzureRest::VirtualMachineRunCommand.new({location: 'location_example'}) # VirtualMachineRunCommand | Parameters supplied to the Create Virtual Machine RunCommand operation.

begin
  
  result = api_instance.virtual_machine_run_commands_create_or_update(api_version, subscription_id, resource_group_name, vm_name, run_command_name, run_command)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineRunCommandsApi->virtual_machine_run_commands_create_or_update: #{e}"
end
```

#### Using the virtual_machine_run_commands_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualMachineRunCommand>, Integer, Hash)> virtual_machine_run_commands_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, vm_name, run_command_name, run_command)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_run_commands_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, vm_name, run_command_name, run_command)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualMachineRunCommand>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineRunCommandsApi->virtual_machine_run_commands_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_name** | **String** | The name of the VirtualMachine |  |
| **run_command_name** | **String** | The name of the VirtualMachineRunCommand |  |
| **run_command** | [**VirtualMachineRunCommand**](VirtualMachineRunCommand.md) | Parameters supplied to the Create Virtual Machine RunCommand operation. |  |

### Return type

[**VirtualMachineRunCommand**](VirtualMachineRunCommand.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## virtual_machine_run_commands_delete

> virtual_machine_run_commands_delete(api_version, subscription_id, resource_group_name, vm_name, run_command_name)



The operation to delete the run command.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineRunCommandsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_name = 'vm_name_example' # String | The name of the VirtualMachine
run_command_name = 'run_command_name_example' # String | The name of the VirtualMachineRunCommand

begin
  
  api_instance.virtual_machine_run_commands_delete(api_version, subscription_id, resource_group_name, vm_name, run_command_name)
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineRunCommandsApi->virtual_machine_run_commands_delete: #{e}"
end
```

#### Using the virtual_machine_run_commands_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_machine_run_commands_delete_with_http_info(api_version, subscription_id, resource_group_name, vm_name, run_command_name)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_run_commands_delete_with_http_info(api_version, subscription_id, resource_group_name, vm_name, run_command_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineRunCommandsApi->virtual_machine_run_commands_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_name** | **String** | The name of the VirtualMachine |  |
| **run_command_name** | **String** | The name of the VirtualMachineRunCommand |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_run_commands_get

> <RunCommandDocument> virtual_machine_run_commands_get(api_version, location, command_id, subscription_id)



Gets specific run command for a subscription in a location.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineRunCommandsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
location = 'location_example' # String | The name of Azure region.
command_id = 'command_id_example' # String | Specifies a commandId of predefined built-in script. Command IDs available for Linux are listed at https://aka.ms/RunCommandManagedLinux#available-commands, Windows at https://aka.ms/RunCommandManagedWindows#available-commands.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.

begin
  
  result = api_instance.virtual_machine_run_commands_get(api_version, location, command_id, subscription_id)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineRunCommandsApi->virtual_machine_run_commands_get: #{e}"
end
```

#### Using the virtual_machine_run_commands_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RunCommandDocument>, Integer, Hash)> virtual_machine_run_commands_get_with_http_info(api_version, location, command_id, subscription_id)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_run_commands_get_with_http_info(api_version, location, command_id, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RunCommandDocument>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineRunCommandsApi->virtual_machine_run_commands_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **location** | **String** | The name of Azure region. |  |
| **command_id** | **String** | Specifies a commandId of predefined built-in script. Command IDs available for Linux are listed at https://aka.ms/RunCommandManagedLinux#available-commands, Windows at https://aka.ms/RunCommandManagedWindows#available-commands. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |

### Return type

[**RunCommandDocument**](RunCommandDocument.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_run_commands_get_by_virtual_machine

> <VirtualMachineRunCommand> virtual_machine_run_commands_get_by_virtual_machine(api_version, subscription_id, resource_group_name, vm_name, run_command_name, opts)



The operation to get the run command.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineRunCommandsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_name = 'vm_name_example' # String | The name of the VirtualMachine
run_command_name = 'run_command_name_example' # String | The name of the VirtualMachineRunCommand
opts = {
  expand: 'expand_example' # String | The expand expression to apply on the operation.
}

begin
  
  result = api_instance.virtual_machine_run_commands_get_by_virtual_machine(api_version, subscription_id, resource_group_name, vm_name, run_command_name, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineRunCommandsApi->virtual_machine_run_commands_get_by_virtual_machine: #{e}"
end
```

#### Using the virtual_machine_run_commands_get_by_virtual_machine_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualMachineRunCommand>, Integer, Hash)> virtual_machine_run_commands_get_by_virtual_machine_with_http_info(api_version, subscription_id, resource_group_name, vm_name, run_command_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_run_commands_get_by_virtual_machine_with_http_info(api_version, subscription_id, resource_group_name, vm_name, run_command_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualMachineRunCommand>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineRunCommandsApi->virtual_machine_run_commands_get_by_virtual_machine_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_name** | **String** | The name of the VirtualMachine |  |
| **run_command_name** | **String** | The name of the VirtualMachineRunCommand |  |
| **expand** | **String** | The expand expression to apply on the operation. | [optional] |

### Return type

[**VirtualMachineRunCommand**](VirtualMachineRunCommand.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_run_commands_list

> <RunCommandListResult> virtual_machine_run_commands_list(api_version, subscription_id, location)



Lists all available run commands for a subscription in a location.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineRunCommandsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
location = 'location_example' # String | The name of Azure region.

begin
  
  result = api_instance.virtual_machine_run_commands_list(api_version, subscription_id, location)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineRunCommandsApi->virtual_machine_run_commands_list: #{e}"
end
```

#### Using the virtual_machine_run_commands_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RunCommandListResult>, Integer, Hash)> virtual_machine_run_commands_list_with_http_info(api_version, subscription_id, location)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_run_commands_list_with_http_info(api_version, subscription_id, location)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RunCommandListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineRunCommandsApi->virtual_machine_run_commands_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **location** | **String** | The name of Azure region. |  |

### Return type

[**RunCommandListResult**](RunCommandListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_run_commands_list_by_virtual_machine

> <VirtualMachineRunCommandsListResult> virtual_machine_run_commands_list_by_virtual_machine(api_version, subscription_id, resource_group_name, vm_name, opts)



The operation to get all run commands of a Virtual Machine.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineRunCommandsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_name = 'vm_name_example' # String | The name of the VirtualMachine
opts = {
  expand: 'expand_example' # String | The expand expression to apply on the operation.
}

begin
  
  result = api_instance.virtual_machine_run_commands_list_by_virtual_machine(api_version, subscription_id, resource_group_name, vm_name, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineRunCommandsApi->virtual_machine_run_commands_list_by_virtual_machine: #{e}"
end
```

#### Using the virtual_machine_run_commands_list_by_virtual_machine_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualMachineRunCommandsListResult>, Integer, Hash)> virtual_machine_run_commands_list_by_virtual_machine_with_http_info(api_version, subscription_id, resource_group_name, vm_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_run_commands_list_by_virtual_machine_with_http_info(api_version, subscription_id, resource_group_name, vm_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualMachineRunCommandsListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineRunCommandsApi->virtual_machine_run_commands_list_by_virtual_machine_with_http_info: #{e}"
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

[**VirtualMachineRunCommandsListResult**](VirtualMachineRunCommandsListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_run_commands_update

> <VirtualMachineRunCommand> virtual_machine_run_commands_update(api_version, subscription_id, resource_group_name, vm_name, run_command_name, run_command)



The operation to update the run command.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineRunCommandsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_name = 'vm_name_example' # String | The name of the VirtualMachine
run_command_name = 'run_command_name_example' # String | The name of the VirtualMachineRunCommand
run_command = AzureRest::VirtualMachineRunCommandUpdate.new # VirtualMachineRunCommandUpdate | Parameters supplied to the Update Virtual Machine RunCommand operation.

begin
  
  result = api_instance.virtual_machine_run_commands_update(api_version, subscription_id, resource_group_name, vm_name, run_command_name, run_command)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineRunCommandsApi->virtual_machine_run_commands_update: #{e}"
end
```

#### Using the virtual_machine_run_commands_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualMachineRunCommand>, Integer, Hash)> virtual_machine_run_commands_update_with_http_info(api_version, subscription_id, resource_group_name, vm_name, run_command_name, run_command)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_run_commands_update_with_http_info(api_version, subscription_id, resource_group_name, vm_name, run_command_name, run_command)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualMachineRunCommand>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineRunCommandsApi->virtual_machine_run_commands_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_name** | **String** | The name of the VirtualMachine |  |
| **run_command_name** | **String** | The name of the VirtualMachineRunCommand |  |
| **run_command** | [**VirtualMachineRunCommandUpdate**](VirtualMachineRunCommandUpdate.md) | Parameters supplied to the Update Virtual Machine RunCommand operation. |  |

### Return type

[**VirtualMachineRunCommand**](VirtualMachineRunCommand.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

