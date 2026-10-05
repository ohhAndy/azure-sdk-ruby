# AzureRest::VirtualNetworkTapPropertiesFormat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_interface_tap_configurations** | [**Array&lt;NetworkInterfaceTapConfiguration2&gt;**](NetworkInterfaceTapConfiguration2.md) | Specifies the list of resource IDs for the network interface IP configuration that needs to be tapped. | [optional][readonly] |
| **resource_guid** | **String** | The resource GUID property of the virtual network tap resource. | [optional][readonly] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |
| **destination_network_interface_ip_configuration** | [**NetworkInterfaceIPConfiguration2**](NetworkInterfaceIPConfiguration2.md) |  | [optional] |
| **destination_load_balancer_front_end_ip_configuration** | [**FrontendIPConfiguration**](FrontendIPConfiguration.md) |  | [optional] |
| **destination_port** | **Integer** | The VXLAN destination port that will receive the tapped traffic. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualNetworkTapPropertiesFormat.new(
  network_interface_tap_configurations: null,
  resource_guid: null,
  provisioning_state: null,
  destination_network_interface_ip_configuration: null,
  destination_load_balancer_front_end_ip_configuration: null,
  destination_port: null
)
```

