# AzureSDK::NetworkRuleSet

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bypass** | **String** | Specifies whether traffic is bypassed for Logging/Metrics/AzureServices. Possible values are any combination of Logging|Metrics|AzureServices (For example, \&quot;Logging, Metrics\&quot;), or None to bypass none of those traffics. | [optional][default to &#39;AzureServices&#39;] |
| **resource_access_rules** | [**Array&lt;ResourceAccessRule&gt;**](ResourceAccessRule.md) | Sets the resource access rules | [optional] |
| **virtual_network_rules** | [**Array&lt;VirtualNetworkRule&gt;**](VirtualNetworkRule.md) | Sets the virtual network rules | [optional] |
| **ip_rules** | [**Array&lt;IPRule&gt;**](IPRule.md) | Sets the IP ACL rules | [optional] |
| **ipv6_rules** | [**Array&lt;IPRule&gt;**](IPRule.md) | Sets the IPv6 ACL rules. | [optional] |
| **default_action** | **String** | Specifies the default action of allow or deny when no other rules match. | [default to &#39;Allow&#39;] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::NetworkRuleSet.new(
  bypass: null,
  resource_access_rules: null,
  virtual_network_rules: null,
  ip_rules: null,
  ipv6_rules: null,
  default_action: null
)
```

