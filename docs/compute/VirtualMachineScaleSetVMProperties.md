# AzureSDK::VirtualMachineScaleSetVMProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **latest_model_applied** | **Boolean** | Specifies whether the latest model has been applied to the virtual machine. | [optional][readonly] |
| **vm_id** | **String** | Azure VM unique ID. | [optional][readonly] |
| **instance_view** | [**VirtualMachineScaleSetVMInstanceView**](VirtualMachineScaleSetVMInstanceView.md) |  | [optional] |
| **hardware_profile** | [**HardwareProfile**](HardwareProfile.md) |  | [optional] |
| **resilient_vm_deletion_status** | [**ResilientVMDeletionStatus**](ResilientVMDeletionStatus.md) |  | [optional] |
| **storage_profile** | [**StorageProfile**](StorageProfile.md) |  | [optional] |
| **additional_capabilities** | [**AdditionalCapabilities**](AdditionalCapabilities.md) |  | [optional] |
| **os_profile** | [**OSProfile**](OSProfile.md) |  | [optional] |
| **security_profile** | [**SecurityProfile**](SecurityProfile.md) |  | [optional] |
| **network_profile** | [**NetworkProfile**](NetworkProfile.md) |  | [optional] |
| **network_profile_configuration** | [**VirtualMachineScaleSetVMNetworkProfileConfiguration**](VirtualMachineScaleSetVMNetworkProfileConfiguration.md) |  | [optional] |
| **diagnostics_profile** | [**DiagnosticsProfile**](DiagnosticsProfile.md) |  | [optional] |
| **availability_set** | [**SubResource**](SubResource.md) |  | [optional] |
| **provisioning_state** | **String** | The provisioning state, which only appears in the response. | [optional][readonly] |
| **license_type** | **String** | Specifies that the image or disk that is being used was licensed on-premises. &lt;br&gt;&lt;br&gt; Possible values for Windows Server operating system are: &lt;br&gt;&lt;br&gt; Windows_Client &lt;br&gt;&lt;br&gt; Windows_Server &lt;br&gt;&lt;br&gt; Possible values for Linux Server operating system are: &lt;br&gt;&lt;br&gt; RHEL_BYOS (for RHEL) &lt;br&gt;&lt;br&gt; SLES_BYOS (for SUSE) &lt;br&gt;&lt;br&gt; For more information, see [Azure Hybrid Use Benefit for Windows Server](https://docs.microsoft.com/azure/virtual-machines/windows/hybrid-use-benefit-licensing) &lt;br&gt;&lt;br&gt; [Azure Hybrid Use Benefit for Linux Server](https://docs.microsoft.com/azure/virtual-machines/linux/azure-hybrid-benefit-linux) &lt;br&gt;&lt;br&gt; Minimum api-version: 2015-06-15 | [optional] |
| **model_definition_applied** | **String** | Specifies whether the model applied to the virtual machine is the model of the virtual machine scale set or the customized model for the virtual machine. | [optional][readonly] |
| **protection_policy** | [**VirtualMachineScaleSetVMProtectionPolicy**](VirtualMachineScaleSetVMProtectionPolicy.md) |  | [optional] |
| **user_data** | **String** | UserData for the VM, which must be base-64 encoded. Customer should not pass any secrets in here. Minimum api-version: 2021-03-01 | [optional] |
| **time_created** | **Time** | Specifies the time at which the Virtual Machine resource was created. Minimum api-version: 2021-11-01. | [optional][readonly] |
| **virtual_machine_resource_id** | **String** | Specifies the ARM resource ID of the standalone virtual machine associated with this VMSS VM. This property is only applicable to Virtual Machine Scale Sets with Flexible orchestration mode. Minimum api-version: 2025-11-01. | [optional][readonly] |
| **interconnect_block_profile** | [**InterconnectBlockProfile**](InterconnectBlockProfile.md) |  | [optional] |
| **capacity_reservation** | [**CapacityReservationProfile**](CapacityReservationProfile.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VirtualMachineScaleSetVMProperties.new(
  latest_model_applied: null,
  vm_id: null,
  instance_view: null,
  hardware_profile: null,
  resilient_vm_deletion_status: null,
  storage_profile: null,
  additional_capabilities: null,
  os_profile: null,
  security_profile: null,
  network_profile: null,
  network_profile_configuration: null,
  diagnostics_profile: null,
  availability_set: null,
  provisioning_state: null,
  license_type: null,
  model_definition_applied: null,
  protection_policy: null,
  user_data: null,
  time_created: null,
  virtual_machine_resource_id: null,
  interconnect_block_profile: null,
  capacity_reservation: null
)
```

