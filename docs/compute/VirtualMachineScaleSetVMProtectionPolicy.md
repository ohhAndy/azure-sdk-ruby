# AzureSDK::VirtualMachineScaleSetVMProtectionPolicy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **protect_from_scale_in** | **Boolean** | Indicates that the virtual machine scale set VM shouldn&#39;t be considered for deletion during a scale-in operation. | [optional] |
| **protect_from_scale_set_actions** | **Boolean** | Indicates that model updates or actions (including scale-in) initiated on the virtual machine scale set should not be applied to the virtual machine scale set VM. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VirtualMachineScaleSetVMProtectionPolicy.new(
  protect_from_scale_in: null,
  protect_from_scale_set_actions: null
)
```

