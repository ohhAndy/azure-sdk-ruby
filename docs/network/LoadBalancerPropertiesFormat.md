# AzureRest::LoadBalancerPropertiesFormat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **frontend_ip_configurations** | [**Array&lt;FrontendIPConfiguration&gt;**](FrontendIPConfiguration.md) | Object representing the frontend IPs to be used for the load balancer. | [optional] |
| **backend_address_pools** | [**Array&lt;BackendAddressPool&gt;**](BackendAddressPool.md) | Collection of backend address pools used by a load balancer. | [optional] |
| **load_balancing_rules** | [**Array&lt;LoadBalancingRule&gt;**](LoadBalancingRule.md) | Object collection representing the load balancing rules Gets the provisioning. | [optional] |
| **probes** | [**Array&lt;Probe&gt;**](Probe.md) | Collection of probe objects used in the load balancer. | [optional] |
| **inbound_nat_rules** | [**Array&lt;InboundNatRule&gt;**](InboundNatRule.md) | Collection of inbound NAT Rules used by a load balancer. Defining inbound NAT rules on your load balancer is mutually exclusive with defining an inbound NAT pool. Inbound NAT pools are referenced from virtual machine scale sets. NICs that are associated with individual virtual machines cannot reference an Inbound NAT pool. They have to reference individual inbound NAT rules. | [optional] |
| **inbound_nat_pools** | [**Array&lt;InboundNatPool&gt;**](InboundNatPool.md) | Defines an external port range for inbound NAT to a single backend port on NICs associated with a load balancer. Inbound NAT rules are created automatically for each NIC associated with the Load Balancer using an external port from this range. Defining an Inbound NAT pool on your Load Balancer is mutually exclusive with defining inbound NAT rules. Inbound NAT pools are referenced from virtual machine scale sets. NICs that are associated with individual virtual machines cannot reference an inbound NAT pool. They have to reference individual inbound NAT rules. | [optional] |
| **outbound_rules** | [**Array&lt;OutboundRule&gt;**](OutboundRule.md) | The outbound rules. | [optional] |
| **resource_guid** | **String** | The resource GUID property of the load balancer resource. | [optional][readonly] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |
| **scope** | [**LoadBalancerScope**](LoadBalancerScope.md) |  | [optional] |
| **mode** | [**LoadBalancerMode**](LoadBalancerMode.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::LoadBalancerPropertiesFormat.new(
  frontend_ip_configurations: null,
  backend_address_pools: null,
  load_balancing_rules: null,
  probes: null,
  inbound_nat_rules: null,
  inbound_nat_pools: null,
  outbound_rules: null,
  resource_guid: null,
  provisioning_state: null,
  scope: null,
  mode: null
)
```

