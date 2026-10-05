# AzureRest::InterconnectBlockInstanceView

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **current_capacity** | **Integer** | The current capacity allocated for this Interconnect Block. | [optional][readonly] |
| **statuses** | [**Array&lt;InstanceViewStatus&gt;**](InstanceViewStatus.md) | The resource status information. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::InterconnectBlockInstanceView.new(
  current_capacity: null,
  statuses: null
)
```

