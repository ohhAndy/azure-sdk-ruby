# AzureRest::NetworkInterfaceIPConfigurationPropertiesFormat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **gateway_load_balancer** | [**SubResource**](SubResource.md) |  | [optional] |
| **virtual_network_taps** | [**Array&lt;VirtualNetworkTap&gt;**](VirtualNetworkTap.md) | The reference to Virtual Network Taps. | [optional] |
| **application_gateway_backend_address_pools** | [**Array&lt;ApplicationGatewayBackendAddressPool&gt;**](ApplicationGatewayBackendAddressPool.md) | The reference to ApplicationGatewayBackendAddressPool resource. | [optional] |
| **load_balancer_backend_address_pools** | [**Array&lt;BackendAddressPool&gt;**](BackendAddressPool.md) | The reference to LoadBalancerBackendAddressPool resource. | [optional] |
| **load_balancer_inbound_nat_rules** | [**Array&lt;InboundNatRule&gt;**](InboundNatRule.md) | A list of references of LoadBalancerInboundNatRules. | [optional] |
| **private_ip_address** | **String** | Private IP address of the IP configuration. It can be a single IP address or a CIDR block in the format &lt;address&gt;/&lt;prefix-length&gt;. | [optional] |
| **private_ip_address_prefix_length** | **Integer** | The private IP address prefix length. If specified and the allocation method is dynamic, the service will allocate a CIDR block instead of a single IP address. | [optional] |
| **private_ip_allocation_method** | [**IPAllocationMethod**](IPAllocationMethod.md) |  | [optional] |
| **private_ip_address_version** | [**IPVersion**](IPVersion.md) |  | [optional] |
| **subnet** | [**Subnet**](Subnet.md) |  | [optional] |
| **primary** | **Boolean** | Whether this is a primary customer address on the network interface. | [optional] |
| **public_ip_address** | [**PublicIPAddress**](PublicIPAddress.md) |  | [optional] |
| **application_security_groups** | [**Array&lt;ApplicationSecurityGroup&gt;**](ApplicationSecurityGroup.md) | Application security groups in which the IP configuration is included. | [optional] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |
| **private_link_connection_properties** | [**NetworkInterfaceIPConfigurationPrivateLinkConnectionProperties**](NetworkInterfaceIPConfigurationPrivateLinkConnectionProperties.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::NetworkInterfaceIPConfigurationPropertiesFormat.new(
  gateway_load_balancer: null,
  virtual_network_taps: null,
  application_gateway_backend_address_pools: null,
  load_balancer_backend_address_pools: null,
  load_balancer_inbound_nat_rules: null,
  private_ip_address: null,
  private_ip_address_prefix_length: null,
  private_ip_allocation_method: null,
  private_ip_address_version: null,
  subnet: null,
  primary: null,
  public_ip_address: null,
  application_security_groups: null,
  provisioning_state: null,
  private_link_connection_properties: null
)
```

