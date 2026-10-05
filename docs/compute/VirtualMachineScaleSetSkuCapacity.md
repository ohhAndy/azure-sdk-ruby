# AzureRest::VirtualMachineScaleSetSkuCapacity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **minimum** | **Integer** | The minimum capacity. | [optional][readonly] |
| **maximum** | **Integer** | The maximum capacity that can be set. | [optional][readonly] |
| **default_capacity** | **Integer** | The default capacity. | [optional][readonly] |
| **scale_type** | [**VirtualMachineScaleSetSkuScaleType**](VirtualMachineScaleSetSkuScaleType.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualMachineScaleSetSkuCapacity.new(
  minimum: null,
  maximum: null,
  default_capacity: null,
  scale_type: null
)
```

