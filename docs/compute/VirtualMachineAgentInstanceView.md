# AzureSDK::VirtualMachineAgentInstanceView

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vm_agent_version** | **String** | The VM Agent full version. | [optional] |
| **extension_handlers** | [**Array&lt;VirtualMachineExtensionHandlerInstanceView&gt;**](VirtualMachineExtensionHandlerInstanceView.md) | The virtual machine extension handler instance view. | [optional] |
| **statuses** | [**Array&lt;InstanceViewStatus&gt;**](InstanceViewStatus.md) | The resource status information. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VirtualMachineAgentInstanceView.new(
  vm_agent_version: null,
  extension_handlers: null,
  statuses: null
)
```

