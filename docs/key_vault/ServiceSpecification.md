# AzureRest::ServiceSpecification

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **log_specifications** | [**Array&lt;LogSpecification&gt;**](LogSpecification.md) | Log specifications of operation. | [optional] |
| **metric_specifications** | [**Array&lt;MetricSpecification&gt;**](MetricSpecification.md) | Metric specifications of operation. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ServiceSpecification.new(
  log_specifications: null,
  metric_specifications: null
)
```

