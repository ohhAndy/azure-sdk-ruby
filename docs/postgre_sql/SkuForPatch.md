# AzureRest::SkuForPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name by which is known a given compute size assigned to a server. | [optional] |
| **tier** | [**SkuTier**](SkuTier.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::SkuForPatch.new(
  name: null,
  tier: null
)
```

