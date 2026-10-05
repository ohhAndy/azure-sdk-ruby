# AzureRest::KeyVaultProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **keyname** | **String** | The name of KeyVault key. | [optional] |
| **keyversion** | **String** | The version of KeyVault key. | [optional] |
| **keyvaulturi** | **String** | The Uri of KeyVault. | [optional] |
| **current_versioned_key_identifier** | **String** | The object identifier of the current versioned Key Vault Key in use. | [optional][readonly] |
| **last_key_rotation_timestamp** | **Time** | Timestamp of last rotation of the Key Vault Key. | [optional][readonly] |
| **current_versioned_key_expiration_timestamp** | **Time** | This is a read only property that represents the expiration time of the current version of the customer managed key used for encryption. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::KeyVaultProperties.new(
  keyname: null,
  keyversion: null,
  keyvaulturi: null,
  current_versioned_key_identifier: null,
  last_key_rotation_timestamp: null,
  current_versioned_key_expiration_timestamp: null
)
```

