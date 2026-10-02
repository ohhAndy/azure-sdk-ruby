# AzureSDK::VirtualMachineScaleSetSku

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource_type** | **String** | The type of resource the sku applies to. | [optional][readonly] |
| **sku** | [**Sku**](Sku.md) |  | [optional] |
| **capacity** | [**VirtualMachineScaleSetSkuCapacity**](VirtualMachineScaleSetSkuCapacity.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VirtualMachineScaleSetSku.new(
  resource_type: null,
  sku: null,
  capacity: null
)
```

