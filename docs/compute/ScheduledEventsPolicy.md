# AzureSDK::ScheduledEventsPolicy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_initiated_redeploy** | [**UserInitiatedRedeploy**](UserInitiatedRedeploy.md) |  | [optional] |
| **user_initiated_reboot** | [**UserInitiatedReboot**](UserInitiatedReboot.md) |  | [optional] |
| **scheduled_events_additional_publishing_targets** | [**ScheduledEventsAdditionalPublishingTargets**](ScheduledEventsAdditionalPublishingTargets.md) |  | [optional] |
| **all_instances_down** | [**AllInstancesDown**](AllInstancesDown.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ScheduledEventsPolicy.new(
  user_initiated_redeploy: null,
  user_initiated_reboot: null,
  scheduled_events_additional_publishing_targets: null,
  all_instances_down: null
)
```

