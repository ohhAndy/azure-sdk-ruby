# AzureSDK::VaultAccessPolicyProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_policies** | [**Array&lt;AccessPolicyEntry&gt;**](AccessPolicyEntry.md) | An array of 0 to 16 identities that have access to the key vault. All identities in the array must use the same tenant ID as the key vault&#39;s tenant ID. |  |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VaultAccessPolicyProperties.new(
  access_policies: null
)
```

