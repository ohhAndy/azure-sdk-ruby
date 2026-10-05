# AzureRest::LogFileListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;LogFile&gt;**](LogFile.md) | The LogFile items on this page | [optional] |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::LogFileListResult.new(
  value: null,
  next_link: null
)
```

