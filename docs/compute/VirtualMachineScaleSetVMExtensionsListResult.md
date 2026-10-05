# AzureRest::VirtualMachineScaleSetVMExtensionsListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;VirtualMachineScaleSetVMExtension&gt;**](VirtualMachineScaleSetVMExtension.md) | The list of VMSS VM extensions | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualMachineScaleSetVMExtensionsListResult.new(
  value: null
)
```

