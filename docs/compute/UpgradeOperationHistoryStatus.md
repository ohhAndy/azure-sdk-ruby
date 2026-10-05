# AzureRest::UpgradeOperationHistoryStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | [**UpgradeState**](UpgradeState.md) |  | [optional] |
| **start_time** | **Time** | Start time of the upgrade. | [optional][readonly] |
| **end_time** | **Time** | End time of the upgrade. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::UpgradeOperationHistoryStatus.new(
  code: null,
  start_time: null,
  end_time: null
)
```

