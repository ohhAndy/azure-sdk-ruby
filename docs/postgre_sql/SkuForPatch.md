# AzureSDK::SkuForPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name by which is known a given compute size assigned to a server. | [optional] |
| **tier** | [**SkuTier**](SkuTier.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::SkuForPatch.new(
  name: null,
  tier: null
)
```

