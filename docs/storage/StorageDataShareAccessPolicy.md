# AzureRest::StorageDataShareAccessPolicy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **principal_id** | **String** | The AAD principal ID of the Managed Identity. |  |
| **tenant_id** | **String** | The AAD tenant ID of the Managed Identity. |  |
| **permission** | [**StorageDataShareAccessPolicyPermission**](StorageDataShareAccessPolicyPermission.md) |  |  |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::StorageDataShareAccessPolicy.new(
  principal_id: null,
  tenant_id: null,
  permission: null
)
```

