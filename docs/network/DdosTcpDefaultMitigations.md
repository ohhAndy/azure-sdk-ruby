# AzureRest::DdosTcpDefaultMitigations

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **per_source_rate_limiting** | [**DdosTcpPerSourceRateLimitPolicy**](DdosTcpPerSourceRateLimitPolicy.md) |  | [optional] |
| **per_source_connection_rate_limiting** | [**DdosTcpPerSourceConnectionRateLimitPolicy**](DdosTcpPerSourceConnectionRateLimitPolicy.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::DdosTcpDefaultMitigations.new(
  per_source_rate_limiting: null,
  per_source_connection_rate_limiting: null
)
```

