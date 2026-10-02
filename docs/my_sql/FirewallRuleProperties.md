# AzureSDK::FirewallRuleProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_ip_address** | **String** | The start IP address of the server firewall rule. Must be IPv4 format. |  |
| **end_ip_address** | **String** | The end IP address of the server firewall rule. Must be IPv4 format. |  |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::FirewallRuleProperties.new(
  start_ip_address: null,
  end_ip_address: null
)
```

