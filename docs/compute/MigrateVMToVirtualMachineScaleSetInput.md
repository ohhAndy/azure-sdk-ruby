# AzureSDK::MigrateVMToVirtualMachineScaleSetInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **target_zone** | **String** | The target zone of VM migration to Flexible Virtual Machine Scale Set. | [optional] |
| **target_fault_domain** | **Integer** | The target compute fault domain of VM migration to Flexible Virtual Machine Scale Set. | [optional] |
| **target_vm_size** | **String** | The target Virtual Machine size of VM migration to Flexible Virtual Machine Scale Set. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::MigrateVMToVirtualMachineScaleSetInput.new(
  target_zone: null,
  target_fault_domain: null,
  target_vm_size: null
)
```

