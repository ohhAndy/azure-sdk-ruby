# AzureRest::EncryptionScopeProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source** | [**EncryptionScopeSource**](EncryptionScopeSource.md) |  | [optional] |
| **state** | [**EncryptionScopeState**](EncryptionScopeState.md) |  | [optional] |
| **creation_time** | **Time** | Gets the creation date and time of the encryption scope in UTC. | [optional][readonly] |
| **last_modified_time** | **Time** | Gets the last modification date and time of the encryption scope in UTC. | [optional][readonly] |
| **key_vault_properties** | [**EncryptionScopeKeyVaultProperties**](EncryptionScopeKeyVaultProperties.md) |  | [optional] |
| **require_infrastructure_encryption** | **Boolean** | A boolean indicating whether or not the service applies a secondary layer of encryption with platform managed keys for data at rest. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::EncryptionScopeProperties.new(
  source: null,
  state: null,
  creation_time: null,
  last_modified_time: null,
  key_vault_properties: null,
  require_infrastructure_encryption: null
)
```

