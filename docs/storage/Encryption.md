# AzureSDK::Encryption

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **services** | [**EncryptionServices**](EncryptionServices.md) |  | [optional] |
| **key_source** | **String** | The encryption keySource (provider). Possible values (case-insensitive):  Microsoft.Storage, Microsoft.Keyvault | [optional][default to &#39;Microsoft.Storage&#39;] |
| **require_infrastructure_encryption** | **Boolean** | A boolean indicating whether or not the service applies a secondary layer of encryption with platform managed keys for data at rest. | [optional] |
| **keyvaultproperties** | [**KeyVaultProperties**](KeyVaultProperties.md) |  | [optional] |
| **identity** | [**EncryptionIdentity**](EncryptionIdentity.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::Encryption.new(
  services: null,
  key_source: null,
  require_infrastructure_encryption: null,
  keyvaultproperties: null,
  identity: null
)
```

