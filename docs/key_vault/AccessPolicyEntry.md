# AzureRest::AccessPolicyEntry

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_id** | **String** | Universally Unique Identifier |  |
| **object_id** | **String** | The object ID of a user, service principal or security group in the Azure Active Directory tenant for the vault. The object ID must be unique for the list of access policies. |  |
| **application_id** | **String** | Universally Unique Identifier | [optional] |
| **permissions** | [**Permissions**](Permissions.md) |  |  |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::AccessPolicyEntry.new(
  tenant_id: null,
  object_id: null,
  application_id: null,
  permissions: null
)
```

