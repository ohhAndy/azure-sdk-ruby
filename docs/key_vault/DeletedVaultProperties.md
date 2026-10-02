# AzureSDK::DeletedVaultProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vault_id** | **String** | The resource id of the original vault. | [optional][readonly] |
| **location** | **String** | The location of the original vault. | [optional][readonly] |
| **deletion_date** | **Time** | The deleted date. | [optional][readonly] |
| **scheduled_purge_date** | **Time** | The scheduled purged date. | [optional][readonly] |
| **tags** | **Hash&lt;String, String&gt;** | Tags of the original vault. | [optional][readonly] |
| **purge_protection_enabled** | **Boolean** | Purge protection status of the original vault. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::DeletedVaultProperties.new(
  vault_id: null,
  location: null,
  deletion_date: null,
  scheduled_purge_date: null,
  tags: null,
  purge_protection_enabled: null
)
```

