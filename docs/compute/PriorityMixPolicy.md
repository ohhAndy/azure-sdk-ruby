# AzureRest::PriorityMixPolicy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **base_regular_priority_count** | **Integer** | The base number of regular priority VMs that will be created in this scale set as it scales out. | [optional] |
| **regular_priority_percentage_above_base** | **Integer** | The percentage of VM instances, after the base regular priority count has been reached, that are expected to use regular priority. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::PriorityMixPolicy.new(
  base_regular_priority_count: null,
  regular_priority_percentage_above_base: null
)
```

