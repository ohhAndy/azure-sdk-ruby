# AzureSDK::BackupAndExportRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **backup_settings** | [**BackupSettings**](BackupSettings.md) |  |  |
| **target_details** | [**BackupStoreDetails**](BackupStoreDetails.md) |  |  |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::BackupAndExportRequest.new(
  backup_settings: null,
  target_details: null
)
```

