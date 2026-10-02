# AzureSDK::VirtualMachineScaleSetLifeCycleHookEventsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**virtual_machine_scale_set_life_cycle_hook_events_get**](VirtualMachineScaleSetLifeCycleHookEventsApi.md#virtual_machine_scale_set_life_cycle_hook_events_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/lifecycleHookEvents/{lifecycleHookEventName} |  |
| [**virtual_machine_scale_set_life_cycle_hook_events_list**](VirtualMachineScaleSetLifeCycleHookEventsApi.md#virtual_machine_scale_set_life_cycle_hook_events_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/lifecycleHookEvents |  |
| [**virtual_machine_scale_set_life_cycle_hook_events_update**](VirtualMachineScaleSetLifeCycleHookEventsApi.md#virtual_machine_scale_set_life_cycle_hook_events_update) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/lifecycleHookEvents/{lifecycleHookEventName} |  |


## virtual_machine_scale_set_life_cycle_hook_events_get

> <VMScaleSetLifecycleHookEvent> virtual_machine_scale_set_life_cycle_hook_events_get(api_version, subscription_id, resource_group_name, vm_scale_set_name, lifecycle_hook_event_name)



Gets a virtual machine scale set lifecycle hook event.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::VirtualMachineScaleSetLifeCycleHookEventsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.
lifecycle_hook_event_name = 'lifecycle_hook_event_name_example' # String | The name of the VMScaleSetLifecycleHookEvent

begin
  
  result = api_instance.virtual_machine_scale_set_life_cycle_hook_events_get(api_version, subscription_id, resource_group_name, vm_scale_set_name, lifecycle_hook_event_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineScaleSetLifeCycleHookEventsApi->virtual_machine_scale_set_life_cycle_hook_events_get: #{e}"
end
```

#### Using the virtual_machine_scale_set_life_cycle_hook_events_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VMScaleSetLifecycleHookEvent>, Integer, Hash)> virtual_machine_scale_set_life_cycle_hook_events_get_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, lifecycle_hook_event_name)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_set_life_cycle_hook_events_get_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, lifecycle_hook_event_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VMScaleSetLifecycleHookEvent>
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineScaleSetLifeCycleHookEventsApi->virtual_machine_scale_set_life_cycle_hook_events_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_scale_set_name** | **String** | The name of the VM scale set. |  |
| **lifecycle_hook_event_name** | **String** | The name of the VMScaleSetLifecycleHookEvent |  |

### Return type

[**VMScaleSetLifecycleHookEvent**](VMScaleSetLifecycleHookEvent.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_scale_set_life_cycle_hook_events_list

> <VMScaleSetLifecycleHookEventListResult> virtual_machine_scale_set_life_cycle_hook_events_list(api_version, subscription_id, resource_group_name, vm_scale_set_name)



Gets a list of virtual machine scale set lifecycle hook events created for a virtual machine scale set resource.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::VirtualMachineScaleSetLifeCycleHookEventsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.

begin
  
  result = api_instance.virtual_machine_scale_set_life_cycle_hook_events_list(api_version, subscription_id, resource_group_name, vm_scale_set_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineScaleSetLifeCycleHookEventsApi->virtual_machine_scale_set_life_cycle_hook_events_list: #{e}"
end
```

#### Using the virtual_machine_scale_set_life_cycle_hook_events_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VMScaleSetLifecycleHookEventListResult>, Integer, Hash)> virtual_machine_scale_set_life_cycle_hook_events_list_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_set_life_cycle_hook_events_list_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VMScaleSetLifecycleHookEventListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineScaleSetLifeCycleHookEventsApi->virtual_machine_scale_set_life_cycle_hook_events_list_with_http_info: #{e}"
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

[**VMScaleSetLifecycleHookEventListResult**](VMScaleSetLifecycleHookEventListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_scale_set_life_cycle_hook_events_update

> <VMScaleSetLifecycleHookEvent> virtual_machine_scale_set_life_cycle_hook_events_update(api_version, subscription_id, resource_group_name, vm_scale_set_name, lifecycle_hook_event_name, properties)



The operation to update a virtual machine scale set lifecycle hook event.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::VirtualMachineScaleSetLifeCycleHookEventsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.
lifecycle_hook_event_name = 'lifecycle_hook_event_name_example' # String | The name of the VMScaleSetLifecycleHookEvent
properties = AzureSDK::VMScaleSetLifecycleHookEventUpdate.new # VMScaleSetLifecycleHookEventUpdate | Parameters supplied to the Update virtual machine scale set lifecycle hook event operation.

begin
  
  result = api_instance.virtual_machine_scale_set_life_cycle_hook_events_update(api_version, subscription_id, resource_group_name, vm_scale_set_name, lifecycle_hook_event_name, properties)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineScaleSetLifeCycleHookEventsApi->virtual_machine_scale_set_life_cycle_hook_events_update: #{e}"
end
```

#### Using the virtual_machine_scale_set_life_cycle_hook_events_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VMScaleSetLifecycleHookEvent>, Integer, Hash)> virtual_machine_scale_set_life_cycle_hook_events_update_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, lifecycle_hook_event_name, properties)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_set_life_cycle_hook_events_update_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name, lifecycle_hook_event_name, properties)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VMScaleSetLifecycleHookEvent>
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineScaleSetLifeCycleHookEventsApi->virtual_machine_scale_set_life_cycle_hook_events_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_scale_set_name** | **String** | The name of the VM scale set. |  |
| **lifecycle_hook_event_name** | **String** | The name of the VMScaleSetLifecycleHookEvent |  |
| **properties** | [**VMScaleSetLifecycleHookEventUpdate**](VMScaleSetLifecycleHookEventUpdate.md) | Parameters supplied to the Update virtual machine scale set lifecycle hook event operation. |  |

### Return type

[**VMScaleSetLifecycleHookEvent**](VMScaleSetLifecycleHookEvent.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

