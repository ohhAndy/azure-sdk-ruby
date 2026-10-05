# AzureRest::EncryptionIdentity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_assigned_identity** | **String** | Resource identifier of the UserAssigned identity to be associated with server-side encryption on the storage account. | [optional] |
| **federated_identity_client_id** | **String** | ClientId of the multi-tenant application to be used in conjunction with the user-assigned identity for cross-tenant customer-managed-keys server-side encryption on the storage account. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::EncryptionIdentity.new(
  user_assigned_identity: null,
  federated_identity_client_id: null
)
```

