# AzureSDK::VirtualNetworkPeeringListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;VirtualNetworkPeering&gt;**](VirtualNetworkPeering.md) | The VirtualNetworkPeering items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VirtualNetworkPeeringListResult.new(
  value: null,
  next_link: null
)
```

