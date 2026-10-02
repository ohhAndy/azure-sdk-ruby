# AzureSDK::TimeInWeek

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **day** | [**WeekDay**](WeekDay.md) |  | [optional] |
| **hour_slots** | **Array&lt;Integer&gt;** | A list of hours in the day used to identify a time range. Each integer hour represents a time range beginning at 0m after the hour ending at the next hour (non-inclusive). 0 corresponds to 00:00 UTC, 23 corresponds to 23:00 UTC. Specifying [0, 1] means the 00:00 - 02:00 UTC time range. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::TimeInWeek.new(
  day: null,
  hour_slots: null
)
```

