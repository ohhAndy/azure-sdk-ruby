# AzureSDK::ContainerServiceNetworkProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_plugin** | [**NetworkPlugin**](NetworkPlugin.md) |  | [optional] |
| **network_plugin_mode** | [**NetworkPluginMode**](NetworkPluginMode.md) |  | [optional] |
| **network_policy** | [**NetworkPolicy**](NetworkPolicy.md) |  | [optional] |
| **network_mode** | [**NetworkMode**](NetworkMode.md) |  | [optional] |
| **network_dataplane** | [**NetworkDataplane**](NetworkDataplane.md) |  | [optional] |
| **advanced_networking** | [**AdvancedNetworking**](AdvancedNetworking.md) |  | [optional] |
| **pod_cidr** | **String** | A CIDR notation IP range from which to assign pod IPs when kubenet is used. | [optional][default to &#39;10.244.0.0/16&#39;] |
| **service_cidr** | **String** | A CIDR notation IP range from which to assign service cluster IPs. It must not overlap with any Subnet IP ranges. | [optional][default to &#39;10.0.0.0/16&#39;] |
| **dns_service_ip** | **String** | An IP address assigned to the Kubernetes DNS service. It must be within the Kubernetes service address range specified in serviceCidr. | [optional][default to &#39;10.0.0.10&#39;] |
| **outbound_type** | **String** | The outbound (egress) routing method. This can only be set at cluster creation time and cannot be changed later. For more information see [egress outbound type](https://docs.microsoft.com/azure/aks/egress-outboundtype). | [optional][default to &#39;loadBalancer&#39;] |
| **load_balancer_sku** | [**LoadBalancerSku**](LoadBalancerSku.md) |  | [optional] |
| **load_balancer_profile** | [**ManagedClusterLoadBalancerProfile**](ManagedClusterLoadBalancerProfile.md) |  | [optional] |
| **nat_gateway_profile** | [**ManagedClusterNATGatewayProfile**](ManagedClusterNATGatewayProfile.md) |  | [optional] |
| **static_egress_gateway_profile** | [**ManagedClusterStaticEgressGatewayProfile**](ManagedClusterStaticEgressGatewayProfile.md) |  | [optional] |
| **pod_cidrs** | **Array&lt;String&gt;** | The CIDR notation IP ranges from which to assign pod IPs. One IPv4 CIDR is expected for single-stack networking. Two CIDRs, one for each IP family (IPv4/IPv6), is expected for dual-stack networking. | [optional] |
| **service_cidrs** | **Array&lt;String&gt;** | The CIDR notation IP ranges from which to assign service cluster IPs. One IPv4 CIDR is expected for single-stack networking. Two CIDRs, one for each IP family (IPv4/IPv6), is expected for dual-stack networking. They must not overlap with any Subnet IP ranges. | [optional] |
| **ip_families** | [**Array&lt;IPFamily&gt;**](IPFamily.md) | The IP families used to specify IP versions available to the cluster. IP families are used to determine single-stack or dual-stack clusters. For single-stack, the expected value is IPv4. For dual-stack, the expected values are IPv4 and IPv6. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ContainerServiceNetworkProfile.new(
  network_plugin: null,
  network_plugin_mode: null,
  network_policy: null,
  network_mode: null,
  network_dataplane: null,
  advanced_networking: null,
  pod_cidr: null,
  service_cidr: null,
  dns_service_ip: null,
  outbound_type: null,
  load_balancer_sku: null,
  load_balancer_profile: null,
  nat_gateway_profile: null,
  static_egress_gateway_profile: null,
  pod_cidrs: null,
  service_cidrs: null,
  ip_families: null
)
```

