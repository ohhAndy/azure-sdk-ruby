# AzureSDK::VirtualNetworkBgpCommunities

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **virtual_network_community** | **String** | The BGP community associated with the virtual network. |  |
| **regional_community** | **String** | The BGP community associated with the region of the virtual network. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VirtualNetworkBgpCommunities.new(
  virtual_network_community: null,
  regional_community: null
)
```

