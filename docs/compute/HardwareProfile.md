# AzureRest::HardwareProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vm_size** | [**VirtualMachineSizeTypes**](VirtualMachineSizeTypes.md) |  | [optional] |
| **vm_size_properties** | [**VMSizeProperties**](VMSizeProperties.md) |  | [optional] |
| **processor_mode** | [**ProcessorMode**](ProcessorMode.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::HardwareProfile.new(
  vm_size: null,
  vm_size_properties: null,
  processor_mode: null
)
```

