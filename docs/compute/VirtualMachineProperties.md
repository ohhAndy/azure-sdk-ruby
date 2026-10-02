# AzureSDK::VirtualMachineProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hardware_profile** | [**HardwareProfile**](HardwareProfile.md) |  | [optional] |
| **scheduled_events_policy** | [**ScheduledEventsPolicy**](ScheduledEventsPolicy.md) |  | [optional] |
| **storage_profile** | [**StorageProfile**](StorageProfile.md) |  | [optional] |
| **additional_capabilities** | [**AdditionalCapabilities**](AdditionalCapabilities.md) |  | [optional] |
| **os_profile** | [**OSProfile**](OSProfile.md) |  | [optional] |
| **network_profile** | [**NetworkProfile**](NetworkProfile.md) |  | [optional] |
| **security_profile** | [**SecurityProfile**](SecurityProfile.md) |  | [optional] |
| **diagnostics_profile** | [**DiagnosticsProfile**](DiagnosticsProfile.md) |  | [optional] |
| **availability_set** | [**SubResource**](SubResource.md) |  | [optional] |
| **virtual_machine_scale_set** | [**SubResource**](SubResource.md) |  | [optional] |
| **proximity_placement_group** | [**SubResource**](SubResource.md) |  | [optional] |
| **priority** | [**VirtualMachinePriorityTypes**](VirtualMachinePriorityTypes.md) |  | [optional] |
| **eviction_policy** | [**VirtualMachineEvictionPolicyTypes**](VirtualMachineEvictionPolicyTypes.md) |  | [optional] |
| **billing_profile** | [**BillingProfile**](BillingProfile.md) |  | [optional] |
| **host** | [**SubResource**](SubResource.md) |  | [optional] |
| **host_group** | [**SubResource**](SubResource.md) |  | [optional] |
| **provisioning_state** | **String** | The provisioning state, which only appears in the response. | [optional][readonly] |
| **instance_view** | [**VirtualMachineInstanceView**](VirtualMachineInstanceView.md) |  | [optional] |
| **license_type** | **String** | Specifies that the image or disk that is being used was licensed on-premises. &lt;br&gt;&lt;br&gt; Possible values for Windows Server operating system are: &lt;br&gt;&lt;br&gt; Windows_Client &lt;br&gt;&lt;br&gt; Windows_Server &lt;br&gt;&lt;br&gt; Possible values for Linux Server operating system are: &lt;br&gt;&lt;br&gt; RHEL_BYOS (for RHEL) &lt;br&gt;&lt;br&gt; SLES_BYOS (for SUSE) &lt;br&gt;&lt;br&gt; For more information, see [Azure Hybrid Use Benefit for Windows Server](https://docs.microsoft.com/azure/virtual-machines/windows/hybrid-use-benefit-licensing) &lt;br&gt;&lt;br&gt; [Azure Hybrid Use Benefit for Linux Server](https://docs.microsoft.com/azure/virtual-machines/linux/azure-hybrid-benefit-linux) &lt;br&gt;&lt;br&gt; Minimum api-version: 2015-06-15 | [optional] |
| **vm_id** | **String** | Specifies the VM unique ID which is a 128-bits identifier that is encoded and stored in all Azure IaaS VMs SMBIOS and can be read using platform BIOS commands. | [optional][readonly] |
| **extensions_time_budget** | **String** | Specifies the time alloted for all extensions to start. The time duration should be between 15 minutes and 120 minutes (inclusive) and should be specified in ISO 8601 format. The default value is 90 minutes (PT1H30M). Minimum api-version: 2020-06-01. | [optional] |
| **platform_fault_domain** | **Integer** | Specifies the scale set logical fault domain into which the Virtual Machine will be created. By default, the Virtual Machine will by automatically assigned to a fault domain that best maintains balance across available fault domains. This is applicable only if the &#39;virtualMachineScaleSet&#39; property of this Virtual Machine is set. The Virtual Machine Scale Set that is referenced, must have &#39;platformFaultDomainCount&#39; greater than 1. This property cannot be updated once the Virtual Machine is created. Fault domain assignment can be viewed in the Virtual Machine Instance View. Minimum api‐version: 2020‐12‐01. | [optional] |
| **scheduled_events_profile** | [**ScheduledEventsProfile**](ScheduledEventsProfile.md) |  | [optional] |
| **user_data** | **String** | UserData for the VM, which must be base-64 encoded. Customer should not pass any secrets in here. Minimum api-version: 2021-03-01. | [optional] |
| **capacity_reservation** | [**CapacityReservationProfile**](CapacityReservationProfile.md) |  | [optional] |
| **interconnect_block_profile** | [**InterconnectBlockProfile**](InterconnectBlockProfile.md) |  | [optional] |
| **application_profile** | [**ApplicationProfile**](ApplicationProfile.md) |  | [optional] |
| **time_created** | **Time** | Specifies the time at which the Virtual Machine resource was created. Minimum api-version: 2021-11-01. | [optional][readonly] |
| **resiliency_profile** | [**ResiliencyProfile**](ResiliencyProfile.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VirtualMachineProperties.new(
  hardware_profile: null,
  scheduled_events_policy: null,
  storage_profile: null,
  additional_capabilities: null,
  os_profile: null,
  network_profile: null,
  security_profile: null,
  diagnostics_profile: null,
  availability_set: null,
  virtual_machine_scale_set: null,
  proximity_placement_group: null,
  priority: null,
  eviction_policy: null,
  billing_profile: null,
  host: null,
  host_group: null,
  provisioning_state: null,
  instance_view: null,
  license_type: null,
  vm_id: null,
  extensions_time_budget: null,
  platform_fault_domain: null,
  scheduled_events_profile: null,
  user_data: null,
  capacity_reservation: null,
  interconnect_block_profile: null,
  application_profile: null,
  time_created: null,
  resiliency_profile: null
)
```

