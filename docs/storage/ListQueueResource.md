# AzureRest::ListQueueResource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;ListQueue&gt;**](ListQueue.md) | The ListQueue items on this page | [readonly] |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ListQueueResource.new(
  value: null,
  next_link: null
)
```

