# AzureSDK::AzureResourceManagerCommonTypesCustomerManagedKeyEncryption

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key_encryption_key_identity** | [**AzureResourceManagerCommonTypesKeyEncryptionKeyIdentity**](AzureResourceManagerCommonTypesKeyEncryptionKeyIdentity.md) |  | [optional] |
| **key_encryption_key_url** | **String** | key encryption key Url, versioned or non-versioned. Ex: https://contosovault.vault.azure.net/keys/contosokek/562a4bb76b524a1493a6afe8e536ee78 or https://contosovault.vault.azure.net/keys/contosokek. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::AzureResourceManagerCommonTypesCustomerManagedKeyEncryption.new(
  key_encryption_key_identity: null,
  key_encryption_key_url: null
)
```

