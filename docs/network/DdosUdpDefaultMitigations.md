# AzureRest::DdosUdpDefaultMitigations

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **per_source_rate_limiting** | [**DdosUdpPerSourceRateLimitPolicy**](DdosUdpPerSourceRateLimitPolicy.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::DdosUdpDefaultMitigations.new(
  per_source_rate_limiting: null
)
```

