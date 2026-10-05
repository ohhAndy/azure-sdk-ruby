# AzureRest::IpGroupPropertiesFormat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |
| **ip_addresses** | **Array&lt;String&gt;** | IpAddresses/IpAddressPrefixes in the IpGroups resource. | [optional] |
| **firewalls** | [**Array&lt;SubResource&gt;**](SubResource.md) | List of references to Firewall resources that this IpGroups is associated with. | [optional][readonly] |
| **firewall_policies** | [**Array&lt;SubResource&gt;**](SubResource.md) | List of references to Firewall Policies resources that this IpGroups is associated with. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::IpGroupPropertiesFormat.new(
  provisioning_state: null,
  ip_addresses: null,
  firewalls: null,
  firewall_policies: null
)
```

