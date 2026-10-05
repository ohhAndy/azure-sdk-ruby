# AzureRest::GatewayLoadBalancerTunnelInterface

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **port** | **Integer** | Port of gateway load balancer tunnel interface. | [optional] |
| **identifier** | **Integer** | Identifier of gateway load balancer tunnel interface. | [optional] |
| **protocol** | [**GatewayLoadBalancerTunnelProtocol**](GatewayLoadBalancerTunnelProtocol.md) |  | [optional] |
| **type** | [**GatewayLoadBalancerTunnelInterfaceType**](GatewayLoadBalancerTunnelInterfaceType.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::GatewayLoadBalancerTunnelInterface.new(
  port: null,
  identifier: null,
  protocol: null,
  type: null
)
```

