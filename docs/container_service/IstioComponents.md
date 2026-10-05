# AzureRest::IstioComponents

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ingress_gateways** | [**Array&lt;IstioIngressGateway&gt;**](IstioIngressGateway.md) | Istio ingress gateways. | [optional] |
| **egress_gateways** | [**Array&lt;IstioEgressGateway&gt;**](IstioEgressGateway.md) | Istio egress gateways. | [optional] |
| **proxy_redirection_mechanism** | [**ProxyRedirectionMechanism**](ProxyRedirectionMechanism.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::IstioComponents.new(
  ingress_gateways: null,
  egress_gateways: null,
  proxy_redirection_mechanism: null
)
```

