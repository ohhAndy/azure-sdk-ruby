# AzureRest::AutomaticZoneRebalancingPolicy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Specifies whether Automatic AZ Balancing should be enabled on the virtual machine scale set. The default value is false. | [optional] |
| **rebalance_strategy** | [**RebalanceStrategy**](RebalanceStrategy.md) |  | [optional] |
| **rebalance_behavior** | [**RebalanceBehavior**](RebalanceBehavior.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::AutomaticZoneRebalancingPolicy.new(
  enabled: null,
  rebalance_strategy: null,
  rebalance_behavior: null
)
```

