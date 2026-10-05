# AzureRest::PublicIPAddressSku

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | [**PublicIPAddressSkuName**](PublicIPAddressSkuName.md) |  | [optional] |
| **tier** | [**PublicIPAddressSkuTier**](PublicIPAddressSkuTier.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::PublicIPAddressSku.new(
  name: null,
  tier: null
)
```

