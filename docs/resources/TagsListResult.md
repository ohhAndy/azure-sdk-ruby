# AzureSDK::TagsListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;TagDetails&gt;**](TagDetails.md) | The TagDetails items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::TagsListResult.new(
  value: null,
  next_link: null
)
```

