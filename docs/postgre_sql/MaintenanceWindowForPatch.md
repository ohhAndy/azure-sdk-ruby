# AzureSDK::MaintenanceWindowForPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_window** | **String** | Indicates whether custom window is enabled or disabled. | [optional] |
| **start_hour** | **Integer** | Start hour to be used for maintenance window. | [optional] |
| **start_minute** | **Integer** | Start minute to be used for maintenance window. | [optional] |
| **day_of_week** | **Integer** | Day of the week to be used for maintenance window. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::MaintenanceWindowForPatch.new(
  custom_window: null,
  start_hour: null,
  start_minute: null,
  day_of_week: null
)
```

