# AzureSDK::VirtualNetworkSubnetUsageModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **delegated_subnets_usage** | [**Array&lt;DelegatedSubnetUsage&gt;**](DelegatedSubnetUsage.md) |  | [optional][readonly] |
| **location** | **String** | location of the delegated subnet usage | [optional][readonly] |
| **subscription_id** | **String** | subscriptionId of the delegated subnet usage | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VirtualNetworkSubnetUsageModel.new(
  delegated_subnets_usage: null,
  location: null,
  subscription_id: null
)
```

