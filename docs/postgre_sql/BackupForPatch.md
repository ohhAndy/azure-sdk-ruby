# AzureRest::BackupForPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **backup_retention_days** | **Integer** | Backup retention days for the server. | [optional] |
| **geo_redundant_backup** | [**GeographicallyRedundantBackup**](GeographicallyRedundantBackup.md) |  | [optional] |
| **earliest_restore_date** | **Time** | Earliest restore point time (ISO8601 format) for a server. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::BackupForPatch.new(
  backup_retention_days: null,
  geo_redundant_backup: null,
  earliest_restore_date: null
)
```

