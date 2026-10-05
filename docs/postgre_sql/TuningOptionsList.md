# AzureRest::TuningOptionsList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;TuningOptions&gt;**](TuningOptions.md) | The TuningOptions items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::TuningOptionsList.new(
  value: null,
  next_link: null
)
```

