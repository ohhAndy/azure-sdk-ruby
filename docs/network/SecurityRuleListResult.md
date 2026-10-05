# AzureRest::SecurityRuleListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;SecurityRule&gt;**](SecurityRule.md) | The SecurityRule items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::SecurityRuleListResult.new(
  value: null,
  next_link: null
)
```

