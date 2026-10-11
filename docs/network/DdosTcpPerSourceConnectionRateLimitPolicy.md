# AzureRest::DdosTcpPerSourceConnectionRateLimitPolicy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **connections_per_second** | **Integer** | The maximum number of new TCP connections established per second from a source IP. |  |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::DdosTcpPerSourceConnectionRateLimitPolicy.new(
  connections_per_second: null
)
```

