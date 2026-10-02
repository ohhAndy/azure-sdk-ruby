# AzureSDK::CapacityReservationGroupInstanceView

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **capacity_reservations** | [**Array&lt;CapacityReservationInstanceViewWithName&gt;**](CapacityReservationInstanceViewWithName.md) | List of instance view of the capacity reservations under the capacity reservation group. | [optional][readonly] |
| **shared_subscription_ids** | [**Array&lt;SubResourceReadOnly&gt;**](SubResourceReadOnly.md) | List of the subscriptions that the capacity reservation group is shared with. **Note:** Minimum api-version: 2023-09-01. Please refer to https://aka.ms/computereservationsharing for more details. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::CapacityReservationGroupInstanceView.new(
  capacity_reservations: null,
  shared_subscription_ids: null
)
```

