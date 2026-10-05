# AzureRest::EffectiveNetworkSecurityGroupListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;EffectiveNetworkSecurityGroup&gt;**](EffectiveNetworkSecurityGroup.md) | The EffectiveNetworkSecurityGroup items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::EffectiveNetworkSecurityGroupListResult.new(
  value: null,
  next_link: null
)
```

