# AzureRest::UpgradeOperationHistoricalStatusInfoProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **running_status** | [**UpgradeOperationHistoryStatus**](UpgradeOperationHistoryStatus.md) |  | [optional] |
| **progress** | [**RollingUpgradeProgressInfo**](RollingUpgradeProgressInfo.md) |  | [optional] |
| **error** | [**ApiError**](ApiError.md) |  | [optional] |
| **started_by** | [**UpgradeOperationInvoker**](UpgradeOperationInvoker.md) |  | [optional] |
| **target_image_reference** | [**ImageReference**](ImageReference.md) |  | [optional] |
| **rollback_info** | [**RollbackStatusInfo**](RollbackStatusInfo.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::UpgradeOperationHistoricalStatusInfoProperties.new(
  running_status: null,
  progress: null,
  error: null,
  started_by: null,
  target_image_reference: null,
  rollback_info: null
)
```

