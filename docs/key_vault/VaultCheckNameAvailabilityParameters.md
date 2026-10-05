# AzureRest::VaultCheckNameAvailabilityParameters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The vault name. |  |
| **type** | **String** | The type of resource, Microsoft.KeyVault/vaults |  |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VaultCheckNameAvailabilityParameters.new(
  name: null,
  type: null
)
```

