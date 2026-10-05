# AzureRest::RateCardQueryParameters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offer_durable_id** | **String** | The Offer ID parameter consists of the &#39;MS-AZR-&#39; prefix, plus the Offer ID number (e.g., MS-AZR-0026P). See https://azure.microsoft.com/en-us/support/legal/offer-details/ for more information on the list of available Offer IDs, country/region availability, and billing currency. |  |
| **currency** | **String** | The currency in which the rates need to be provided. |  |
| **locale** | **String** | The culture in which the resource metadata needs to be localized. |  |
| **region_info** | **String** | 2 letter ISO code where the offer was purchased. |  |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::RateCardQueryParameters.new(
  offer_durable_id: null,
  currency: null,
  locale: null,
  region_info: null
)
```

