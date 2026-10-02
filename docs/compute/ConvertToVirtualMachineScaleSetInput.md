# AzureSDK::ConvertToVirtualMachineScaleSetInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **virtual_machine_scale_set_name** | **String** | Specifies information about the Virtual Machine Scale Set that the Availability Set should be converted to. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ConvertToVirtualMachineScaleSetInput.new(
  virtual_machine_scale_set_name: null
)
```

