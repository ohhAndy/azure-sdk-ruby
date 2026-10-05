# AzureRest::StorageAccountMigrationProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **target_sku_name** | [**SkuName**](SkuName.md) |  |  |
| **migration_status** | [**MigrationStatus**](MigrationStatus.md) |  | [optional] |
| **migration_failed_reason** | **String** | Error code for migration failure | [optional][readonly] |
| **migration_failed_detailed_reason** | **String** | Reason for migration failure | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::StorageAccountMigrationProperties.new(
  target_sku_name: null,
  migration_status: null,
  migration_failed_reason: null,
  migration_failed_detailed_reason: null
)
```

