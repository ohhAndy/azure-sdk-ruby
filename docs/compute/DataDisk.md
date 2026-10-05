# AzureRest::DataDisk

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lun** | **Integer** | Specifies the logical unit number of the data disk. This value is used to identify data disks within the VM and therefore must be unique for each data disk attached to a VM. |  |
| **name** | **String** | The disk name. | [optional] |
| **vhd** | [**VirtualHardDisk**](VirtualHardDisk.md) |  | [optional] |
| **image** | [**VirtualHardDisk**](VirtualHardDisk.md) |  | [optional] |
| **caching** | [**CachingTypes**](CachingTypes.md) |  | [optional] |
| **write_accelerator_enabled** | **Boolean** | Specifies whether writeAccelerator should be enabled or disabled on the disk. | [optional] |
| **create_option** | [**DiskCreateOptionTypes**](DiskCreateOptionTypes.md) |  |  |
| **disk_size_gb** | **Integer** | Specifies the size of an empty data disk in gigabytes. This element can be used to overwrite the size of the disk in a virtual machine image. The property &#39;diskSizeGB&#39; is the number of bytes x 1024^3 for the disk and the value cannot be larger than 1023. | [optional] |
| **storage_fault_domain_alignment** | [**StorageFaultDomainAlignmentType**](StorageFaultDomainAlignmentType.md) |  | [optional] |
| **managed_disk** | [**ManagedDiskParameters**](ManagedDiskParameters.md) |  | [optional] |
| **source_resource** | [**ApiEntityReference**](ApiEntityReference.md) |  | [optional] |
| **to_be_detached** | **Boolean** | Specifies whether the data disk is in process of detachment from the VirtualMachine/VirtualMachineScaleset | [optional] |
| **disk_iops_read_write** | **Integer** | Specifies the Read-Write IOPS for the managed disk when StorageAccountType is UltraSSD_LRS. | [optional] |
| **disk_m_bps_read_write** | **Integer** | Specifies the bandwidth in MB per second for the managed disk when StorageAccountType is UltraSSD_LRS. | [optional] |
| **detach_option** | [**DiskDetachOptionTypes**](DiskDetachOptionTypes.md) |  | [optional] |
| **delete_option** | [**DiskDeleteOptionTypes**](DiskDeleteOptionTypes.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::DataDisk.new(
  lun: null,
  name: null,
  vhd: null,
  image: null,
  caching: null,
  write_accelerator_enabled: null,
  create_option: null,
  disk_size_gb: null,
  storage_fault_domain_alignment: null,
  managed_disk: null,
  source_resource: null,
  to_be_detached: null,
  disk_iops_read_write: null,
  disk_m_bps_read_write: null,
  detach_option: null,
  delete_option: null
)
```

