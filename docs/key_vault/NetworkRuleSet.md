# AzureSDK::NetworkRuleSet

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bypass** | [**NetworkRuleBypassOptions**](NetworkRuleBypassOptions.md) |  | [optional] |
| **default_action** | [**NetworkRuleAction**](NetworkRuleAction.md) |  | [optional] |
| **ip_rules** | [**Array&lt;IPRule&gt;**](IPRule.md) | The list of IP address rules. | [optional] |
| **virtual_network_rules** | [**Array&lt;VirtualNetworkRule&gt;**](VirtualNetworkRule.md) | The list of virtual network rules. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::NetworkRuleSet.new(
  bypass: null,
  default_action: null,
  ip_rules: null,
  virtual_network_rules: null
)
```

