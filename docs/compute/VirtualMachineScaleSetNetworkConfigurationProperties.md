# AzureRest::VirtualMachineScaleSetNetworkConfigurationProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **primary** | **Boolean** | Specifies the primary network interface in case the virtual machine has more than 1 network interface. | [optional] |
| **enable_accelerated_networking** | **Boolean** | Specifies whether the network interface is accelerated networking-enabled. | [optional] |
| **disable_tcp_state_tracking** | **Boolean** | Specifies whether the network interface is disabled for tcp state tracking. | [optional] |
| **enable_fpga** | **Boolean** | Specifies whether the network interface is FPGA networking-enabled. | [optional] |
| **network_security_group** | [**SubResource**](SubResource.md) |  | [optional] |
| **dns_settings** | [**VirtualMachineScaleSetNetworkConfigurationDnsSettings**](VirtualMachineScaleSetNetworkConfigurationDnsSettings.md) |  | [optional] |
| **ip_configurations** | [**Array&lt;VirtualMachineScaleSetIPConfiguration&gt;**](VirtualMachineScaleSetIPConfiguration.md) | Specifies the IP configurations of the network interface. |  |
| **enable_ip_forwarding** | **Boolean** | Whether IP forwarding enabled on this NIC. | [optional] |
| **delete_option** | [**DeleteOptions**](DeleteOptions.md) |  | [optional] |
| **auxiliary_mode** | [**NetworkInterfaceAuxiliaryMode**](NetworkInterfaceAuxiliaryMode.md) |  | [optional] |
| **auxiliary_sku** | [**NetworkInterfaceAuxiliarySku**](NetworkInterfaceAuxiliarySku.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualMachineScaleSetNetworkConfigurationProperties.new(
  primary: null,
  enable_accelerated_networking: null,
  disable_tcp_state_tracking: null,
  enable_fpga: null,
  network_security_group: null,
  dns_settings: null,
  ip_configurations: null,
  enable_ip_forwarding: null,
  delete_option: null,
  auxiliary_mode: null,
  auxiliary_sku: null
)
```

