# AzureSDK::InterconnectBlockListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;InterconnectBlock&gt;**](InterconnectBlock.md) | The list of Interconnect Blocks. |  |
| **next_link** | **String** | The URI to fetch the next page of Interconnect Blocks. Call ListNext() with this URI to fetch the next page of Interconnect Blocks. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::InterconnectBlockListResult.new(
  value: null,
  next_link: null
)
```

