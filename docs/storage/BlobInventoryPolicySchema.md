# AzureRest::BlobInventoryPolicySchema

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Policy is enabled if set to true. |  |
| **destination** | **String** | Deprecated Property from API version 2021-04-01 onwards, the required destination container name must be specified at the rule level &#39;policy.rule.destination&#39; | [optional][readonly] |
| **type** | [**InventoryRuleType**](InventoryRuleType.md) |  |  |
| **rules** | [**Array&lt;BlobInventoryPolicyRule&gt;**](BlobInventoryPolicyRule.md) | The storage account blob inventory policy rules. The rule is applied when it is enabled. |  |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::BlobInventoryPolicySchema.new(
  enabled: null,
  destination: null,
  type: null,
  rules: null
)
```

