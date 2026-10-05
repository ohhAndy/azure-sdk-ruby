# AzureRest::ManagedClusterLoadBalancerProfileManagedOutboundIPs

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** | The desired number of IPv4 outbound IPs created/managed by Azure for the cluster load balancer. Allowed values must be in the range of 1 to 100 (inclusive). The default value is 1. | [optional][default to 1] |
| **count_ipv6** | **Integer** | The desired number of IPv6 outbound IPs created/managed by Azure for the cluster load balancer. Allowed values must be in the range of 1 to 100 (inclusive). The default value is 0 for single-stack and 1 for dual-stack. | [optional][default to 0] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ManagedClusterLoadBalancerProfileManagedOutboundIPs.new(
  count: null,
  count_ipv6: null
)
```

