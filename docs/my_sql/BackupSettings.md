# AzureRest::BackupSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **backup_name** | **String** | The name of the backup. |  |
| **backup_format** | [**BackupFormat**](BackupFormat.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::BackupSettings.new(
  backup_name: null,
  backup_format: null
)
```

