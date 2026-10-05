# AzureRest::AutoscaleTimeAndCapacity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **time** | **String** | 24-hour time in the form xx:xx | [optional] |
| **min_instance_count** | **Integer** | The minimum instance count of the cluster | [optional] |
| **max_instance_count** | **Integer** | The maximum instance count of the cluster | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::AutoscaleTimeAndCapacity.new(
  time: null,
  min_instance_count: null,
  max_instance_count: null
)
```

