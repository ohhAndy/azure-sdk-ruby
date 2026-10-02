# AzureSDK::RouteTablePropertiesFormat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **routes** | [**Array&lt;Route&gt;**](Route.md) | Collection of routes contained within a route table. | [optional] |
| **subnets** | [**Array&lt;Subnet&gt;**](Subnet.md) | A collection of references to subnets. | [optional][readonly] |
| **disable_bgp_route_propagation** | **Boolean** | Whether to disable the routes learned by BGP on that route table. True means disable. | [optional] |
| **disable_peering_route** | [**DisablePeeringRoute**](DisablePeeringRoute.md) |  | [optional] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |
| **resource_guid** | **String** | The resource GUID property of the route table. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::RouteTablePropertiesFormat.new(
  routes: null,
  subnets: null,
  disable_bgp_route_propagation: null,
  disable_peering_route: null,
  provisioning_state: null,
  resource_guid: null
)
```

