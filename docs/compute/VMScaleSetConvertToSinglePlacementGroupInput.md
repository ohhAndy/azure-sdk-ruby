# AzureRest::VMScaleSetConvertToSinglePlacementGroupInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active_placement_group_id** | **String** | Id of the placement group in which you want future virtual machine instances to be placed. To query placement group Id, please use Virtual Machine Scale Set VMs - Get API. If not provided, the platform will choose one with maximum number of virtual machine instances. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VMScaleSetConvertToSinglePlacementGroupInput.new(
  active_placement_group_id: null
)
```

