# AzureSDK::Backup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **backup_retention_days** | **Integer** | Backup retention days for the server. | [optional] |
| **backup_interval_hours** | **Integer** | Backup interval hours for the server. | [optional] |
| **geo_redundant_backup** | **String** | Whether or not geo redundant backup is enabled. | [optional][default to &#39;Disabled&#39;] |
| **earliest_restore_date** | **Time** | Earliest restore point creation time (ISO8601 format) | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::Backup.new(
  backup_retention_days: null,
  backup_interval_hours: null,
  geo_redundant_backup: null,
  earliest_restore_date: null
)
```

