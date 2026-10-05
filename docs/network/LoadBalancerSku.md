# AzureRest::LoadBalancerSku

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | [**LoadBalancerSkuName**](LoadBalancerSkuName.md) |  | [optional] |
| **tier** | [**LoadBalancerSkuTier**](LoadBalancerSkuTier.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::LoadBalancerSku.new(
  name: null,
  tier: null
)
```

