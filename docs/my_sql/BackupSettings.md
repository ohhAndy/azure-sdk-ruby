# AzureSDK::BackupSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **backup_name** | **String** | The name of the backup. |  |
| **backup_format** | [**BackupFormat**](BackupFormat.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::BackupSettings.new(
  backup_name: null,
  backup_format: null
)
```

