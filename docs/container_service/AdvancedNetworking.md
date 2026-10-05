# AzureRest::AdvancedNetworking

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Indicates the enablement of Advanced Networking functionalities of observability and security on AKS clusters. When this is set to true, all observability and security features will be set to enabled unless explicitly disabled. If not specified, the default is false. | [optional] |
| **observability** | [**AdvancedNetworkingObservability**](AdvancedNetworkingObservability.md) |  | [optional] |
| **security** | [**AdvancedNetworkingSecurity**](AdvancedNetworkingSecurity.md) |  | [optional] |
| **performance** | [**AdvancedNetworkingPerformance**](AdvancedNetworkingPerformance.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::AdvancedNetworking.new(
  enabled: null,
  observability: null,
  security: null,
  performance: null
)
```

