# AzureRest::PurchasePlan

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **publisher** | **String** | The publisher ID. |  |
| **name** | **String** | The plan ID. |  |
| **product** | **String** | Specifies the product of the image from the marketplace. This is the same value as Offer under the imageReference element. |  |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::PurchasePlan.new(
  publisher: null,
  name: null,
  product: null
)
```

