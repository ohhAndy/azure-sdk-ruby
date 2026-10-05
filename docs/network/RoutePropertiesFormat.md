# AzureRest::RoutePropertiesFormat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address_prefix** | **String** | The destination CIDR to which the route applies. | [optional] |
| **next_hop_type** | [**RouteNextHopType**](RouteNextHopType.md) |  |  |
| **next_hop_ip_address** | **String** | The IP address packets should be forwarded to. Next hop values are only allowed in routes where the next hop type is VirtualAppliance. | [optional] |
| **next_hop** | [**RouteNextHopEcmp**](RouteNextHopEcmp.md) |  | [optional] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |
| **has_bgp_override** | **Boolean** | A value indicating whether this route overrides overlapping BGP routes regardless of LPM. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::RoutePropertiesFormat.new(
  address_prefix: null,
  next_hop_type: null,
  next_hop_ip_address: null,
  next_hop: null,
  provisioning_state: null,
  has_bgp_override: null
)
```

