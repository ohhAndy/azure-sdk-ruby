# AzureRest::Autoscale

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **capacity** | [**AutoscaleCapacity**](AutoscaleCapacity.md) |  | [optional] |
| **recurrence** | [**AutoscaleRecurrence**](AutoscaleRecurrence.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::Autoscale.new(
  capacity: null,
  recurrence: null
)
```

