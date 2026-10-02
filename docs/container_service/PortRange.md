# AzureSDK::PortRange

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **port_start** | **Integer** | The minimum port that is included in the range. It should be ranged from 1 to 65535, and be less than or equal to portEnd. | [optional] |
| **port_end** | **Integer** | The maximum port that is included in the range. It should be ranged from 1 to 65535, and be greater than or equal to portStart. | [optional] |
| **protocol** | [**Protocol**](Protocol.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::PortRange.new(
  port_start: null,
  port_end: null,
  protocol: null
)
```

