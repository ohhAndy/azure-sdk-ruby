# AzureSDK::OSDisk

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **os_type** | [**CommonOperatingSystemTypes**](CommonOperatingSystemTypes.md) |  | [optional] |
| **encryption_settings** | [**DiskEncryptionSettings**](DiskEncryptionSettings.md) |  | [optional] |
| **name** | **String** | The disk name. | [optional] |
| **vhd** | [**VirtualHardDisk**](VirtualHardDisk.md) |  | [optional] |
| **image** | [**VirtualHardDisk**](VirtualHardDisk.md) |  | [optional] |
| **caching** | [**CachingTypes**](CachingTypes.md) |  | [optional] |
| **write_accelerator_enabled** | **Boolean** | Specifies whether writeAccelerator should be enabled or disabled on the disk. | [optional] |
| **diff_disk_settings** | [**DiffDiskSettings**](DiffDiskSettings.md) |  | [optional] |
| **create_option** | [**DiskCreateOptionTypes**](DiskCreateOptionTypes.md) |  |  |
| **disk_size_gb** | **Integer** | Specifies the size of an empty data disk in gigabytes. This element can be used to overwrite the size of the disk in a virtual machine image. The property &#39;diskSizeGB&#39; is the number of bytes x 1024^3 for the disk and the value cannot be larger than 1023. | [optional] |
| **storage_fault_domain_alignment** | [**StorageFaultDomainAlignmentType**](StorageFaultDomainAlignmentType.md) |  | [optional] |
| **managed_disk** | [**ManagedDiskParameters**](ManagedDiskParameters.md) |  | [optional] |
| **delete_option** | [**DiskDeleteOptionTypes**](DiskDeleteOptionTypes.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::OSDisk.new(
  os_type: null,
  encryption_settings: null,
  name: null,
  vhd: null,
  image: null,
  caching: null,
  write_accelerator_enabled: null,
  diff_disk_settings: null,
  create_option: null,
  disk_size_gb: null,
  storage_fault_domain_alignment: null,
  managed_disk: null,
  delete_option: null
)
```

