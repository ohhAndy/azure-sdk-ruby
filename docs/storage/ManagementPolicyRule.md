# AzureRest::ManagementPolicyRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Rule is enabled if set to true. | [optional] |
| **name** | **String** | A rule name can contain any combination of alpha numeric characters. Rule name is case-sensitive. It must be unique within a policy. |  |
| **type** | [**RuleType**](RuleType.md) |  |  |
| **definition** | [**ManagementPolicyDefinition**](ManagementPolicyDefinition.md) |  |  |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ManagementPolicyRule.new(
  enabled: null,
  name: null,
  type: null,
  definition: null
)
```

