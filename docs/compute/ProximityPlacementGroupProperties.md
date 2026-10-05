# AzureRest::ProximityPlacementGroupProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proximity_placement_group_type** | [**ProximityPlacementGroupType**](ProximityPlacementGroupType.md) |  | [optional] |
| **virtual_machines** | [**Array&lt;SubResourceWithColocationStatus&gt;**](SubResourceWithColocationStatus.md) | A list of references to all virtual machines in the proximity placement group. | [optional][readonly] |
| **virtual_machine_scale_sets** | [**Array&lt;SubResourceWithColocationStatus&gt;**](SubResourceWithColocationStatus.md) | A list of references to all virtual machine scale sets in the proximity placement group. | [optional][readonly] |
| **availability_sets** | [**Array&lt;SubResourceWithColocationStatus&gt;**](SubResourceWithColocationStatus.md) | A list of references to all availability sets in the proximity placement group. | [optional][readonly] |
| **colocation_status** | [**InstanceViewStatus**](InstanceViewStatus.md) |  | [optional] |
| **intent** | [**ProximityPlacementGroupPropertiesIntent**](ProximityPlacementGroupPropertiesIntent.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ProximityPlacementGroupProperties.new(
  proximity_placement_group_type: null,
  virtual_machines: null,
  virtual_machine_scale_sets: null,
  availability_sets: null,
  colocation_status: null,
  intent: null
)
```

