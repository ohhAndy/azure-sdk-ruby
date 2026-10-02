# AzureSDK::KeyListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;Key&gt;**](Key.md) | The Key items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::KeyListResult.new(
  value: null,
  next_link: null
)
```

