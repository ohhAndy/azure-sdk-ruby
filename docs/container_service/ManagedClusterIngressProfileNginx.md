# AzureRest::ManagedClusterIngressProfileNginx

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **default_ingress_controller_type** | [**NginxIngressControllerType**](NginxIngressControllerType.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ManagedClusterIngressProfileNginx.new(
  default_ingress_controller_type: null
)
```

