# AzureRest::DiskEncryptionSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **disk_encryption_key** | [**KeyVaultSecretReference**](KeyVaultSecretReference.md) |  | [optional] |
| **key_encryption_key** | [**KeyVaultKeyReference**](KeyVaultKeyReference.md) |  | [optional] |
| **enabled** | **Boolean** | Specifies whether disk encryption should be enabled on the virtual machine. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::DiskEncryptionSettings.new(
  disk_encryption_key: null,
  key_encryption_key: null,
  enabled: null
)
```

