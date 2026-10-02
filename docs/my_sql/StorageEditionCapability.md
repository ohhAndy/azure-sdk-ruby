# AzureSDK::StorageEditionCapability

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | storage edition name | [optional][readonly] |
| **min_storage_size** | **Integer** | The minimal supported storage size. | [optional][readonly] |
| **max_storage_size** | **Integer** | The maximum supported storage size. | [optional][readonly] |
| **min_backup_retention_days** | **Integer** | Minimal backup retention days | [optional][readonly] |
| **max_backup_retention_days** | **Integer** | Maximum backup retention days | [optional][readonly] |
| **min_backup_interval_hours** | **Integer** | Minimal backup interval hours | [optional][readonly] |
| **max_backup_interval_hours** | **Integer** | Maximum backup interval hours | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::StorageEditionCapability.new(
  name: null,
  min_storage_size: null,
  max_storage_size: null,
  min_backup_retention_days: null,
  max_backup_retention_days: null,
  min_backup_interval_hours: null,
  max_backup_interval_hours: null
)
```

