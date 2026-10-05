# AzureRest::AvailabilitySetUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tags** | **Hash&lt;String, String&gt;** | Resource tags | [optional] |
| **properties** | [**AvailabilitySetProperties**](AvailabilitySetProperties.md) |  | [optional] |
| **sku** | [**Sku**](Sku.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::AvailabilitySetUpdate.new(
  tags: null,
  properties: null,
  sku: null
)
```

