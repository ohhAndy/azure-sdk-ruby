# AzureRest::VirtualMachineScaleSetVMInstanceView

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform_update_domain** | **Integer** | The Update Domain count. | [optional] |
| **platform_fault_domain** | **Integer** | The Fault Domain count. | [optional] |
| **rdp_thumb_print** | **String** | The Remote desktop certificate thumbprint. | [optional] |
| **vm_agent** | [**VirtualMachineAgentInstanceView**](VirtualMachineAgentInstanceView.md) |  | [optional] |
| **maintenance_redeploy_status** | [**MaintenanceRedeployStatus**](MaintenanceRedeployStatus.md) |  | [optional] |
| **disks** | [**Array&lt;DiskInstanceView&gt;**](DiskInstanceView.md) | The disks information. | [optional] |
| **extensions** | [**Array&lt;VirtualMachineExtensionInstanceView&gt;**](VirtualMachineExtensionInstanceView.md) | The extensions information. | [optional] |
| **vm_health** | [**VirtualMachineHealthStatus**](VirtualMachineHealthStatus.md) |  | [optional] |
| **boot_diagnostics** | [**BootDiagnosticsInstanceView**](BootDiagnosticsInstanceView.md) |  | [optional] |
| **statuses** | [**Array&lt;InstanceViewStatus&gt;**](InstanceViewStatus.md) | The resource status information. | [optional] |
| **assigned_host** | **String** | Resource id of the dedicated host, on which the virtual machine is allocated through automatic placement, when the virtual machine is associated with a dedicated host group that has automatic placement enabled. Minimum api-version: 2020-06-01. | [optional][readonly] |
| **placement_group_id** | **String** | The placement group in which the VM is running. If the VM is deallocated it will not have a placementGroupId. | [optional] |
| **computer_name** | **String** | Specifies the host OS name of the virtual machine. &lt;br&gt;&lt;br&gt; This name cannot be updated after the VM is created. &lt;br&gt;&lt;br&gt; **Max-length (Windows):** 15 characters &lt;br&gt;&lt;br&gt; **Max-length (Linux):** 64 characters. &lt;br&gt;&lt;br&gt; For naming conventions and restrictions see [Azure infrastructure services implementation guidelines](https://learn.microsoft.com/previous-versions/azure/virtual-machines/linux/infrastructure-example?toc&#x3D;%2Fazure%2Fvirtual-machines%2Flinux%2Ftoc.json#1-naming-conventions). | [optional] |
| **os_name** | **String** | The Operating System running on the hybrid machine. | [optional] |
| **os_version** | **String** | The version of Operating System running on the hybrid machine. | [optional] |
| **hyper_v_generation** | [**CommonHyperVGeneration**](CommonHyperVGeneration.md) |  | [optional] |
| **interconnect_instance_view** | [**InterconnectInstanceView**](InterconnectInstanceView.md) |  | [optional] |
| **capacity_reservation_type** | [**CapacityReservationType**](CapacityReservationType.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualMachineScaleSetVMInstanceView.new(
  platform_update_domain: null,
  platform_fault_domain: null,
  rdp_thumb_print: null,
  vm_agent: null,
  maintenance_redeploy_status: null,
  disks: null,
  extensions: null,
  vm_health: null,
  boot_diagnostics: null,
  statuses: null,
  assigned_host: null,
  placement_group_id: null,
  computer_name: null,
  os_name: null,
  os_version: null,
  hyper_v_generation: null,
  interconnect_instance_view: null,
  capacity_reservation_type: null
)
```

