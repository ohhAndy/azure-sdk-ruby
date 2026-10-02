# AzureSDK::UserAssignedIdentity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_assigned_identities** | [**Hash&lt;String, UserIdentity&gt;**](UserIdentity.md) | Map of user assigned managed identities. | [optional] |
| **principal_id** | **String** | Identifier of the object of the service principal associated to the user assigned managed identity. | [optional] |
| **type** | [**IdentityType**](IdentityType.md) |  |  |
| **tenant_id** | **String** | Identifier of the tenant of a server. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::UserAssignedIdentity.new(
  user_assigned_identities: null,
  principal_id: null,
  type: null,
  tenant_id: null
)
```

