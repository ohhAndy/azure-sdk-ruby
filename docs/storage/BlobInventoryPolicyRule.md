# AzureSDK::BlobInventoryPolicyRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Rule is enabled when set to true. |  |
| **name** | **String** | A rule name can contain any combination of alpha numeric characters. Rule name is case-sensitive. It must be unique within a policy. |  |
| **destination** | **String** | Container name where blob inventory files are stored. Must be pre-created. |  |
| **definition** | [**BlobInventoryPolicyDefinition**](BlobInventoryPolicyDefinition.md) |  |  |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::BlobInventoryPolicyRule.new(
  enabled: null,
  name: null,
  destination: null,
  definition: null
)
```

