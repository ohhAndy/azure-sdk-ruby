# AzureRest::DdosGeoMatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **continent** | [**DdosContinent**](DdosContinent.md) |  | [optional] |
| **country_code** | **String** | The uppercase two-letter ISO 3166-1 alpha-2 code for the country or territory to match. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::DdosGeoMatch.new(
  continent: null,
  country_code: null
)
```

