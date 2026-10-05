# AzureRest::OperationList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;Operation&gt;**](Operation.md) | The Operation items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::OperationList.new(
  value: null,
  next_link: null
)
```

