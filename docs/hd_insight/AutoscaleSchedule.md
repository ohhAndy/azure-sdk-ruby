# AzureSDK::AutoscaleSchedule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **days** | **Array&lt;String&gt;** | Days of the week for a schedule-based autoscale rule | [optional] |
| **time_and_capacity** | [**AutoscaleTimeAndCapacity**](AutoscaleTimeAndCapacity.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::AutoscaleSchedule.new(
  days: null,
  time_and_capacity: null
)
```

