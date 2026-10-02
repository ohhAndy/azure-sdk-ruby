# AzureSDK::DiskRestorePointReplicationStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | [**InstanceViewStatus**](InstanceViewStatus.md) |  | [optional] |
| **completion_percent** | **Integer** | Replication completion percentage. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::DiskRestorePointReplicationStatus.new(
  status: null,
  completion_percent: null
)
```

