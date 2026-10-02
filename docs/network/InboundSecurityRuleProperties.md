# AzureSDK::InboundSecurityRuleProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rule_type** | [**InboundSecurityRuleType**](InboundSecurityRuleType.md) |  | [optional] |
| **rules** | [**Array&lt;InboundSecurityRules&gt;**](InboundSecurityRules.md) | List of allowed rules. | [optional] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::InboundSecurityRuleProperties.new(
  rule_type: null,
  rules: null,
  provisioning_state: null
)
```

