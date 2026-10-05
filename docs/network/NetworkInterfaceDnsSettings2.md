# AzureRest::NetworkInterfaceDnsSettings2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dns_servers** | **Array&lt;String&gt;** | List of DNS servers IP addresses. Use &#39;AzureProvidedDNS&#39; to switch to azure provided DNS resolution. &#39;AzureProvidedDNS&#39; value cannot be combined with other IPs, it must be the only value in dnsServers collection. | [optional] |
| **applied_dns_servers** | **Array&lt;String&gt;** | If the VM that uses this NIC is part of an Availability Set, then this list will have the union of all DNS servers from all NICs that are part of the Availability Set. This property is what is configured on each of those VMs. | [optional][readonly] |
| **internal_dns_name_label** | **String** | Relative DNS name for this NIC used for internal communications between VMs in the same virtual network. | [optional] |
| **internal_fqdn** | **String** | Fully qualified DNS name supporting internal communications between VMs in the same virtual network. | [optional][readonly] |
| **internal_domain_name_suffix** | **String** | Even if internalDnsNameLabel is not specified, a DNS entry is created for the primary NIC of the VM. This DNS name can be constructed by concatenating the VM name with the value of internalDomainNameSuffix. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::NetworkInterfaceDnsSettings2.new(
  dns_servers: null,
  applied_dns_servers: null,
  internal_dns_name_label: null,
  internal_fqdn: null,
  internal_domain_name_suffix: null
)
```

