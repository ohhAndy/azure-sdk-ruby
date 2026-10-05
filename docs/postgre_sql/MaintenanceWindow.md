# AzureRest::MaintenanceWindow

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_window** | **String** | Indicates whether custom window is enabled or disabled. | [optional][default to &#39;Disabled&#39;] |
| **start_hour** | **Integer** | Start hour to be used for maintenance window. | [optional][default to 0] |
| **start_minute** | **Integer** | Start minute to be used for maintenance window. | [optional][default to 0] |
| **day_of_week** | **Integer** | Day of the week to be used for maintenance window. | [optional][default to 0] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::MaintenanceWindow.new(
  custom_window: null,
  start_hour: null,
  start_minute: null,
  day_of_week: null
)
```

