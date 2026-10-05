# AzureRest::Sku

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name by which is known a given compute size assigned to a server. |  |
| **tier** | [**SkuTier**](SkuTier.md) |  |  |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::Sku.new(
  name: null,
  tier: null
)
```

