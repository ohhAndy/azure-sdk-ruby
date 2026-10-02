# AzureSDK::OSImageNotificationProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **not_before_timeout** | **String** | Length of time a Virtual Machine being reimaged or having its OS upgraded will have to potentially approve the OS Image Scheduled Event before the event is auto approved (timed out). The configuration is specified in ISO 8601 format, and the value must be 15 minutes (PT15M) | [optional] |
| **enable** | **Boolean** | Specifies whether the OS Image Scheduled event is enabled or disabled. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::OSImageNotificationProfile.new(
  not_before_timeout: null,
  enable: null
)
```

