# AzureSDK::ManagementPolicyProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **last_modified_time** | **Time** | Returns the date and time the ManagementPolicies was last modified. | [optional][readonly] |
| **policy** | [**ManagementPolicySchema**](ManagementPolicySchema.md) |  |  |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ManagementPolicyProperties.new(
  last_modified_time: null,
  policy: null
)
```

