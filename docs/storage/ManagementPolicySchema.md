# AzureRest::ManagementPolicySchema

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rules** | [**Array&lt;ManagementPolicyRule&gt;**](ManagementPolicyRule.md) | The Storage Account ManagementPolicies Rules. See more details in: https://learn.microsoft.com/azure/storage/blobs/lifecycle-management-overview. |  |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ManagementPolicySchema.new(
  rules: null
)
```

