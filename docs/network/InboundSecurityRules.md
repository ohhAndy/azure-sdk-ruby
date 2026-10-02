# AzureSDK::InboundSecurityRules

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the rule. | [optional] |
| **protocol** | [**InboundSecurityRulesProtocol**](InboundSecurityRulesProtocol.md) |  | [optional] |
| **source_address_prefix** | **String** | The CIDR or source IP range. | [optional] |
| **destination_port_range** | **Integer** | NVA port ranges to be opened up. One needs to provide specific ports. | [optional] |
| **destination_port_ranges** | **Array&lt;String&gt;** | NVA port ranges to be opened up. One can provide a range of ports. Allowed port value between 0 and 65535. | [optional] |
| **applies_on** | **Array&lt;String&gt;** | Public IP name in case of Permanent Rule type &amp; Interface Name in case of Auto Expire Rule type | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::InboundSecurityRules.new(
  name: null,
  protocol: null,
  source_address_prefix: null,
  destination_port_range: null,
  destination_port_ranges: null,
  applies_on: null
)
```

