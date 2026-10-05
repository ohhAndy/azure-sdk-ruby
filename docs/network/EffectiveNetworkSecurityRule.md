# AzureRest::EffectiveNetworkSecurityRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the security rule specified by the user (if created by the user). | [optional] |
| **protocol** | [**EffectiveSecurityRuleProtocol**](EffectiveSecurityRuleProtocol.md) |  | [optional] |
| **source_port_range** | **String** | The source port or range. | [optional] |
| **destination_port_range** | **String** | The destination port or range. | [optional] |
| **source_port_ranges** | **Array&lt;String&gt;** | The source port ranges. Expected values include a single integer between 0 and 65535, a range using &#39;-&#39; as separator (e.g. 100-400), or an asterisk (*). | [optional] |
| **destination_port_ranges** | **Array&lt;String&gt;** | The destination port ranges. Expected values include a single integer between 0 and 65535, a range using &#39;-&#39; as separator (e.g. 100-400), or an asterisk (*). | [optional] |
| **source_address_prefix** | **String** | The source address prefix. | [optional] |
| **destination_address_prefix** | **String** | The destination address prefix. | [optional] |
| **source_address_prefixes** | **Array&lt;String&gt;** | The source address prefixes. Expected values include CIDR IP ranges, Default Tags (VirtualNetwork, AzureLoadBalancer, Internet), System Tags, and the asterisk (*). | [optional] |
| **destination_address_prefixes** | **Array&lt;String&gt;** | The destination address prefixes. Expected values include CIDR IP ranges, Default Tags (VirtualNetwork, AzureLoadBalancer, Internet), System Tags, and the asterisk (*). | [optional] |
| **expanded_source_address_prefix** | **Array&lt;String&gt;** | The expanded source address prefix. | [optional] |
| **expanded_destination_address_prefix** | **Array&lt;String&gt;** | Expanded destination address prefix. | [optional] |
| **access** | [**SecurityRuleAccess**](SecurityRuleAccess.md) |  | [optional] |
| **priority** | **Integer** | The priority of the rule. | [optional] |
| **direction** | [**SecurityRuleDirection**](SecurityRuleDirection.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::EffectiveNetworkSecurityRule.new(
  name: null,
  protocol: null,
  source_port_range: null,
  destination_port_range: null,
  source_port_ranges: null,
  destination_port_ranges: null,
  source_address_prefix: null,
  destination_address_prefix: null,
  source_address_prefixes: null,
  destination_address_prefixes: null,
  expanded_source_address_prefix: null,
  expanded_destination_address_prefix: null,
  access: null,
  priority: null,
  direction: null
)
```

