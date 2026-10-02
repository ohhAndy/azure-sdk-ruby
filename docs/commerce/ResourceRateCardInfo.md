# AzureSDK::ResourceRateCardInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currency** | **String** | The currency in which the rates are provided. | [optional] |
| **locale** | **String** | The culture in which the resource information is localized. | [optional] |
| **is_tax_included** | **Boolean** | All rates are pretax, so this will always be returned as &#39;false&#39;. | [optional] |
| **offer_terms** | [**Array&lt;OfferTermInfo&gt;**](OfferTermInfo.md) | A list of offer terms. | [optional] |
| **meters** | [**Array&lt;MeterInfo&gt;**](MeterInfo.md) | A list of meters. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ResourceRateCardInfo.new(
  currency: null,
  locale: null,
  is_tax_included: null,
  offer_terms: null,
  meters: null
)
```

