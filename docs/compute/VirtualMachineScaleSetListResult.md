# AzureSDK::VirtualMachineScaleSetListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;VirtualMachineScaleSet&gt;**](VirtualMachineScaleSet.md) | The list of virtual machine scale sets. |  |
| **next_link** | **String** | The uri to fetch the next page of Virtual Machine Scale Sets. Call ListNext() with this to fetch the next page of VMSS. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VirtualMachineScaleSetListResult.new(
  value: null,
  next_link: null
)
```

