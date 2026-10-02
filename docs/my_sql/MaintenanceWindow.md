# AzureSDK::MaintenanceWindow

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_window** | **String** | indicates whether custom window is enabled or disabled | [optional] |
| **start_hour** | **Integer** | start hour for maintenance window | [optional] |
| **start_minute** | **Integer** | start minute for maintenance window | [optional] |
| **day_of_week** | **Integer** | day of week for maintenance window | [optional] |
| **batch_of_maintenance** | [**BatchOfMaintenance**](BatchOfMaintenance.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::MaintenanceWindow.new(
  custom_window: null,
  start_hour: null,
  start_minute: null,
  day_of_week: null,
  batch_of_maintenance: null
)
```

