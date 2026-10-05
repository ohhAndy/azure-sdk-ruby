# AzureRest::ManagedClusterStorageProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **disk_csi_driver** | [**ManagedClusterStorageProfileDiskCSIDriver**](ManagedClusterStorageProfileDiskCSIDriver.md) |  | [optional] |
| **file_csi_driver** | [**ManagedClusterStorageProfileFileCSIDriver**](ManagedClusterStorageProfileFileCSIDriver.md) |  | [optional] |
| **snapshot_controller** | [**ManagedClusterStorageProfileSnapshotController**](ManagedClusterStorageProfileSnapshotController.md) |  | [optional] |
| **blob_csi_driver** | [**ManagedClusterStorageProfileBlobCSIDriver**](ManagedClusterStorageProfileBlobCSIDriver.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ManagedClusterStorageProfile.new(
  disk_csi_driver: null,
  file_csi_driver: null,
  snapshot_controller: null,
  blob_csi_driver: null
)
```

