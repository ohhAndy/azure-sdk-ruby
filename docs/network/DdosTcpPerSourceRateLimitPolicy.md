# AzureRest::DdosTcpPerSourceRateLimitPolicy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **packets_per_second** | **Integer** | The maximum number of TCP packets allowed per second from a source IP. |  |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::DdosTcpPerSourceRateLimitPolicy.new(
  packets_per_second: null
)
```

