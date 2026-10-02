# AzureSDK::CapturedLogList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;CapturedLog&gt;**](CapturedLog.md) | The CapturedLog items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::CapturedLogList.new(
  value: null,
  next_link: null
)
```

