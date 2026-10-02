# AzureSDK::VirtualNetworkRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Resource ID of a subnet, for example: /subscriptions/{subscriptionId}/resourceGroups/{groupName}/providers/Microsoft.Network/virtualNetworks/{vnetName}/subnets/{subnetName}. |  |
| **action** | **String** | The action of virtual network rule. | [optional] |
| **state** | [**State**](State.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VirtualNetworkRule.new(
  id: null,
  action: null,
  state: null
)
```

