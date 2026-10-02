# AzureSDK::VirtualMachineScaleSetUpdateOSDisk

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **caching** | [**CachingTypes**](CachingTypes.md) |  | [optional] |
| **write_accelerator_enabled** | **Boolean** | Specifies whether writeAccelerator should be enabled or disabled on the disk. | [optional] |
| **diff_disk_settings** | [**DiffDiskSettings**](DiffDiskSettings.md) |  | [optional] |
| **disk_size_gb** | **Integer** | Specifies the size of an empty data disk in gigabytes. This element can be used to overwrite the size of the disk in a virtual machine image. &lt;br&gt;&lt;br&gt; diskSizeGB is the number of bytes x 1024^3 for the disk and the value cannot be larger than 1023 | [optional] |
| **storage_fault_domain_alignment** | [**StorageFaultDomainAlignmentType**](StorageFaultDomainAlignmentType.md) |  | [optional] |
| **image** | [**VirtualHardDisk**](VirtualHardDisk.md) |  | [optional] |
| **vhd_containers** | **Array&lt;String&gt;** | The list of virtual hard disk container uris. | [optional] |
| **managed_disk** | [**VirtualMachineScaleSetManagedDiskParameters**](VirtualMachineScaleSetManagedDiskParameters.md) |  | [optional] |
| **delete_option** | [**DiskDeleteOptionTypes**](DiskDeleteOptionTypes.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VirtualMachineScaleSetUpdateOSDisk.new(
  caching: null,
  write_accelerator_enabled: null,
  diff_disk_settings: null,
  disk_size_gb: null,
  storage_fault_domain_alignment: null,
  image: null,
  vhd_containers: null,
  managed_disk: null,
  delete_option: null
)
```

