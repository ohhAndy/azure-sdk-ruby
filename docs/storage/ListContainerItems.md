# AzureRest::ListContainerItems

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;ListContainerItem&gt;**](ListContainerItem.md) | The ListContainerItem items on this page | [readonly] |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ListContainerItems.new(
  value: null,
  next_link: null
)
```

