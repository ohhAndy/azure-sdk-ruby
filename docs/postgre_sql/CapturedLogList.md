# AzureRest::CapturedLogList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;CapturedLog&gt;**](CapturedLog.md) | The CapturedLog items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::CapturedLogList.new(
  value: null,
  next_link: null
)
```

