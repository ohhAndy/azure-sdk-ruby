# AzureSDK::VirtualNetworkListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;VirtualNetwork&gt;**](VirtualNetwork.md) | The VirtualNetwork items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VirtualNetworkListResult.new(
  value: null,
  next_link: null
)
```

