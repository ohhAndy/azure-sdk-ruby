# AzureSDK::VaultSecretGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_vault** | [**SubResource**](SubResource.md) |  | [optional] |
| **vault_certificates** | [**Array&lt;VaultCertificate&gt;**](VaultCertificate.md) | The list of key vault references in SourceVault which contain certificates. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VaultSecretGroup.new(
  source_vault: null,
  vault_certificates: null
)
```

