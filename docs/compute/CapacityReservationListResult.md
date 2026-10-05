# AzureRest::CapacityReservationListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;CapacityReservation&gt;**](CapacityReservation.md) | The list of capacity reservations. |  |
| **next_link** | **String** | The URI to fetch the next page of capacity reservations. Call ListNext() with this URI to fetch the next page of capacity reservations. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::CapacityReservationListResult.new(
  value: null,
  next_link: null
)
```

