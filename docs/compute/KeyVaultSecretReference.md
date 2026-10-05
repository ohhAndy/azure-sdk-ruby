# AzureRest::KeyVaultSecretReference

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **secret_url** | **String** | The URL referencing a secret in a Key Vault. |  |
| **source_vault** | [**SubResource**](SubResource.md) |  |  |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::KeyVaultSecretReference.new(
  secret_url: null,
  source_vault: null
)
```

