# AzureRest::RestorePointSourceVMStorageProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **os_disk** | [**RestorePointSourceVMOSDisk**](RestorePointSourceVMOSDisk.md) |  | [optional] |
| **data_disks** | [**Array&lt;RestorePointSourceVMDataDisk&gt;**](RestorePointSourceVMDataDisk.md) | Gets the data disks of the VM captured at the time of the restore point creation. | [optional] |
| **disk_controller_type** | [**DiskControllerTypes**](DiskControllerTypes.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::RestorePointSourceVMStorageProfile.new(
  os_disk: null,
  data_disks: null,
  disk_controller_type: null
)
```

