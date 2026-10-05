# AzureRest::EffectiveNetworkSecurityGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_security_group** | [**SubResource**](SubResource.md) |  | [optional] |
| **association** | [**EffectiveNetworkSecurityGroupAssociation**](EffectiveNetworkSecurityGroupAssociation.md) |  | [optional] |
| **effective_security_rules** | [**Array&lt;EffectiveNetworkSecurityRule&gt;**](EffectiveNetworkSecurityRule.md) | A collection of effective security rules. | [optional] |
| **tag_map** | **Hash&lt;String, Array&lt;String&gt;&gt;** | Mapping of tags to list of IP Addresses included within the tag. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::EffectiveNetworkSecurityGroup.new(
  network_security_group: null,
  association: null,
  effective_security_rules: null,
  tag_map: null
)
```

