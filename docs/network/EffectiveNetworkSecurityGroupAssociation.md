# AzureRest::EffectiveNetworkSecurityGroupAssociation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_manager** | [**SubResource**](SubResource.md) |  | [optional] |
| **subnet** | [**SubResource**](SubResource.md) |  | [optional] |
| **network_interface** | [**SubResource**](SubResource.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::EffectiveNetworkSecurityGroupAssociation.new(
  network_manager: null,
  subnet: null,
  network_interface: null
)
```

