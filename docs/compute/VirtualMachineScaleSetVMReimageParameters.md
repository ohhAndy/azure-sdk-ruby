# AzureSDK::VirtualMachineScaleSetVMReimageParameters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **temp_disk** | **Boolean** | Specifies whether to reimage temp disk. Default value: false. Note: This temp disk reimage parameter is only supported for VM/VMSS with Ephemeral OS disk. | [optional] |
| **exact_version** | **String** | Specifies in decimal number, the version the OS disk should be reimaged to. If exact version is not provided, the OS disk is reimaged to the existing version of OS Disk. | [optional] |
| **os_profile** | [**OSProfileProvisioningData**](OSProfileProvisioningData.md) |  | [optional] |
| **force_update_os_disk_for_ephemeral** | **Boolean** | Parameter to force update ephemeral OS disk for a virtual machine scale set VM | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VirtualMachineScaleSetVMReimageParameters.new(
  temp_disk: null,
  exact_version: null,
  os_profile: null,
  force_update_os_disk_for_ephemeral: null
)
```

