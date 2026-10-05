# AzureRest::TriggerParameters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_from** | **Time** | When to start task execution. This is a required field when ExecutionTrigger.properties.type is &#39;OnSchedule&#39;; this property should not be present when ExecutionTrigger.properties.type is &#39;RunOnce&#39; | [optional] |
| **interval** | **Integer** | Run interval of task execution. This is a required field when ExecutionTrigger.properties.type is &#39;OnSchedule&#39;; this property should not be present when ExecutionTrigger.properties.type is &#39;RunOnce&#39; | [optional] |
| **interval_unit** | [**IntervalUnit**](IntervalUnit.md) |  | [optional] |
| **end_by** | **Time** | When to end task execution. This is a required field when ExecutionTrigger.properties.type is &#39;OnSchedule&#39;; this property should not be present when ExecutionTrigger.properties.type is &#39;RunOnce&#39; | [optional] |
| **start_on** | **Time** | When to start task execution. This is a required field when ExecutionTrigger.properties.type is &#39;RunOnce&#39;; this property should not be present when ExecutionTrigger.properties.type is &#39;OnSchedule&#39; | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::TriggerParameters.new(
  start_from: null,
  interval: null,
  interval_unit: null,
  end_by: null,
  start_on: null
)
```

