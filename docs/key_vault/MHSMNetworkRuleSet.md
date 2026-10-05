# AzureRest::MHSMNetworkRuleSet

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bypass** | [**NetworkRuleBypassOptions**](NetworkRuleBypassOptions.md) |  | [optional] |
| **default_action** | [**NetworkRuleAction**](NetworkRuleAction.md) |  | [optional] |
| **ip_rules** | [**Array&lt;MHSMIPRule&gt;**](MHSMIPRule.md) | The list of IP address rules. | [optional] |
| **service_tags** | [**Array&lt;MHSMServiceTagRule&gt;**](MHSMServiceTagRule.md) | The list of service tags. | [optional] |
| **virtual_network_rules** | [**Array&lt;MHSMVirtualNetworkRule&gt;**](MHSMVirtualNetworkRule.md) | The list of virtual network rules. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::MHSMNetworkRuleSet.new(
  bypass: null,
  default_action: null,
  ip_rules: null,
  service_tags: null,
  virtual_network_rules: null
)
```

