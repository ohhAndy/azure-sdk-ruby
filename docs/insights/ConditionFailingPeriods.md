# AzureRest::ConditionFailingPeriods

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **number_of_evaluation_periods** | **Integer** | The number of aggregated lookback points. The lookback time window is calculated based on the aggregation granularity (windowSize) and the selected number of aggregated points. Default value is 1 | [optional][default to 1] |
| **min_failing_periods_to_alert** | **Integer** | The number of violations to trigger an alert. Should be smaller or equal to numberOfEvaluationPeriods. Default value is 1 | [optional][default to 1] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ConditionFailingPeriods.new(
  number_of_evaluation_periods: null,
  min_failing_periods_to_alert: null
)
```

