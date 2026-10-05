# AzureRest::BackupAutomaticAndOnDemandProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **backup_type** | [**BackupType**](BackupType.md) |  | [optional] |
| **completed_time** | **Time** | Time(ISO8601 format) at which the backup was completed. | [optional] |
| **source** | **String** | Source of the backup. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::BackupAutomaticAndOnDemandProperties.new(
  backup_type: null,
  completed_time: null,
  source: null
)
```

