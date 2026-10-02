# AzureSDK::IstioEgressGateway

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Whether to enable the egress gateway. |  |
| **name** | **String** | Name of the Istio add-on egress gateway. |  |
| **namespace** | **String** | Namespace that the Istio add-on egress gateway should be deployed in. If unspecified, the default is aks-istio-egress. | [optional] |
| **gateway_configuration_name** | **String** | Name of the gateway configuration custom resource for the Istio add-on egress gateway. Must be specified when enabling the Istio egress gateway. Must be deployed in the same namespace that the Istio egress gateway will be deployed in. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::IstioEgressGateway.new(
  enabled: null,
  name: null,
  namespace: null,
  gateway_configuration_name: null
)
```

