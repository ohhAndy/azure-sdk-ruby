# AzureSDK::InterconnectBlockInstanceView

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **current_capacity** | **Integer** | The current capacity allocated for this Interconnect Block. | [optional][readonly] |
| **statuses** | [**Array&lt;InstanceViewStatus&gt;**](InstanceViewStatus.md) | The resource status information. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::InterconnectBlockInstanceView.new(
  current_capacity: null,
  statuses: null
)
```

