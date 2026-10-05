# AzureRest::VirtualMachineScaleSetHardwareProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vm_size_properties** | [**VMSizeProperties**](VMSizeProperties.md) |  | [optional] |
| **processor_mode** | [**ProcessorMode**](ProcessorMode.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualMachineScaleSetHardwareProfile.new(
  vm_size_properties: null,
  processor_mode: null
)
```

