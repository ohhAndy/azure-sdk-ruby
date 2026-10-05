# AzureRest::Schedule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **daily** | [**DailySchedule**](DailySchedule.md) |  | [optional] |
| **weekly** | [**WeeklySchedule**](WeeklySchedule.md) |  | [optional] |
| **absolute_monthly** | [**AbsoluteMonthlySchedule**](AbsoluteMonthlySchedule.md) |  | [optional] |
| **relative_monthly** | [**RelativeMonthlySchedule**](RelativeMonthlySchedule.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::Schedule.new(
  daily: null,
  weekly: null,
  absolute_monthly: null,
  relative_monthly: null
)
```

