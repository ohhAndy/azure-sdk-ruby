# AzureRest::VirtualNetworkPeeringPropertiesFormat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allow_virtual_network_access** | **Boolean** | Whether the VMs in the local virtual network space would be able to access the VMs in remote virtual network space. | [optional] |
| **allow_forwarded_traffic** | **Boolean** | Whether the forwarded traffic from the VMs in the local virtual network will be allowed/disallowed in remote virtual network. | [optional] |
| **allow_gateway_transit** | **Boolean** | If gateway links can be used in remote virtual networking to link to this virtual network. | [optional] |
| **use_remote_gateways** | **Boolean** | If remote gateways can be used on this virtual network. If the flag is set to true, and allowGatewayTransit on remote peering is also true, virtual network will use gateways of remote virtual network for transit. Only one peering can have this flag set to true. This flag cannot be set if virtual network already has a gateway. | [optional] |
| **remote_virtual_network** | [**SubResource**](SubResource.md) |  | [optional] |
| **local_address_space** | [**AddressSpace**](AddressSpace.md) |  | [optional] |
| **local_virtual_network_address_space** | [**AddressSpace**](AddressSpace.md) |  | [optional] |
| **remote_address_space** | [**AddressSpace**](AddressSpace.md) |  | [optional] |
| **remote_virtual_network_address_space** | [**AddressSpace**](AddressSpace.md) |  | [optional] |
| **remote_bgp_communities** | [**VirtualNetworkBgpCommunities**](VirtualNetworkBgpCommunities.md) |  | [optional] |
| **remote_virtual_network_encryption** | [**VirtualNetworkEncryption**](VirtualNetworkEncryption.md) |  | [optional] |
| **peering_state** | [**VirtualNetworkPeeringState**](VirtualNetworkPeeringState.md) |  | [optional] |
| **peering_sync_level** | [**VirtualNetworkPeeringLevel**](VirtualNetworkPeeringLevel.md) |  | [optional] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |
| **do_not_verify_remote_gateways** | **Boolean** | If we need to verify the provisioning state of the remote gateway. | [optional] |
| **resource_guid** | **String** | The resourceGuid property of the Virtual Network peering resource. | [optional][readonly] |
| **peer_complete_vnets** | **Boolean** | Whether complete virtual network address space is peered. | [optional] |
| **enable_only_ipv6_peering** | **Boolean** | Whether only Ipv6 address space is peered for subnet peering. | [optional] |
| **local_subnet_names** | **Array&lt;String&gt;** | List of local subnet names that are subnet peered with remote virtual network. | [optional] |
| **remote_subnet_names** | **Array&lt;String&gt;** | List of remote subnet names from remote virtual network that are subnet peered. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualNetworkPeeringPropertiesFormat.new(
  allow_virtual_network_access: null,
  allow_forwarded_traffic: null,
  allow_gateway_transit: null,
  use_remote_gateways: null,
  remote_virtual_network: null,
  local_address_space: null,
  local_virtual_network_address_space: null,
  remote_address_space: null,
  remote_virtual_network_address_space: null,
  remote_bgp_communities: null,
  remote_virtual_network_encryption: null,
  peering_state: null,
  peering_sync_level: null,
  provisioning_state: null,
  do_not_verify_remote_gateways: null,
  resource_guid: null,
  peer_complete_vnets: null,
  enable_only_ipv6_peering: null,
  local_subnet_names: null,
  remote_subnet_names: null
)
```

