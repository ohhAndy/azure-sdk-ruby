# AzureSDK::EffectiveRouteListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;EffectiveRoute&gt;**](EffectiveRoute.md) | The EffectiveRoute items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::EffectiveRouteListResult.new(
  value: null,
  next_link: null
)
```

