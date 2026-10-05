# AzureRest::KeyVaultKeyReference

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key_url** | **String** | The URL referencing a key encryption key in Key Vault. |  |
| **source_vault** | [**SubResource**](SubResource.md) |  |  |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::KeyVaultKeyReference.new(
  key_url: null,
  source_vault: null
)
```

