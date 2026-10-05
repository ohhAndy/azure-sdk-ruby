# AzureRest::EncryptionScopeKeyVaultProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key_uri** | **String** | The object identifier for a key vault key object. When applied, the encryption scope will use the key referenced by the identifier to enable customer-managed key support on this encryption scope. | [optional] |
| **current_versioned_key_identifier** | **String** | The object identifier of the current versioned Key Vault Key in use. | [optional][readonly] |
| **last_key_rotation_timestamp** | **Time** | Timestamp of last rotation of the Key Vault Key. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::EncryptionScopeKeyVaultProperties.new(
  key_uri: null,
  current_versioned_key_identifier: null,
  last_key_rotation_timestamp: null
)
```

