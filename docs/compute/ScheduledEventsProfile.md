# AzureSDK::ScheduledEventsProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **terminate_notification_profile** | [**TerminateNotificationProfile**](TerminateNotificationProfile.md) |  | [optional] |
| **os_image_notification_profile** | [**OSImageNotificationProfile**](OSImageNotificationProfile.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ScheduledEventsProfile.new(
  terminate_notification_profile: null,
  os_image_notification_profile: null
)
```

