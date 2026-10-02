# AzureSDK::WeeklySchedule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **interval_weeks** | **Integer** | Specifies the number of weeks between each set of occurrences. |  |
| **day_of_week** | [**WeekDay**](WeekDay.md) |  |  |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::WeeklySchedule.new(
  interval_weeks: null,
  day_of_week: null
)
```

