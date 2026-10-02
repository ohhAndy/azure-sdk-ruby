# AzureSDK::UsagesListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;Usage&gt;**](Usage.md) | The Usage items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::UsagesListResult.new(
  value: null,
  next_link: null
)
```

