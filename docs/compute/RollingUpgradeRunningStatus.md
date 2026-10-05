# AzureRest::RollingUpgradeRunningStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | [**RollingUpgradeStatusCode**](RollingUpgradeStatusCode.md) |  | [optional] |
| **start_time** | **Time** | Start time of the upgrade. | [optional][readonly] |
| **last_action** | [**RollingUpgradeActionType**](RollingUpgradeActionType.md) |  | [optional] |
| **last_action_time** | **Time** | Last action time of the upgrade. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::RollingUpgradeRunningStatus.new(
  code: null,
  start_time: null,
  last_action: null,
  last_action_time: null
)
```

