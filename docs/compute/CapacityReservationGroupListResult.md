# AzureRest::CapacityReservationGroupListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;CapacityReservationGroup&gt;**](CapacityReservationGroup.md) | The list of capacity reservation groups. |  |
| **next_link** | **String** | The URI to fetch the next page of capacity reservation groups. Call ListNext() with this URI to fetch the next page of capacity reservation groups. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::CapacityReservationGroupListResult.new(
  value: null,
  next_link: null
)
```

