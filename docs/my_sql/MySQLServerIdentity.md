# AzureRest::MySQLServerIdentity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **principal_id** | **String** | ObjectId from the KeyVault | [optional][readonly] |
| **tenant_id** | **String** | TenantId from the KeyVault | [optional][readonly] |
| **type** | [**ManagedServiceIdentityType**](ManagedServiceIdentityType.md) |  | [optional] |
| **user_assigned_identities** | [**Hash&lt;String, UserAssignedIdentity&gt;**](UserAssignedIdentity.md) | Metadata of user assigned identity. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::MySQLServerIdentity.new(
  principal_id: null,
  tenant_id: null,
  type: null,
  user_assigned_identities: null
)
```

