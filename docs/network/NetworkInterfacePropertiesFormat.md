# AzureRest::NetworkInterfacePropertiesFormat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **virtual_machine** | [**SubResource**](SubResource.md) |  | [optional] |
| **network_security_group** | [**NetworkSecurityGroup**](NetworkSecurityGroup.md) |  | [optional] |
| **private_endpoint** | [**PrivateEndpoint**](PrivateEndpoint.md) |  | [optional] |
| **ip_configurations** | [**Array&lt;NetworkInterfaceIPConfiguration&gt;**](NetworkInterfaceIPConfiguration.md) | A list of IPConfigurations of the network interface. | [optional] |
| **tap_configurations** | [**Array&lt;NetworkInterfaceTapConfiguration&gt;**](NetworkInterfaceTapConfiguration.md) | A list of TapConfigurations of the network interface. | [optional][readonly] |
| **dns_settings** | [**NetworkInterfaceDnsSettings**](NetworkInterfaceDnsSettings.md) |  | [optional] |
| **mac_address** | **String** | The MAC address of the network interface. | [optional][readonly] |
| **primary** | **Boolean** | Whether this is a primary network interface on a virtual machine. | [optional][readonly] |
| **vnet_encryption_supported** | **Boolean** | Whether the virtual machine this nic is attached to supports encryption. | [optional][readonly] |
| **default_outbound_connectivity_enabled** | **Boolean** | Whether default outbound connectivity for nic was configured or not. | [optional][readonly] |
| **enable_accelerated_networking** | **Boolean** | If the network interface is configured for accelerated networking. Not applicable to VM sizes which require accelerated networking. | [optional] |
| **disable_tcp_state_tracking** | **Boolean** | Indicates whether to disable tcp state tracking. | [optional] |
| **enable_ip_forwarding** | **Boolean** | Indicates whether IP forwarding is enabled on this network interface. | [optional] |
| **hosted_workloads** | **Array&lt;String&gt;** | A list of references to linked BareMetal resources. | [optional][readonly] |
| **dscp_configuration** | [**SubResource**](SubResource.md) |  | [optional] |
| **resource_guid** | **String** | The resource GUID property of the network interface resource. | [optional][readonly] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |
| **workload_type** | **String** | WorkloadType of the NetworkInterface for BareMetal resources | [optional] |
| **nic_type** | [**NetworkInterfaceNicType**](NetworkInterfaceNicType.md) |  | [optional] |
| **private_link_service** | [**PrivateLinkService**](PrivateLinkService.md) |  | [optional] |
| **migration_phase** | [**NetworkInterfaceMigrationPhase**](NetworkInterfaceMigrationPhase.md) |  | [optional] |
| **auxiliary_mode** | [**NetworkInterfaceAuxiliaryMode**](NetworkInterfaceAuxiliaryMode.md) |  | [optional] |
| **auxiliary_sku** | [**NetworkInterfaceAuxiliarySku**](NetworkInterfaceAuxiliarySku.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::NetworkInterfacePropertiesFormat.new(
  virtual_machine: null,
  network_security_group: null,
  private_endpoint: null,
  ip_configurations: null,
  tap_configurations: null,
  dns_settings: null,
  mac_address: null,
  primary: null,
  vnet_encryption_supported: null,
  default_outbound_connectivity_enabled: null,
  enable_accelerated_networking: null,
  disable_tcp_state_tracking: null,
  enable_ip_forwarding: null,
  hosted_workloads: null,
  dscp_configuration: null,
  resource_guid: null,
  provisioning_state: null,
  workload_type: null,
  nic_type: null,
  private_link_service: null,
  migration_phase: null,
  auxiliary_mode: null,
  auxiliary_sku: null
)
```

