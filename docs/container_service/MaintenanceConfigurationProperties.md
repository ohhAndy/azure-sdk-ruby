# AzureSDK::MaintenanceConfigurationProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **time_in_week** | [**Array&lt;TimeInWeek&gt;**](TimeInWeek.md) | Time slots during the week when planned maintenance is allowed to proceed. If two array entries specify the same day of the week, the applied configuration is the union of times in both entries. | [optional] |
| **not_allowed_time** | [**Array&lt;TimeSpan&gt;**](TimeSpan.md) | Time slots on which upgrade is not allowed. | [optional] |
| **maintenance_window** | [**MaintenanceWindow**](MaintenanceWindow.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::MaintenanceConfigurationProperties.new(
  time_in_week: null,
  not_allowed_time: null,
  maintenance_window: null
)
```

