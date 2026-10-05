# AzureRest::ManagedClusterIngressProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **web_app_routing** | [**ManagedClusterIngressProfileWebAppRouting**](ManagedClusterIngressProfileWebAppRouting.md) |  | [optional] |
| **gateway_api** | [**ManagedClusterIngressProfileGatewayConfiguration**](ManagedClusterIngressProfileGatewayConfiguration.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ManagedClusterIngressProfile.new(
  web_app_routing: null,
  gateway_api: null
)
```

