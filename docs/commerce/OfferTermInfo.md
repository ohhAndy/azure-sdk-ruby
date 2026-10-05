# AzureRest::OfferTermInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | [**OfferTermInfoName**](OfferTermInfoName.md) |  |  |
| **effective_date** | **Time** | Indicates the date from which the offer term is effective. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::OfferTermInfo.new(
  name: null,
  effective_date: null
)
```

