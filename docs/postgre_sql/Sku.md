# AzureSDK::Sku

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name by which is known a given compute size assigned to a server. |  |
| **tier** | [**SkuTier**](SkuTier.md) |  |  |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::Sku.new(
  name: null,
  tier: null
)
```

