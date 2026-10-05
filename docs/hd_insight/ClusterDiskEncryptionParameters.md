# AzureRest::ClusterDiskEncryptionParameters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vault_uri** | **String** | Base key vault URI where the customers key is located eg. https://myvault.vault.azure.net | [optional] |
| **key_name** | **String** | Key name that is used for enabling disk encryption. | [optional] |
| **key_version** | **String** | Specific key version that is used for enabling disk encryption. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ClusterDiskEncryptionParameters.new(
  vault_uri: null,
  key_name: null,
  key_version: null
)
```

