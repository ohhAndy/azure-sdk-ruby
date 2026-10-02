# AzureSDK::VirtualMachineScaleSetUpdateStorageProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **image_reference** | [**ImageReference**](ImageReference.md) |  | [optional] |
| **os_disk** | [**VirtualMachineScaleSetUpdateOSDisk**](VirtualMachineScaleSetUpdateOSDisk.md) |  | [optional] |
| **data_disks** | [**Array&lt;VirtualMachineScaleSetDataDisk&gt;**](VirtualMachineScaleSetDataDisk.md) | The data disks. | [optional] |
| **disk_controller_type** | [**DiskControllerTypes**](DiskControllerTypes.md) |  | [optional] |
| **disk_api_version** | [**DiskApiVersion**](DiskApiVersion.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VirtualMachineScaleSetUpdateStorageProfile.new(
  image_reference: null,
  os_disk: null,
  data_disks: null,
  disk_controller_type: null,
  disk_api_version: null
)
```

