# AzureRest::AdvancedPlatformMetricsRuleListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;AdvancedPlatformMetricsRule&gt;**](AdvancedPlatformMetricsRule.md) | The AdvancedPlatformMetricsRule items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::AdvancedPlatformMetricsRuleListResult.new(
  value: null,
  next_link: null
)
```

