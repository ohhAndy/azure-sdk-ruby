# AzureSDK::EffectiveNetworkSecurityGroupAssociation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_manager** | [**SubResource**](SubResource.md) |  | [optional] |
| **subnet** | [**SubResource**](SubResource.md) |  | [optional] |
| **network_interface** | [**SubResource**](SubResource.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::EffectiveNetworkSecurityGroupAssociation.new(
  network_manager: null,
  subnet: null,
  network_interface: null
)
```

