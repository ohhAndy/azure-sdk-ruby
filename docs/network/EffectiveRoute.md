# AzureSDK::EffectiveRoute

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the user defined route. This is optional. | [optional] |
| **disable_bgp_route_propagation** | **Boolean** | If true, on-premises routes are not propagated to the network interfaces in the subnet. | [optional] |
| **source** | [**EffectiveRouteSource**](EffectiveRouteSource.md) |  | [optional] |
| **state** | [**EffectiveRouteState**](EffectiveRouteState.md) |  | [optional] |
| **address_prefix** | **Array&lt;String&gt;** | The address prefixes of the effective routes in CIDR notation. | [optional] |
| **next_hop_ip_address** | **Array&lt;String&gt;** | The IP address of the next hop of the effective route. | [optional] |
| **next_hop_type** | [**RouteNextHopType**](RouteNextHopType.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::EffectiveRoute.new(
  name: null,
  disable_bgp_route_propagation: null,
  source: null,
  state: null,
  address_prefix: null,
  next_hop_ip_address: null,
  next_hop_type: null
)
```

