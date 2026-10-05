# AzureRest::ManagementPolicyDefinition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **actions** | [**ManagementPolicyAction**](ManagementPolicyAction.md) |  |  |
| **filters** | [**ManagementPolicyFilter**](ManagementPolicyFilter.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ManagementPolicyDefinition.new(
  actions: null,
  filters: null
)
```

