# AzureSDK::CapacityReservationUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tags** | **Hash&lt;String, String&gt;** | Resource tags | [optional] |
| **properties** | [**CapacityReservationProperties**](CapacityReservationProperties.md) |  | [optional] |
| **sku** | [**Sku**](Sku.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::CapacityReservationUpdate.new(
  tags: null,
  properties: null,
  sku: null
)
```

