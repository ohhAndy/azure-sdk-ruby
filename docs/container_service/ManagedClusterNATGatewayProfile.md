# AzureSDK::ManagedClusterNATGatewayProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sku** | [**ManagedClusterNATGatewaySku**](ManagedClusterNATGatewaySku.md) |  | [optional] |
| **managed_outbound_ip_profile** | [**ManagedClusterManagedOutboundIPProfile**](ManagedClusterManagedOutboundIPProfile.md) |  | [optional] |
| **effective_outbound_ips** | [**Array&lt;ResourceReference&gt;**](ResourceReference.md) | The effective outbound IP resources of the cluster NAT gateway. | [optional][readonly] |
| **outbound_ip_prefixes** | [**ManagedClusterNATGatewayProfileOutboundIPPrefixes**](ManagedClusterNATGatewayProfileOutboundIPPrefixes.md) |  | [optional] |
| **outbound_ips** | [**ManagedClusterNATGatewayProfileOutboundIPs**](ManagedClusterNATGatewayProfileOutboundIPs.md) |  | [optional] |
| **idle_timeout_in_minutes** | **Integer** | Desired outbound flow idle timeout in minutes. Allowed values are in the range of 4 to 120 (inclusive). The default value is 4 minutes. | [optional][default to 4] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ManagedClusterNATGatewayProfile.new(
  sku: null,
  managed_outbound_ip_profile: null,
  effective_outbound_ips: null,
  outbound_ip_prefixes: null,
  outbound_ips: null,
  idle_timeout_in_minutes: null
)
```

