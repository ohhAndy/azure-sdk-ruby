# AzureRest::CapacityReservationProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **capacity_reservation_group** | [**SubResource**](SubResource.md) |  | [optional] |
| **disable_capacity_reservation_assignment** | **Boolean** | Specifies whether the virtual machine is explicitly opted out from being associated with any capacity reservation. When set to true, the virtual machine will not be allowed to implicitly or explicitly associate with any type of capacity reservation and will consume capacity from the publicly available capacity. Minimum api-version: 2026-04-01. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::CapacityReservationProfile.new(
  capacity_reservation_group: null,
  disable_capacity_reservation_assignment: null
)
```

