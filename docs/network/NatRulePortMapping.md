# AzureSDK::NatRulePortMapping

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inbound_nat_rule_name** | **String** | Name of inbound NAT rule. | [optional] |
| **frontend_port** | **Integer** | Frontend port. | [optional] |
| **backend_port** | **Integer** | Backend port. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::NatRulePortMapping.new(
  inbound_nat_rule_name: null,
  frontend_port: null,
  backend_port: null
)
```

