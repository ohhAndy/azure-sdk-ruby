# AzureSDK::VirtualMachineScaleSetListSkusResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;VirtualMachineScaleSetSku&gt;**](VirtualMachineScaleSetSku.md) | The list of skus available for the virtual machine scale set. |  |
| **next_link** | **String** | The uri to fetch the next page of Virtual Machine Scale Set Skus. Call ListNext() with this to fetch the next page of VMSS Skus. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VirtualMachineScaleSetListSkusResult.new(
  value: null,
  next_link: null
)
```

