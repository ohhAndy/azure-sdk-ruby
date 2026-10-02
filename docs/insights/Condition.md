# AzureSDK::Condition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **criterion_type** | **String** | Specifies the type of threshold criteria | [optional] |
| **query** | **String** | Log query alert | [optional] |
| **time_aggregation** | **String** | Aggregation type. Relevant and required only for rules of the kind LogAlert. | [optional] |
| **metric_measure_column** | **String** | The column containing the metric measure number. Relevant only for rules of the kind LogAlert. | [optional] |
| **resource_id_column** | **String** | The column containing the resource id. The content of the column must be a uri formatted as resource id. Relevant only for rules of the kind LogAlert. | [optional] |
| **dimensions** | [**Array&lt;Dimension&gt;**](Dimension.md) | List of Dimensions conditions. Relevant only for rules of the kind LogAlert and LogToMetric. | [optional] |
| **operator** | **String** | The criteria operator. Relevant and required only for rules of the kind LogAlert. | [optional] |
| **threshold** | **Float** | the criteria threshold value that activates the alert. Relevant and required only for static threshold rules of the kind LogAlert. | [optional] |
| **alert_sensitivity** | **String** | The extent of deviation required to trigger an alert. Allowed values are &#39;Low&#39;, &#39;Medium&#39; and &#39;High&#39;. This will affect how tight the threshold is to the metric series pattern. Relevant only for dynamic threshold rules of the kind LogAlert. | [optional] |
| **ignore_data_before** | **Time** | Use this option to set the date from which to start learning the metric historical data and calculate the dynamic thresholds (in ISO8601 format). Relevant only for dynamic threshold rules of the kind LogAlert. | [optional] |
| **failing_periods** | [**ConditionFailingPeriods**](ConditionFailingPeriods.md) |  | [optional] |
| **metric_name** | **String** | The name of the metric to be sent. Relevant and required only for rules of the kind LogToMetric. | [optional] |
| **min_recurrence_count** | **Integer** | The minimum results count that should be found for triggering an alert. Relevant only for rules of the kind SimpleLogAlert. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::Condition.new(
  criterion_type: null,
  query: null,
  time_aggregation: null,
  metric_measure_column: null,
  resource_id_column: null,
  dimensions: null,
  operator: null,
  threshold: null,
  alert_sensitivity: null,
  ignore_data_before: null,
  failing_periods: null,
  metric_name: null,
  min_recurrence_count: null
)
```

