# AzureRest::CapacityReservationGroupUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tags** | **Hash&lt;String, String&gt;** | Resource tags | [optional] |
| **properties** | [**CapacityReservationGroupProperties**](CapacityReservationGroupProperties.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::CapacityReservationGroupUpdate.new(
  tags: null,
  properties: null
)
```

