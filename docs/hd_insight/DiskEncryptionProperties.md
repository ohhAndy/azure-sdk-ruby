# AzureSDK::DiskEncryptionProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vault_uri** | **String** | Base key vault URI where the customers key is located eg. https://myvault.vault.azure.net | [optional] |
| **key_name** | **String** | Key name that is used for enabling disk encryption. | [optional] |
| **key_version** | **String** | Specific key version that is used for enabling disk encryption. | [optional] |
| **encryption_algorithm** | **String** | Algorithm identifier for encryption, default RSA-OAEP. | [optional] |
| **msi_resource_id** | **String** | Resource ID of Managed Identity that is used to access the key vault. | [optional] |
| **encryption_at_host** | **Boolean** | Indicates whether or not resource disk encryption is enabled. | [optional][default to false] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::DiskEncryptionProperties.new(
  vault_uri: null,
  key_name: null,
  key_version: null,
  encryption_algorithm: null,
  msi_resource_id: null,
  encryption_at_host: null
)
```

