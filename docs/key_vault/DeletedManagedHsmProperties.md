# AzureSDK::DeletedManagedHsmProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mhsm_id** | **String** | The resource id of the original managed HSM. | [optional][readonly] |
| **location** | **String** | The location of the original managed HSM. | [optional][readonly] |
| **deletion_date** | **Time** | The deleted date. | [optional][readonly] |
| **scheduled_purge_date** | **Time** | The scheduled purged date. | [optional][readonly] |
| **purge_protection_enabled** | **Boolean** | Purge protection status of the original managed HSM. | [optional][readonly] |
| **tags** | **Hash&lt;String, String&gt;** | Tags of the original managed HSM. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::DeletedManagedHsmProperties.new(
  mhsm_id: null,
  location: null,
  deletion_date: null,
  scheduled_purge_date: null,
  purge_protection_enabled: null,
  tags: null
)
```

