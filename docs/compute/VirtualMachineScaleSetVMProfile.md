# AzureRest::VirtualMachineScaleSetVMProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **os_profile** | [**VirtualMachineScaleSetOSProfile**](VirtualMachineScaleSetOSProfile.md) |  | [optional] |
| **storage_profile** | [**VirtualMachineScaleSetStorageProfile**](VirtualMachineScaleSetStorageProfile.md) |  | [optional] |
| **network_profile** | [**VirtualMachineScaleSetNetworkProfile**](VirtualMachineScaleSetNetworkProfile.md) |  | [optional] |
| **security_profile** | [**SecurityProfile**](SecurityProfile.md) |  | [optional] |
| **diagnostics_profile** | [**DiagnosticsProfile**](DiagnosticsProfile.md) |  | [optional] |
| **extension_profile** | [**VirtualMachineScaleSetExtensionProfile**](VirtualMachineScaleSetExtensionProfile.md) |  | [optional] |
| **license_type** | **String** | Specifies that the image or disk that is being used was licensed on-premises. &lt;br&gt;&lt;br&gt; Possible values for Windows Server operating system are: &lt;br&gt;&lt;br&gt; Windows_Client &lt;br&gt;&lt;br&gt; Windows_Server &lt;br&gt;&lt;br&gt; Possible values for Linux Server operating system are: &lt;br&gt;&lt;br&gt; RHEL_BYOS (for RHEL) &lt;br&gt;&lt;br&gt; SLES_BYOS (for SUSE) &lt;br&gt;&lt;br&gt; For more information, see [Azure Hybrid Use Benefit for Windows Server](https://docs.microsoft.com/azure/virtual-machines/windows/hybrid-use-benefit-licensing) &lt;br&gt;&lt;br&gt; [Azure Hybrid Use Benefit for Linux Server](https://docs.microsoft.com/azure/virtual-machines/linux/azure-hybrid-benefit-linux) &lt;br&gt;&lt;br&gt; Minimum api-version: 2015-06-15 | [optional] |
| **priority** | [**VirtualMachinePriorityTypes**](VirtualMachinePriorityTypes.md) |  | [optional] |
| **eviction_policy** | [**VirtualMachineEvictionPolicyTypes**](VirtualMachineEvictionPolicyTypes.md) |  | [optional] |
| **billing_profile** | [**BillingProfile**](BillingProfile.md) |  | [optional] |
| **scheduled_events_profile** | [**ScheduledEventsProfile**](ScheduledEventsProfile.md) |  | [optional] |
| **user_data** | **String** | UserData for the virtual machines in the scale set, which must be base-64 encoded. Customer should not pass any secrets in here. Minimum api-version: 2021-03-01. | [optional] |
| **capacity_reservation** | [**CapacityReservationProfile**](CapacityReservationProfile.md) |  | [optional] |
| **interconnect_block_profile** | [**InterconnectBlockProfile**](InterconnectBlockProfile.md) |  | [optional] |
| **application_profile** | [**ApplicationProfile**](ApplicationProfile.md) |  | [optional] |
| **hardware_profile** | [**VirtualMachineScaleSetHardwareProfile**](VirtualMachineScaleSetHardwareProfile.md) |  | [optional] |
| **service_artifact_reference** | [**ServiceArtifactReference**](ServiceArtifactReference.md) |  | [optional] |
| **security_posture_reference** | [**SecurityPostureReference**](SecurityPostureReference.md) |  | [optional] |
| **time_created** | **Time** | Specifies the time in which this VM profile for the Virtual Machine Scale Set was created. This value will be added to VMSS Flex VM tags when creating/updating the VMSS VM Profile. Minimum API version for this property is 2023-09-01. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualMachineScaleSetVMProfile.new(
  os_profile: null,
  storage_profile: null,
  network_profile: null,
  security_profile: null,
  diagnostics_profile: null,
  extension_profile: null,
  license_type: null,
  priority: null,
  eviction_policy: null,
  billing_profile: null,
  scheduled_events_profile: null,
  user_data: null,
  capacity_reservation: null,
  interconnect_block_profile: null,
  application_profile: null,
  hardware_profile: null,
  service_artifact_reference: null,
  security_posture_reference: null,
  time_created: null
)
```

