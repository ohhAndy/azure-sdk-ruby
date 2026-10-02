# AzureSDK::RollingUpgradeProgressInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **successful_instance_count** | **Integer** | The number of instances that have been successfully upgraded. | [optional][readonly] |
| **failed_instance_count** | **Integer** | The number of instances that have failed to be upgraded successfully. | [optional][readonly] |
| **in_progress_instance_count** | **Integer** | The number of instances that are currently being upgraded. | [optional][readonly] |
| **pending_instance_count** | **Integer** | The number of instances that have not yet begun to be upgraded. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::RollingUpgradeProgressInfo.new(
  successful_instance_count: null,
  failed_instance_count: null,
  in_progress_instance_count: null,
  pending_instance_count: null
)
```

