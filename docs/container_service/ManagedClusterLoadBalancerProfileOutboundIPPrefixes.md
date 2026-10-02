# AzureSDK::ManagedClusterLoadBalancerProfileOutboundIPPrefixes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **public_ip_prefixes** | [**Array&lt;ResourceReference&gt;**](ResourceReference.md) | A list of public IP prefix resources. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ManagedClusterLoadBalancerProfileOutboundIPPrefixes.new(
  public_ip_prefixes: null
)
```

