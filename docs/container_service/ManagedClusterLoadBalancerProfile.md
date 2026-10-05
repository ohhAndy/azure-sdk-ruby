# AzureRest::ManagedClusterLoadBalancerProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **managed_outbound_ips** | [**ManagedClusterLoadBalancerProfileManagedOutboundIPs**](ManagedClusterLoadBalancerProfileManagedOutboundIPs.md) |  | [optional] |
| **outbound_ip_prefixes** | [**ManagedClusterLoadBalancerProfileOutboundIPPrefixes**](ManagedClusterLoadBalancerProfileOutboundIPPrefixes.md) |  | [optional] |
| **outbound_ips** | [**ManagedClusterLoadBalancerProfileOutboundIPs**](ManagedClusterLoadBalancerProfileOutboundIPs.md) |  | [optional] |
| **effective_outbound_ips** | [**Array&lt;ResourceReference&gt;**](ResourceReference.md) | The effective outbound IP resources of the cluster load balancer. | [optional][readonly] |
| **allocated_outbound_ports** | **Integer** | The desired number of allocated SNAT ports per VM. Allowed values are in the range of 0 to 64000 (inclusive). The default value is 0 which results in Azure dynamically allocating ports. | [optional][default to 0] |
| **idle_timeout_in_minutes** | **Integer** | Desired outbound flow idle timeout in minutes. Allowed values are in the range of 4 to 120 (inclusive). The default value is 30 minutes. | [optional][default to 30] |
| **enable_multiple_standard_load_balancers** | **Boolean** | Enable multiple standard load balancers per AKS cluster or not. | [optional] |
| **backend_pool_type** | **String** | The type of the managed inbound Load Balancer BackendPool. | [optional][default to &#39;NodeIPConfiguration&#39;] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ManagedClusterLoadBalancerProfile.new(
  managed_outbound_ips: null,
  outbound_ip_prefixes: null,
  outbound_ips: null,
  effective_outbound_ips: null,
  allocated_outbound_ports: null,
  idle_timeout_in_minutes: null,
  enable_multiple_standard_load_balancers: null,
  backend_pool_type: null
)
```

