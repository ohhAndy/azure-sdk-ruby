# AzureSDK::AdvancedNetworkingSecurity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | This feature allows user to configure network policy based on DNS (FQDN) names. It can be enabled only on cilium based clusters. If not specified, the default is false. | [optional] |
| **advanced_network_policies** | [**AdvancedNetworkPolicies**](AdvancedNetworkPolicies.md) |  | [optional] |
| **transit_encryption** | [**AdvancedNetworkingSecurityTransitEncryption**](AdvancedNetworkingSecurityTransitEncryption.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::AdvancedNetworkingSecurity.new(
  enabled: null,
  advanced_network_policies: null,
  transit_encryption: null
)
```

