# AzureSDK::VirtualMachineScaleSetVMListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;VirtualMachineScaleSetVM&gt;**](VirtualMachineScaleSetVM.md) | The list of virtual machine scale sets VMs. |  |
| **next_link** | **String** | The uri to fetch the next page of Virtual Machine Scale Set VMs. Call ListNext() with this to fetch the next page of VMSS VMs. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VirtualMachineScaleSetVMListResult.new(
  value: null,
  next_link: null
)
```

