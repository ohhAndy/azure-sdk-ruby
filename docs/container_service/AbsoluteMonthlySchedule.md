# AzureRest::AbsoluteMonthlySchedule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **interval_months** | **Integer** | Specifies the number of months between each set of occurrences. |  |
| **day_of_month** | **Integer** | The date of the month. |  |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::AbsoluteMonthlySchedule.new(
  interval_months: null,
  day_of_month: null
)
```

