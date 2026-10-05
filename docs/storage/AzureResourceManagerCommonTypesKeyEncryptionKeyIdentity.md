# AzureRest::AzureResourceManagerCommonTypesKeyEncryptionKeyIdentity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identity_type** | [**AzureResourceManagerCommonTypesKeyEncryptionKeyIdentityType**](AzureResourceManagerCommonTypesKeyEncryptionKeyIdentityType.md) |  | [optional] |
| **user_assigned_identity_resource_id** | **String** | User assigned identity to use for accessing key encryption key Url. Ex: /subscriptions/fa5fc227-a624-475e-b696-cdd604c735bc/resourceGroups/&lt;resource group&gt;/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myId. Mutually exclusive with identityType systemAssignedIdentity. | [optional] |
| **federated_client_id** | **String** | Universally Unique Identifier | [optional] |
| **delegated_identity_client_id** | **String** | Universally Unique Identifier | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::AzureResourceManagerCommonTypesKeyEncryptionKeyIdentity.new(
  identity_type: null,
  user_assigned_identity_resource_id: null,
  federated_client_id: null,
  delegated_identity_client_id: null
)
```

