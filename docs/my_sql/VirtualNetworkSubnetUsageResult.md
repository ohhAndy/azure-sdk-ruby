# AzureRest::VirtualNetworkSubnetUsageResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **location** | **String** | The location name. | [optional][readonly] |
| **subscription_id** | **String** | The subscription id. | [optional][readonly] |
| **delegated_subnets_usage** | [**Array&lt;DelegatedSubnetUsage&gt;**](DelegatedSubnetUsage.md) | A list of delegated subnet usage | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualNetworkSubnetUsageResult.new(
  location: null,
  subscription_id: null,
  delegated_subnets_usage: null
)
```

