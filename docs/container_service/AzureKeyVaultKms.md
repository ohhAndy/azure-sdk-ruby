# AzureRest::AzureKeyVaultKms

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Whether to enable Azure Key Vault key management service. The default is false. | [optional] |
| **key_id** | **String** | The identifier of the Azure Key Vault key. For more information, see [Azure Key Vault key identifiers](https://docs.microsoft.com/en-us/azure/key-vault/general/about-keys-secrets-certificates#vault-name-and-object-name). This property is required when Azure Key Vault key management service is enabled and must be omitted when the service is disabled. Starting with API versions 2026-07-01 and 2026-07-02-preview, a versioned key identifier uses the legacy KMS experience, while an unversioned key identifier uses the new KMS experience. For more information, see [KMS data encryption concepts](https://learn.microsoft.com/en-us/azure/aks/kms-data-encryption-concepts). | [optional] |
| **key_vault_network_access** | **String** | Network access of the key vault. Network access of key vault. The possible values are &#x60;Public&#x60; and &#x60;Private&#x60;. &#x60;Public&#x60; means the key vault allows public access from all networks. &#x60;Private&#x60; means the key vault disables public access and enables private link. The default value is &#x60;Public&#x60;. | [optional][default to &#39;Public&#39;] |
| **key_vault_resource_id** | **String** | Resource ID of key vault. When keyVaultNetworkAccess is &#x60;Private&#x60;, this field is required and must be a valid resource ID. When keyVaultNetworkAccess is &#x60;Public&#x60;, leave the field empty. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::AzureKeyVaultKms.new(
  enabled: null,
  key_id: null,
  key_vault_network_access: null,
  key_vault_resource_id: null
)
```

