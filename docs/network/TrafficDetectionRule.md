# AzureRest::TrafficDetectionRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **traffic_type** | [**DdosTrafficType**](DdosTrafficType.md) |  | [optional] |
| **packets_per_second** | **Integer** | The customized packets per second threshold. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::TrafficDetectionRule.new(
  traffic_type: null,
  packets_per_second: null
)
```

