# AzureSDK::IstioPluginCertificateAuthority

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key_vault_id** | **String** | The resource ID of the Key Vault. | [optional] |
| **cert_object_name** | **String** | Intermediate certificate object name in Azure Key Vault. | [optional] |
| **key_object_name** | **String** | Intermediate certificate private key object name in Azure Key Vault. | [optional] |
| **root_cert_object_name** | **String** | Root certificate object name in Azure Key Vault. | [optional] |
| **cert_chain_object_name** | **String** | Certificate chain object name in Azure Key Vault. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::IstioPluginCertificateAuthority.new(
  key_vault_id: null,
  cert_object_name: null,
  key_object_name: null,
  root_cert_object_name: null,
  cert_chain_object_name: null
)
```

