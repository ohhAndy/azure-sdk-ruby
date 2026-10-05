# AzureRest::MaintenanceWindow

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schedule** | [**Schedule**](Schedule.md) |  |  |
| **duration_hours** | **Integer** | Length of maintenance window range from 4 to 24 hours. | [default to 24] |
| **utc_offset** | **String** | The UTC offset in format +/-HH:mm. For example, &#39;+05:30&#39; for IST and &#39;-07:00&#39; for PST. If not specified, the default is &#39;+00:00&#39;. | [optional] |
| **start_date** | **Date** | The date the maintenance window activates. If the current date is before this date, the maintenance window is inactive and will not be used for upgrades. If not specified, the maintenance window will be active right away. | [optional] |
| **start_time** | **String** | The start time of the maintenance window. Accepted values are from &#39;00:00&#39; to &#39;23:59&#39;. &#39;utcOffset&#39; applies to this field. For example: &#39;02:00&#39; with &#39;utcOffset: +02:00&#39; means UTC time &#39;00:00&#39;. |  |
| **not_allowed_dates** | [**Array&lt;DateSpan&gt;**](DateSpan.md) | Date ranges on which upgrade is not allowed. &#39;utcOffset&#39; applies to this field. For example, with &#39;utcOffset: +02:00&#39; and &#39;dateSpan&#39; being &#39;2022-12-23&#39; to &#39;2023-01-03&#39;, maintenance will be blocked from &#39;2022-12-22 22:00&#39; to &#39;2023-01-03 22:00&#39; in UTC time. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::MaintenanceWindow.new(
  schedule: null,
  duration_hours: null,
  utc_offset: null,
  start_date: null,
  start_time: null,
  not_allowed_dates: null
)
```

