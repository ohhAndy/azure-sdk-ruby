# AzureRest::RelativeMonthlySchedule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **interval_months** | **Integer** | Specifies the number of months between each set of occurrences. |  |
| **week_index** | [**Type**](Type.md) |  |  |
| **day_of_week** | [**WeekDay**](WeekDay.md) |  |  |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::RelativeMonthlySchedule.new(
  interval_months: null,
  week_index: null,
  day_of_week: null
)
```

