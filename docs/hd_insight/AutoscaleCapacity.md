# AzureRest::AutoscaleCapacity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **min_instance_count** | **Integer** | The minimum instance count of the cluster | [optional] |
| **max_instance_count** | **Integer** | The maximum instance count of the cluster | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::AutoscaleCapacity.new(
  min_instance_count: null,
  max_instance_count: null
)
```

