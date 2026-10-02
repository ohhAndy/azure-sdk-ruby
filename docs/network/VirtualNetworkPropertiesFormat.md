# AzureSDK::VirtualNetworkPropertiesFormat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address_space** | [**AddressSpace**](AddressSpace.md) |  | [optional] |
| **dhcp_options** | [**DhcpOptions**](DhcpOptions.md) |  | [optional] |
| **flow_timeout_in_minutes** | **Integer** | The FlowTimeout value (in minutes) for the Virtual Network | [optional] |
| **subnets** | [**Array&lt;Subnet&gt;**](Subnet.md) | A list of subnets in a Virtual Network. | [optional] |
| **virtual_network_peerings** | [**Array&lt;VirtualNetworkPeering&gt;**](VirtualNetworkPeering.md) | A list of peerings in a Virtual Network. | [optional] |
| **resource_guid** | **String** | The resourceGuid property of the Virtual Network resource. | [optional][readonly] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |
| **enable_ddos_protection** | **Boolean** | Indicates if DDoS protection is enabled for all the protected resources in the virtual network. It requires a DDoS protection plan associated with the resource. | [optional][default to false] |
| **enable_vm_protection** | **Boolean** | Indicates if VM protection is enabled for all the subnets in the virtual network. | [optional][default to false] |
| **ddos_protection_plan** | [**SubResource**](SubResource.md) |  | [optional] |
| **bgp_communities** | [**VirtualNetworkBgpCommunities**](VirtualNetworkBgpCommunities.md) |  | [optional] |
| **encryption** | [**VirtualNetworkEncryption**](VirtualNetworkEncryption.md) |  | [optional] |
| **ip_allocations** | [**Array&lt;SubResource&gt;**](SubResource.md) | Array of IpAllocation which reference this VNET. | [optional] |
| **flow_logs** | [**Array&lt;FlowLog&gt;**](FlowLog.md) | A collection of references to flow log resources. | [optional][readonly] |
| **private_endpoint_v_net_policies** | [**PrivateEndpointVNetPolicies**](PrivateEndpointVNetPolicies.md) |  | [optional] |
| **default_public_nat_gateway** | [**SubResource**](SubResource.md) |  | [optional] |
| **summarized_gateway_prefixes** | [**AddressSpace**](AddressSpace.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VirtualNetworkPropertiesFormat.new(
  address_space: null,
  dhcp_options: null,
  flow_timeout_in_minutes: null,
  subnets: null,
  virtual_network_peerings: null,
  resource_guid: null,
  provisioning_state: null,
  enable_ddos_protection: null,
  enable_vm_protection: null,
  ddos_protection_plan: null,
  bgp_communities: null,
  encryption: null,
  ip_allocations: null,
  flow_logs: null,
  private_endpoint_v_net_policies: null,
  default_public_nat_gateway: null,
  summarized_gateway_prefixes: null
)
```

