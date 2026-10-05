# AzureRest::RollingUpgradeStatusInfoProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **policy** | [**RollingUpgradePolicy**](RollingUpgradePolicy.md) |  | [optional] |
| **running_status** | [**RollingUpgradeRunningStatus**](RollingUpgradeRunningStatus.md) |  | [optional] |
| **progress** | [**RollingUpgradeProgressInfo**](RollingUpgradeProgressInfo.md) |  | [optional] |
| **error** | [**ApiError**](ApiError.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::RollingUpgradeStatusInfoProperties.new(
  policy: null,
  running_status: null,
  progress: null,
  error: null
)
```

