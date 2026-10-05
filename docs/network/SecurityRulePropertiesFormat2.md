# AzureRest::SecurityRulePropertiesFormat2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | A description for this rule. Restricted to 140 chars. | [optional] |
| **protocol** | [**SecurityRuleProtocol**](SecurityRuleProtocol.md) |  |  |
| **source_port_range** | **String** | The source port or range. Integer or range between 0 and 65535. Asterisk &#39;*&#39; can also be used to match all ports. | [optional] |
| **destination_port_range** | **String** | The destination port or range. Integer or range between 0 and 65535. Asterisk &#39;*&#39; can also be used to match all ports. | [optional] |
| **source_address_prefix** | **String** | The CIDR or source IP range. Asterisk &#39;*&#39; can also be used to match all source IPs. Default tags such as &#39;VirtualNetwork&#39;, &#39;AzureLoadBalancer&#39; and &#39;Internet&#39; can also be used. If this is an ingress rule, specifies where network traffic originates from. | [optional] |
| **source_address_prefixes** | **Array&lt;String&gt;** | The CIDR or source IP ranges. | [optional] |
| **source_application_security_groups** | [**Array&lt;ApplicationSecurityGroup2&gt;**](ApplicationSecurityGroup2.md) | The application security group specified as source. | [optional] |
| **destination_address_prefix** | **String** | The destination address prefix. CIDR or destination IP range. Asterisk &#39;*&#39; can also be used to match all source IPs. Default tags such as &#39;VirtualNetwork&#39;, &#39;AzureLoadBalancer&#39; and &#39;Internet&#39; can also be used. | [optional] |
| **destination_address_prefixes** | **Array&lt;String&gt;** | The destination address prefixes. CIDR or destination IP ranges. | [optional] |
| **destination_application_security_groups** | [**Array&lt;ApplicationSecurityGroup2&gt;**](ApplicationSecurityGroup2.md) | The application security group specified as destination. | [optional] |
| **source_port_ranges** | **Array&lt;String&gt;** | The source port ranges. | [optional] |
| **destination_port_ranges** | **Array&lt;String&gt;** | The destination port ranges. | [optional] |
| **access** | [**SecurityRuleAccess**](SecurityRuleAccess.md) |  |  |
| **priority** | **Integer** | The priority of the rule. The value can be between 100 and 4096. The priority number must be unique for each rule in the collection. The lower the priority number, the higher the priority of the rule. |  |
| **direction** | [**SecurityRuleDirection**](SecurityRuleDirection.md) |  |  |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::SecurityRulePropertiesFormat2.new(
  description: null,
  protocol: null,
  source_port_range: null,
  destination_port_range: null,
  source_address_prefix: null,
  source_address_prefixes: null,
  source_application_security_groups: null,
  destination_address_prefix: null,
  destination_address_prefixes: null,
  destination_application_security_groups: null,
  source_port_ranges: null,
  destination_port_ranges: null,
  access: null,
  priority: null,
  direction: null,
  provisioning_state: null
)
```

