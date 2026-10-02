# AzureSDK::RestorePointSourceVMDataDisk

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lun** | **Integer** | Gets the logical unit number. | [optional][readonly] |
| **name** | **String** | Gets the disk name. | [optional][readonly] |
| **caching** | [**CachingTypes**](CachingTypes.md) |  | [optional] |
| **disk_size_gb** | **Integer** | Gets the initial disk size in GB for blank data disks, and the new desired size for existing OS and Data disks. | [optional][readonly] |
| **managed_disk** | [**ManagedDiskParameters**](ManagedDiskParameters.md) |  | [optional] |
| **disk_restore_point** | [**DiskRestorePointAttributes**](DiskRestorePointAttributes.md) |  | [optional] |
| **write_accelerator_enabled** | **Boolean** | Shows true if the disk is write-accelerator enabled. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::RestorePointSourceVMDataDisk.new(
  lun: null,
  name: null,
  caching: null,
  disk_size_gb: null,
  managed_disk: null,
  disk_restore_point: null,
  write_accelerator_enabled: null
)
```

