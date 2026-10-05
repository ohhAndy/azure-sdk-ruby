# AzureRest::ManagedClusterLoadBalancerProfileOutboundIPs

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **public_ips** | [**Array&lt;ResourceReference&gt;**](ResourceReference.md) | A list of public IP resources. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ManagedClusterLoadBalancerProfileOutboundIPs.new(
  public_ips: null
)
```

