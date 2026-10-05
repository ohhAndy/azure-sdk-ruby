# AzureRest::DatabaseList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;Database&gt;**](Database.md) | The Database items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::DatabaseList.new(
  value: null,
  next_link: null
)
```

