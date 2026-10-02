# AzureSDK::VirtualMachineInstanceView

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform_update_domain** | **Integer** | Specifies the update domain of the virtual machine. | [optional] |
| **platform_fault_domain** | **Integer** | Specifies the fault domain of the virtual machine. | [optional] |
| **computer_name** | **String** | The computer name assigned to the virtual machine. | [optional] |
| **os_name** | **String** | The Operating System running on the virtual machine. | [optional] |
| **os_version** | **String** | The version of Operating System running on the virtual machine. | [optional] |
| **hyper_v_generation** | [**HyperVGenerationType**](HyperVGenerationType.md) |  | [optional] |
| **rdp_thumb_print** | **String** | The Remote desktop certificate thumbprint. | [optional] |
| **vm_agent** | [**VirtualMachineAgentInstanceView**](VirtualMachineAgentInstanceView.md) |  | [optional] |
| **maintenance_redeploy_status** | [**MaintenanceRedeployStatus**](MaintenanceRedeployStatus.md) |  | [optional] |
| **disks** | [**Array&lt;DiskInstanceView&gt;**](DiskInstanceView.md) | The virtual machine disk information. | [optional] |
| **extensions** | [**Array&lt;VirtualMachineExtensionInstanceView&gt;**](VirtualMachineExtensionInstanceView.md) | The extensions information. | [optional] |
| **vm_health** | [**VirtualMachineHealthStatus**](VirtualMachineHealthStatus.md) |  | [optional] |
| **boot_diagnostics** | [**BootDiagnosticsInstanceView**](BootDiagnosticsInstanceView.md) |  | [optional] |
| **assigned_host** | **String** | Resource id of the dedicated host, on which the virtual machine is allocated through automatic placement, when the virtual machine is associated with a dedicated host group that has automatic placement enabled. Minimum api-version: 2020-06-01. | [optional][readonly] |
| **statuses** | [**Array&lt;InstanceViewStatus&gt;**](InstanceViewStatus.md) | The resource status information. | [optional] |
| **patch_status** | [**VirtualMachinePatchStatus**](VirtualMachinePatchStatus.md) |  | [optional] |
| **is_vmin_standby_pool** | **Boolean** | [Preview Feature] Specifies whether the VM is currently in or out of the Standby Pool. | [optional][readonly] |
| **interconnect_instance_view** | [**InterconnectInstanceView**](InterconnectInstanceView.md) |  | [optional] |
| **capacity_reservation_type** | [**CapacityReservationType**](CapacityReservationType.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VirtualMachineInstanceView.new(
  platform_update_domain: null,
  platform_fault_domain: null,
  computer_name: null,
  os_name: null,
  os_version: null,
  hyper_v_generation: null,
  rdp_thumb_print: null,
  vm_agent: null,
  maintenance_redeploy_status: null,
  disks: null,
  extensions: null,
  vm_health: null,
  boot_diagnostics: null,
  assigned_host: null,
  statuses: null,
  patch_status: null,
  is_vmin_standby_pool: null,
  interconnect_instance_view: null,
  capacity_reservation_type: null
)
```

