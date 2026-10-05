# AzureRest::ServerBackupProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **backup_type** | **String** | Backup type. | [optional] |
| **completed_time** | **Time** | Backup completed time (ISO8601 format). | [optional] |
| **source** | **String** | Backup source | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ServerBackupProperties.new(
  backup_type: null,
  completed_time: null,
  source: null
)
```

