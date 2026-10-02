# AzureSDK::CapacityReservationInstanceView

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **utilization_info** | [**CapacityReservationUtilization**](CapacityReservationUtilization.md) |  | [optional] |
| **statuses** | [**Array&lt;InstanceViewStatus&gt;**](InstanceViewStatus.md) | The resource status information. | [optional] |
| **reservation_state_info** | [**CapacityReservationStateInfo**](CapacityReservationStateInfo.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::CapacityReservationInstanceView.new(
  utilization_info: null,
  statuses: null,
  reservation_state_info: null
)
```

