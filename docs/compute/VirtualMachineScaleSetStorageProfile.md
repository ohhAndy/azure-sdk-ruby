# AzureRest::VirtualMachineScaleSetStorageProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **image_reference** | [**ImageReference**](ImageReference.md) |  | [optional] |
| **os_disk** | [**VirtualMachineScaleSetOSDisk**](VirtualMachineScaleSetOSDisk.md) |  | [optional] |
| **data_disks** | [**Array&lt;VirtualMachineScaleSetDataDisk&gt;**](VirtualMachineScaleSetDataDisk.md) | Specifies the parameters that are used to add data disks to the virtual machines in the scale set. For more information about disks, see [About disks and VHDs for Azure virtual machines](https://docs.microsoft.com/azure/virtual-machines/managed-disks-overview). | [optional] |
| **disk_controller_type** | [**DiskControllerTypes**](DiskControllerTypes.md) |  | [optional] |
| **disk_api_version** | [**DiskApiVersion**](DiskApiVersion.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualMachineScaleSetStorageProfile.new(
  image_reference: null,
  os_disk: null,
  data_disks: null,
  disk_controller_type: null,
  disk_api_version: null
)
```

