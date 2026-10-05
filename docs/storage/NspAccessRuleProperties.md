# AzureRest::NspAccessRuleProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **direction** | [**NspAccessRuleDirection**](NspAccessRuleDirection.md) |  | [optional] |
| **address_prefixes** | **Array&lt;String&gt;** | Address prefixes in the CIDR format for inbound rules | [optional] |
| **subscriptions** | [**Array&lt;NspAccessRulePropertiesSubscriptionsItem&gt;**](NspAccessRulePropertiesSubscriptionsItem.md) | Subscriptions for inbound rules | [optional] |
| **network_security_perimeters** | [**Array&lt;NetworkSecurityPerimeter&gt;**](NetworkSecurityPerimeter.md) | NetworkSecurityPerimeters for inbound rules | [optional][readonly] |
| **fully_qualified_domain_names** | **Array&lt;String&gt;** | FQDN for outbound rules | [optional][readonly] |
| **service_tags** | **Array&lt;String&gt;** | Service Tags for inbound rules | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::NspAccessRuleProperties.new(
  direction: null,
  address_prefixes: null,
  subscriptions: null,
  network_security_perimeters: null,
  fully_qualified_domain_names: null,
  service_tags: null
)
```

