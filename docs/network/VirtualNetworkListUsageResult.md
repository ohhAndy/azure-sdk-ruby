# AzureSDK::VirtualNetworkListUsageResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;VirtualNetworkUsage&gt;**](VirtualNetworkUsage.md) | The VirtualNetworkUsage items on this page | [readonly] |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VirtualNetworkListUsageResult.new(
  value: null,
  next_link: null
)
```

