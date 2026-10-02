# AzureSDK::Plan

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The plan ID. | [optional] |
| **publisher** | **String** | The publisher ID. | [optional] |
| **product** | **String** | Specifies the product of the image from the marketplace. This is the same value as Offer under the imageReference element. | [optional] |
| **promotion_code** | **String** | The promotion code. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::Plan.new(
  name: null,
  publisher: null,
  product: null,
  promotion_code: null
)
```

