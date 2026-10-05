# AzureRest::VirtualMachineScaleSetDataDisk

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The disk name. | [optional] |
| **lun** | **Integer** | Specifies the logical unit number of the data disk. This value is used to identify data disks within the VM and therefore must be unique for each data disk attached to a VM. |  |
| **caching** | [**CachingTypes**](CachingTypes.md) |  | [optional] |
| **write_accelerator_enabled** | **Boolean** | Specifies whether writeAccelerator should be enabled or disabled on the disk. | [optional] |
| **create_option** | [**DiskCreateOptionTypes**](DiskCreateOptionTypes.md) |  |  |
| **disk_size_gb** | **Integer** | Specifies the size of an empty data disk in gigabytes. This element can be used to overwrite the size of the disk in a virtual machine image. The property diskSizeGB is the number of bytes x 1024^3 for the disk and the value cannot be larger than 1023. | [optional] |
| **storage_fault_domain_alignment** | [**StorageFaultDomainAlignmentType**](StorageFaultDomainAlignmentType.md) |  | [optional] |
| **managed_disk** | [**VirtualMachineScaleSetManagedDiskParameters**](VirtualMachineScaleSetManagedDiskParameters.md) |  | [optional] |
| **disk_iops_read_write** | **Integer** | Specifies the Read-Write IOPS for the managed disk. Should be used only when StorageAccountType is UltraSSD_LRS. If not specified, a default value would be assigned based on diskSizeGB. | [optional] |
| **disk_m_bps_read_write** | **Integer** | Specifies the bandwidth in MB per second for the managed disk. Should be used only when StorageAccountType is UltraSSD_LRS. If not specified, a default value would be assigned based on diskSizeGB. | [optional] |
| **delete_option** | [**DiskDeleteOptionTypes**](DiskDeleteOptionTypes.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualMachineScaleSetDataDisk.new(
  name: null,
  lun: null,
  caching: null,
  write_accelerator_enabled: null,
  create_option: null,
  disk_size_gb: null,
  storage_fault_domain_alignment: null,
  managed_disk: null,
  disk_iops_read_write: null,
  disk_m_bps_read_write: null,
  delete_option: null
)
```

