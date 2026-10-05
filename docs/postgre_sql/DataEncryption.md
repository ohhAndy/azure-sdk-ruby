# AzureRest::DataEncryption

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **primary_key_uri** | **String** | URI of the key in Azure Key Vault used for data encryption of the primary storage associated to a server. | [optional] |
| **primary_user_assigned_identity_id** | **String** | Identifier of the user assigned managed identity used to access the key in Azure Key Vault for data encryption of the primary storage associated to a server. | [optional] |
| **geo_backup_key_uri** | **String** | Identifier of the user assigned managed identity used to access the key in Azure Key Vault for data encryption of the geographically redundant storage associated to a server that is configured to support geographically redundant backups. | [optional] |
| **geo_backup_user_assigned_identity_id** | **String** | Identifier of the user assigned managed identity used to access the key in Azure Key Vault for data encryption of the geographically redundant storage associated to a server that is configured to support geographically redundant backups. | [optional] |
| **type** | [**DataEncryptionType**](DataEncryptionType.md) |  | [optional] |
| **primary_encryption_key_status** | [**EncryptionKeyStatus**](EncryptionKeyStatus.md) |  | [optional] |
| **geo_backup_encryption_key_status** | [**EncryptionKeyStatus**](EncryptionKeyStatus.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::DataEncryption.new(
  primary_key_uri: null,
  primary_user_assigned_identity_id: null,
  geo_backup_key_uri: null,
  geo_backup_user_assigned_identity_id: null,
  type: null,
  primary_encryption_key_status: null,
  geo_backup_encryption_key_status: null
)
```

