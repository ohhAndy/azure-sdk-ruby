# AzureRest::CapacityReservationInstanceViewWithName

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **utilization_info** | [**CapacityReservationUtilization**](CapacityReservationUtilization.md) |  | [optional] |
| **statuses** | [**Array&lt;InstanceViewStatus&gt;**](InstanceViewStatus.md) | The resource status information. | [optional] |
| **reservation_state_info** | [**CapacityReservationStateInfo**](CapacityReservationStateInfo.md) |  | [optional] |
| **name** | **String** | The name of the capacity reservation. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::CapacityReservationInstanceViewWithName.new(
  utilization_info: null,
  statuses: null,
  reservation_state_info: null,
  name: null
)
```

