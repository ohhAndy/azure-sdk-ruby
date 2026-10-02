# AzureSDK::VirtualMachineScaleSetVMExtensionUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Resource Id | [optional][readonly] |
| **name** | **String** | The name of the extension. | [optional][readonly] |
| **type** | **String** | Resource type | [optional][readonly] |
| **properties** | [**VirtualMachineExtensionUpdateProperties**](VirtualMachineExtensionUpdateProperties.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VirtualMachineScaleSetVMExtensionUpdate.new(
  id: null,
  name: null,
  type: null,
  properties: null
)
```

