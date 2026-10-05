# AzureRest::ConvertToVirtualMachineScaleSetInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **virtual_machine_scale_set_name** | **String** | Specifies information about the Virtual Machine Scale Set that the Availability Set should be converted to. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ConvertToVirtualMachineScaleSetInput.new(
  virtual_machine_scale_set_name: null
)
```

