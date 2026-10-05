# AzureRest::AutoscaleRecurrence

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **time_zone** | **String** | The time zone for the autoscale schedule times | [optional] |
| **schedule** | [**Array&lt;AutoscaleSchedule&gt;**](AutoscaleSchedule.md) | Array of schedule-based autoscale rules | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::AutoscaleRecurrence.new(
  time_zone: null,
  schedule: null
)
```

