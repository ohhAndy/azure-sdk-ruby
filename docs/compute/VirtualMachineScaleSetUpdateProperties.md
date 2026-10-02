# AzureSDK::VirtualMachineScaleSetUpdateProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **upgrade_policy** | [**UpgradePolicy**](UpgradePolicy.md) |  | [optional] |
| **automatic_repairs_policy** | [**AutomaticRepairsPolicy**](AutomaticRepairsPolicy.md) |  | [optional] |
| **virtual_machine_profile** | [**VirtualMachineScaleSetUpdateVMProfile**](VirtualMachineScaleSetUpdateVMProfile.md) |  | [optional] |
| **overprovision** | **Boolean** | Specifies whether the Virtual Machine Scale Set should be overprovisioned. | [optional] |
| **do_not_run_extensions_on_overprovisioned_vms** | **Boolean** | When Overprovision is enabled, extensions are launched only on the requested number of VMs which are finally kept. This property will hence ensure that the extensions do not run on the extra overprovisioned VMs. | [optional] |
| **single_placement_group** | **Boolean** | When true this limits the scale set to a single placement group, of max size 100 virtual machines. NOTE: If singlePlacementGroup is true, it may be modified to false. However, if singlePlacementGroup is false, it may not be modified to true. | [optional] |
| **additional_capabilities** | [**AdditionalCapabilities**](AdditionalCapabilities.md) |  | [optional] |
| **scale_in_policy** | [**ScaleInPolicy**](ScaleInPolicy.md) |  | [optional] |
| **proximity_placement_group** | [**SubResource**](SubResource.md) |  | [optional] |
| **priority_mix_policy** | [**PriorityMixPolicy**](PriorityMixPolicy.md) |  | [optional] |
| **spot_restore_policy** | [**SpotRestorePolicy**](SpotRestorePolicy.md) |  | [optional] |
| **resiliency_policy** | [**ResiliencyPolicy**](ResiliencyPolicy.md) |  | [optional] |
| **zonal_platform_fault_domain_align_mode** | [**ZonalPlatformFaultDomainAlignMode**](ZonalPlatformFaultDomainAlignMode.md) |  | [optional] |
| **sku_profile** | [**SkuProfile**](SkuProfile.md) |  | [optional] |
| **lifecycle_hooks_profile** | [**LifecycleHooksProfile**](LifecycleHooksProfile.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VirtualMachineScaleSetUpdateProperties.new(
  upgrade_policy: null,
  automatic_repairs_policy: null,
  virtual_machine_profile: null,
  overprovision: null,
  do_not_run_extensions_on_overprovisioned_vms: null,
  single_placement_group: null,
  additional_capabilities: null,
  scale_in_policy: null,
  proximity_placement_group: null,
  priority_mix_policy: null,
  spot_restore_policy: null,
  resiliency_policy: null,
  zonal_platform_fault_domain_align_mode: null,
  sku_profile: null,
  lifecycle_hooks_profile: null
)
```

