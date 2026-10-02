# AzureSDK::FirewallRuleProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_ip_address** | **String** | IP address defining the start of the range of addresses of a firewall rule. Must be expressed in IPv4 format. |  |
| **end_ip_address** | **String** | IP address defining the end of the range of addresses of a firewall rule. Must be expressed in IPv4 format. |  |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::FirewallRuleProperties.new(
  start_ip_address: null,
  end_ip_address: null
)
```

