# AzureRest::VirtualNetworkProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the virtual network. | [optional] |
| **subnet** | **String** | The name of the subnet. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualNetworkProfile.new(
  id: null,
  subnet: null
)
```

