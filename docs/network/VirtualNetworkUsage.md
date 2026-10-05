# AzureRest::VirtualNetworkUsage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **current_value** | **Float** | Indicates number of IPs used from the Subnet. | [optional][readonly] |
| **id** | **String** | Subnet identifier. | [optional][readonly] |
| **limit** | **Float** | Indicates the size of the subnet. | [optional][readonly] |
| **name** | [**VirtualNetworkUsageName**](VirtualNetworkUsageName.md) |  | [optional] |
| **unit** | **String** | Usage units. Returns &#39;Count&#39;. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualNetworkUsage.new(
  current_value: null,
  id: null,
  limit: null,
  name: null,
  unit: null
)
```

