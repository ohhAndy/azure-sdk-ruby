# AzureRest::MetricSpecification

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of metric specification. | [optional] |
| **display_name** | **String** | Display name of metric specification. | [optional] |
| **display_description** | **String** | Display description of metric specification. | [optional] |
| **unit** | **String** | The metric unit. Possible values include: &#39;Bytes&#39;, &#39;Count&#39;, &#39;Milliseconds&#39;. | [optional] |
| **aggregation_type** | **String** | The metric aggregation type. Possible values include: &#39;Average&#39;, &#39;Count&#39;, &#39;Total&#39;. | [optional] |
| **supported_aggregation_types** | **Array&lt;String&gt;** | The supported aggregation types for the metrics. | [optional] |
| **supported_time_grain_types** | **Array&lt;String&gt;** | The supported time grain types for the metrics. | [optional] |
| **lock_aggregation_type** | **String** | The metric lock aggregation type. | [optional] |
| **dimensions** | [**Array&lt;DimensionProperties&gt;**](DimensionProperties.md) | The dimensions of metric | [optional] |
| **fill_gap_with_zero** | **Boolean** | Property to specify whether to fill gap with zero. | [optional] |
| **internal_metric_name** | **String** | The internal metric name. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::MetricSpecification.new(
  name: null,
  display_name: null,
  display_description: null,
  unit: null,
  aggregation_type: null,
  supported_aggregation_types: null,
  supported_time_grain_types: null,
  lock_aggregation_type: null,
  dimensions: null,
  fill_gap_with_zero: null,
  internal_metric_name: null
)
```

