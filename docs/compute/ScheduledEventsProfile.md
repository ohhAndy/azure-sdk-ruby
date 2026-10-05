# AzureRest::ScheduledEventsProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **terminate_notification_profile** | [**TerminateNotificationProfile**](TerminateNotificationProfile.md) |  | [optional] |
| **os_image_notification_profile** | [**OSImageNotificationProfile**](OSImageNotificationProfile.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ScheduledEventsProfile.new(
  terminate_notification_profile: null,
  os_image_notification_profile: null
)
```

