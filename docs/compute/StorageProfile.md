# AzureSDK::StorageProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **image_reference** | [**ImageReference**](ImageReference.md) |  | [optional] |
| **os_disk** | [**OSDisk**](OSDisk.md) |  | [optional] |
| **data_disks** | [**Array&lt;DataDisk&gt;**](DataDisk.md) | Specifies the parameters that are used to add a data disk to a virtual machine. For more information about disks, see [About disks and VHDs for Azure virtual machines](https://docs.microsoft.com/azure/virtual-machines/managed-disks-overview). | [optional] |
| **disk_controller_type** | [**DiskControllerTypes**](DiskControllerTypes.md) |  | [optional] |
| **align_regional_disks_to_vm_zone** | **Boolean** | Specifies whether the regional disks should be aligned/moved to the VM zone. This is applicable only for VMs with placement property set. Please note that this change is irreversible. Minimum api-version: 2024-11-01. | [optional] |
| **disk_api_version** | [**DiskApiVersion**](DiskApiVersion.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::StorageProfile.new(
  image_reference: null,
  os_disk: null,
  data_disks: null,
  disk_controller_type: null,
  align_regional_disks_to_vm_zone: null,
  disk_api_version: null
)
```

