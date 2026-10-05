# AzureRest::DataShareListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;DataShare&gt;**](DataShare.md) | The DataShare items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::DataShareListResult.new(
  value: null,
  next_link: null
)
```

