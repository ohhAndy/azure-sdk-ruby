# AzureRest::LocalDNSProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mode** | **String** | Mode of enablement for localDNS. | [optional][default to &#39;Preferred&#39;] |
| **state** | [**LocalDNSState**](LocalDNSState.md) |  | [optional] |
| **vnet_dns_overrides** | [**Hash&lt;String, LocalDNSOverride&gt;**](LocalDNSOverride.md) | VnetDNS overrides apply to DNS traffic from pods with dnsPolicy:default or kubelet (referred to as VnetDNS traffic). | [optional] |
| **kube_dns_overrides** | [**Hash&lt;String, LocalDNSOverride&gt;**](LocalDNSOverride.md) | KubeDNS overrides apply to DNS traffic from pods with dnsPolicy:ClusterFirst (referred to as KubeDNS traffic). | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::LocalDNSProfile.new(
  mode: null,
  state: null,
  vnet_dns_overrides: null,
  kube_dns_overrides: null
)
```

