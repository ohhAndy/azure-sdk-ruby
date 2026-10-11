# AzureRest::DdosSourcePolicyOverride

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **policy_action** | [**DdosSourcePolicyAction**](DdosSourcePolicyAction.md) |  |  |
| **conditions** | [**DdosSourceMatchConditions**](DdosSourceMatchConditions.md) |  |  |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::DdosSourcePolicyOverride.new(
  policy_action: null,
  conditions: null
)
```

