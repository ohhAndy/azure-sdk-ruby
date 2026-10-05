# AzureRest::VirtualMachineScaleSetReimageParameters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **temp_disk** | **Boolean** | Specifies whether to reimage temp disk. Default value: false. Note: This temp disk reimage parameter is only supported for VM/VMSS with Ephemeral OS disk. | [optional] |
| **exact_version** | **String** | Specifies in decimal number, the version the OS disk should be reimaged to. If exact version is not provided, the OS disk is reimaged to the existing version of OS Disk. | [optional] |
| **os_profile** | [**OSProfileProvisioningData**](OSProfileProvisioningData.md) |  | [optional] |
| **force_update_os_disk_for_ephemeral** | **Boolean** | Parameter to force update ephemeral OS disk for a virtual machine scale set VM | [optional] |
| **instance_ids** | **Array&lt;String&gt;** | The virtual machine scale set instance ids. Omitting the virtual machine scale set instance ids will result in the operation being performed on all virtual machines in the virtual machine scale set. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualMachineScaleSetReimageParameters.new(
  temp_disk: null,
  exact_version: null,
  os_profile: null,
  force_update_os_disk_for_ephemeral: null,
  instance_ids: null
)
```

