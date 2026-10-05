# AzureRest::ServiceSpecification

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metric_specifications** | [**Array&lt;MetricSpecification&gt;**](MetricSpecification.md) | Metric specifications for the operation. | [optional][readonly] |
| **log_specifications** | [**Array&lt;LogSpecification&gt;**](LogSpecification.md) | Log specifications for the operation. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ServiceSpecification.new(
  metric_specifications: null,
  log_specifications: null
)
```

