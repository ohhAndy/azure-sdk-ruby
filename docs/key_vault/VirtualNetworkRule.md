# AzureRest::VirtualNetworkRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Full resource id of a vnet subnet, such as &#39;/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/subnet1&#39;. |  |
| **ignore_missing_vnet_service_endpoint** | **Boolean** | Property to specify whether NRP will ignore the check if parent subnet has serviceEndpoints configured. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualNetworkRule.new(
  id: null,
  ignore_missing_vnet_service_endpoint: null
)
```

