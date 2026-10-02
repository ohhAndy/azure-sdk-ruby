# AzureSDK::ServerBackupPropertiesV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **backup_name_v2** | **String** | Backup name | [optional] |
| **backup_type** | [**BackupType**](BackupType.md) |  | [optional] |
| **completed_time** | **Time** | Backup completed time (ISO8601 format). | [optional] |
| **source** | **String** | Backup source | [optional] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ServerBackupPropertiesV2.new(
  backup_name_v2: null,
  backup_type: null,
  completed_time: null,
  source: null,
  provisioning_state: null
)
```

