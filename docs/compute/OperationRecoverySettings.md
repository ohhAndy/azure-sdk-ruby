# AzureRest::OperationRecoverySettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **restart_recovery_policy** | [**RestartRecoveryPolicy**](RestartRecoveryPolicy.md) |  | [optional] |
| **start_recovery_policy** | [**StartRecoveryPolicy**](StartRecoveryPolicy.md) |  | [optional] |
| **reimage_recovery_policy** | [**ReimageRecoveryPolicy**](ReimageRecoveryPolicy.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::OperationRecoverySettings.new(
  restart_recovery_policy: null,
  start_recovery_policy: null,
  reimage_recovery_policy: null
)
```

