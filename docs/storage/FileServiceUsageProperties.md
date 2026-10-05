# AzureRest::FileServiceUsageProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **storage_account_limits** | [**AccountLimits**](AccountLimits.md) |  | [optional] |
| **file_share_limits** | [**FileShareLimits**](FileShareLimits.md) |  | [optional] |
| **file_share_recommendations** | [**FileShareRecommendations**](FileShareRecommendations.md) |  | [optional] |
| **bursting_constants** | [**BurstingConstants**](BurstingConstants.md) |  | [optional] |
| **storage_account_usage** | [**AccountUsage**](AccountUsage.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::FileServiceUsageProperties.new(
  storage_account_limits: null,
  file_share_limits: null,
  file_share_recommendations: null,
  bursting_constants: null,
  storage_account_usage: null
)
```

