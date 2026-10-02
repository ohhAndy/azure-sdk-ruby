# AzureSDK::ServerListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;Server&gt;**](Server.md) | The Server items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ServerListResult.new(
  value: null,
  next_link: null
)
```

