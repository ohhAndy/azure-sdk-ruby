# AzureRest::FileShareItems

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;FileShareItem&gt;**](FileShareItem.md) | The FileShareItem items on this page | [readonly] |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::FileShareItems.new(
  value: null,
  next_link: null
)
```

