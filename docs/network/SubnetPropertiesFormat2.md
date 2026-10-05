# AzureRest::SubnetPropertiesFormat2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address_prefix** | **String** | The address prefix for the subnet. | [optional] |
| **address_prefixes** | **Array&lt;String&gt;** | List of address prefixes for the subnet. | [optional] |
| **network_security_group** | [**NetworkSecurityGroup2**](NetworkSecurityGroup2.md) |  | [optional] |
| **route_table** | [**RouteTable2**](RouteTable2.md) |  | [optional] |
| **nat_gateway** | [**SubResource**](SubResource.md) |  | [optional] |
| **service_endpoints** | [**Array&lt;ServiceEndpointPropertiesFormat2&gt;**](ServiceEndpointPropertiesFormat2.md) | An array of service endpoints. | [optional] |
| **service_endpoint_policies** | [**Array&lt;ServiceEndpointPolicy&gt;**](ServiceEndpointPolicy.md) | An array of service endpoint policies. | [optional] |
| **private_endpoints** | [**Array&lt;PrivateEndpoint2&gt;**](PrivateEndpoint2.md) | An array of references to private endpoints. | [optional][readonly] |
| **ip_configurations** | [**Array&lt;IPConfiguration2&gt;**](IPConfiguration2.md) | An array of references to the network interface IP configurations using subnet. | [optional][readonly] |
| **ip_configuration_profiles** | [**Array&lt;IPConfigurationProfile2&gt;**](IPConfigurationProfile2.md) | Array of IP configuration profiles which reference this subnet. | [optional][readonly] |
| **ip_allocations** | [**Array&lt;SubResource&gt;**](SubResource.md) | Array of IpAllocation which reference this subnet. | [optional] |
| **resource_navigation_links** | [**Array&lt;ResourceNavigationLink2&gt;**](ResourceNavigationLink2.md) | An array of references to the external resources using subnet. | [optional][readonly] |
| **service_association_links** | [**Array&lt;ServiceAssociationLink2&gt;**](ServiceAssociationLink2.md) | An array of references to services injecting into this subnet. | [optional][readonly] |
| **delegations** | [**Array&lt;Delegation2&gt;**](Delegation2.md) | An array of references to the delegations on the subnet. | [optional] |
| **purpose** | **String** | A read-only string identifying the intention of use for this subnet based on delegations and other user-defined properties. | [optional][readonly] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |
| **private_endpoint_network_policies** | **String** | Enable or Disable apply network policies on private end point in the subnet. | [optional][default to &#39;Disabled&#39;] |
| **private_link_service_network_policies** | **String** | Enable or Disable apply network policies on private link service in the subnet. | [optional][default to &#39;Enabled&#39;] |
| **application_gateway_ip_configurations** | [**Array&lt;ApplicationGatewayIPConfiguration&gt;**](ApplicationGatewayIPConfiguration.md) | Application gateway IP configurations of virtual network resource. | [optional] |
| **sharing_scope** | [**SharingScope**](SharingScope.md) |  | [optional] |
| **default_outbound_access** | **Boolean** | Set this property to false to disable default outbound connectivity for all VMs in the subnet. | [optional] |
| **ipam_pool_prefix_allocations** | [**Array&lt;IpamPoolPrefixAllocation2&gt;**](IpamPoolPrefixAllocation2.md) | A list of IPAM Pools for allocating IP address prefixes. | [optional] |
| **service_gateway** | [**SubResource**](SubResource.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::SubnetPropertiesFormat2.new(
  address_prefix: null,
  address_prefixes: null,
  network_security_group: null,
  route_table: null,
  nat_gateway: null,
  service_endpoints: null,
  service_endpoint_policies: null,
  private_endpoints: null,
  ip_configurations: null,
  ip_configuration_profiles: null,
  ip_allocations: null,
  resource_navigation_links: null,
  service_association_links: null,
  delegations: null,
  purpose: null,
  provisioning_state: null,
  private_endpoint_network_policies: null,
  private_link_service_network_policies: null,
  application_gateway_ip_configurations: null,
  sharing_scope: null,
  default_outbound_access: null,
  ipam_pool_prefix_allocations: null,
  service_gateway: null
)
```

