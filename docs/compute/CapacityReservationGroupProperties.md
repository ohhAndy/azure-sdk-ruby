# AzureRest::CapacityReservationGroupProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **capacity_reservations** | [**Array&lt;SubResourceReadOnly&gt;**](SubResourceReadOnly.md) | A list of all capacity reservation resource ids that belong to capacity reservation group. | [optional][readonly] |
| **virtual_machines_associated** | [**Array&lt;SubResourceReadOnly&gt;**](SubResourceReadOnly.md) | A list of references to all virtual machines associated to the capacity reservation group. | [optional][readonly] |
| **instance_view** | [**CapacityReservationGroupInstanceView**](CapacityReservationGroupInstanceView.md) |  | [optional] |
| **sharing_profile** | [**ResourceSharingProfile**](ResourceSharingProfile.md) |  | [optional] |
| **reservation_type** | [**ReservationType**](ReservationType.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::CapacityReservationGroupProperties.new(
  capacity_reservations: null,
  virtual_machines_associated: null,
  instance_view: null,
  sharing_profile: null,
  reservation_type: null
)
```

