# AzureRest::DdosUdpPerSourceRateLimitPolicy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **packets_per_second** | **Integer** | The maximum number of UDP packets allowed per second from a source IP. |  |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::DdosUdpPerSourceRateLimitPolicy.new(
  packets_per_second: null
)
```

