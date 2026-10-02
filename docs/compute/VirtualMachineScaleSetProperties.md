# AzureSDK::VirtualMachineScaleSetProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **upgrade_policy** | [**UpgradePolicy**](UpgradePolicy.md) |  | [optional] |
| **scheduled_events_policy** | [**ScheduledEventsPolicy**](ScheduledEventsPolicy.md) |  | [optional] |
| **automatic_repairs_policy** | [**AutomaticRepairsPolicy**](AutomaticRepairsPolicy.md) |  | [optional] |
| **virtual_machine_profile** | [**VirtualMachineScaleSetVMProfile**](VirtualMachineScaleSetVMProfile.md) |  | [optional] |
| **provisioning_state** | **String** | The provisioning state, which only appears in the response. | [optional][readonly] |
| **overprovision** | **Boolean** | Specifies whether the Virtual Machine Scale Set should be overprovisioned. | [optional] |
| **do_not_run_extensions_on_overprovisioned_vms** | **Boolean** | When Overprovision is enabled, extensions are launched only on the requested number of VMs which are finally kept. This property will hence ensure that the extensions do not run on the extra overprovisioned VMs. | [optional] |
| **unique_id** | **String** | Specifies the ID which uniquely identifies a Virtual Machine Scale Set. | [optional][readonly] |
| **single_placement_group** | **Boolean** | When true this limits the scale set to a single placement group, of max size 100 virtual machines. NOTE: If singlePlacementGroup is true, it may be modified to false. However, if singlePlacementGroup is false, it may not be modified to true. | [optional] |
| **zone_balance** | **Boolean** | Whether to force strictly even Virtual Machine distribution cross x-zones in case there is zone outage. zoneBalance property can only be set if the zones property of the scale set contains more than one zone. If there are no zones or only one zone specified, then zoneBalance property should not be set. | [optional] |
| **platform_fault_domain_count** | **Integer** | Fault Domain count for each placement group. | [optional] |
| **proximity_placement_group** | [**SubResource**](SubResource.md) |  | [optional] |
| **host_group** | [**SubResource**](SubResource.md) |  | [optional] |
| **additional_capabilities** | [**AdditionalCapabilities**](AdditionalCapabilities.md) |  | [optional] |
| **scale_in_policy** | [**ScaleInPolicy**](ScaleInPolicy.md) |  | [optional] |
| **orchestration_mode** | [**OrchestrationMode**](OrchestrationMode.md) |  | [optional] |
| **spot_restore_policy** | [**SpotRestorePolicy**](SpotRestorePolicy.md) |  | [optional] |
| **priority_mix_policy** | [**PriorityMixPolicy**](PriorityMixPolicy.md) |  | [optional] |
| **time_created** | **Time** | Specifies the time at which the Virtual Machine Scale Set resource was created. Minimum api-version: 2021-11-01. | [optional][readonly] |
| **constrained_maximum_capacity** | **Boolean** | Optional property which must either be set to True or omitted. | [optional] |
| **resiliency_policy** | [**ResiliencyPolicy**](ResiliencyPolicy.md) |  | [optional] |
| **zonal_platform_fault_domain_align_mode** | [**ZonalPlatformFaultDomainAlignMode**](ZonalPlatformFaultDomainAlignMode.md) |  | [optional] |
| **sku_profile** | [**SkuProfile**](SkuProfile.md) |  | [optional] |
| **high_speed_interconnect_placement** | [**HighSpeedInterconnectPlacement**](HighSpeedInterconnectPlacement.md) |  | [optional] |
| **lifecycle_hooks_profile** | [**LifecycleHooksProfile**](LifecycleHooksProfile.md) |  | [optional] |
| **external_health_policy** | [**ExternalHealthPolicy**](ExternalHealthPolicy.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VirtualMachineScaleSetProperties.new(
  upgrade_policy: null,
  scheduled_events_policy: null,
  automatic_repairs_policy: null,
  virtual_machine_profile: null,
  provisioning_state: null,
  overprovision: null,
  do_not_run_extensions_on_overprovisioned_vms: null,
  unique_id: null,
  single_placement_group: null,
  zone_balance: null,
  platform_fault_domain_count: null,
  proximity_placement_group: null,
  host_group: null,
  additional_capabilities: null,
  scale_in_policy: null,
  orchestration_mode: null,
  spot_restore_policy: null,
  priority_mix_policy: null,
  time_created: null,
  constrained_maximum_capacity: null,
  resiliency_policy: null,
  zonal_platform_fault_domain_align_mode: null,
  sku_profile: null,
  high_speed_interconnect_placement: null,
  lifecycle_hooks_profile: null,
  external_health_policy: null
)
```

