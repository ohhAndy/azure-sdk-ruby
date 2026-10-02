# AzureSDK::TurboTier

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | [**TurboTierStatus**](TurboTierStatus.md) |  | [optional] |
| **target_percent** | **Integer** | The target fill percentage used for placement. The valid range is 10 to 100. When status is Enabled and this property is omitted, the default value is 20. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::TurboTier.new(
  status: null,
  target_percent: null
)
```

