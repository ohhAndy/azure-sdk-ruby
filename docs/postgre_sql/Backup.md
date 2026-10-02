# AzureSDK::Backup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **backup_retention_days** | **Integer** | Backup retention days for the server. | [optional][default to 7] |
| **geo_redundant_backup** | **String** | Indicates if the server is configured to create geographically redundant backups. | [optional][default to &#39;Disabled&#39;] |
| **earliest_restore_date** | **Time** | Earliest restore point time (ISO8601 format) for a server. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::Backup.new(
  backup_retention_days: null,
  geo_redundant_backup: null,
  earliest_restore_date: null
)
```

