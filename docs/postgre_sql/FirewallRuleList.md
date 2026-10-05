# AzureRest::FirewallRuleList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;FirewallRule&gt;**](FirewallRule.md) | The FirewallRule items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::FirewallRuleList.new(
  value: null,
  next_link: null
)
```

