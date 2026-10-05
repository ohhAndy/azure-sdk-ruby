# AzureRest::RestorePointSourceVMOSDisk

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **os_type** | [**OperatingSystemType**](OperatingSystemType.md) |  | [optional] |
| **encryption_settings** | [**DiskEncryptionSettings**](DiskEncryptionSettings.md) |  | [optional] |
| **name** | **String** | Gets the disk name. | [optional][readonly] |
| **caching** | [**CachingTypes**](CachingTypes.md) |  | [optional] |
| **disk_size_gb** | **Integer** | Gets the disk size in GB. | [optional][readonly] |
| **managed_disk** | [**ManagedDiskParameters**](ManagedDiskParameters.md) |  | [optional] |
| **disk_restore_point** | [**DiskRestorePointAttributes**](DiskRestorePointAttributes.md) |  | [optional] |
| **write_accelerator_enabled** | **Boolean** | Shows true if the disk is write-accelerator enabled. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::RestorePointSourceVMOSDisk.new(
  os_type: null,
  encryption_settings: null,
  name: null,
  caching: null,
  disk_size_gb: null,
  managed_disk: null,
  disk_restore_point: null,
  write_accelerator_enabled: null
)
```

