# AzureRest::AdvancedThreatProtectionListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;AdvancedThreatProtection&gt;**](AdvancedThreatProtection.md) | The AdvancedThreatProtection items on this page | [optional][readonly] |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::AdvancedThreatProtectionListResult.new(
  value: null,
  next_link: null
)
```

