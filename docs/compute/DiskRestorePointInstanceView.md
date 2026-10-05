# AzureRest::DiskRestorePointInstanceView

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Disk restore point Id. | [optional] |
| **snapshot_access_state** | [**CommonSnapshotAccessState**](CommonSnapshotAccessState.md) |  | [optional] |
| **replication_status** | [**DiskRestorePointReplicationStatus**](DiskRestorePointReplicationStatus.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::DiskRestorePointInstanceView.new(
  id: null,
  snapshot_access_state: null,
  replication_status: null
)
```

