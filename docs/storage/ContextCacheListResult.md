# AzureRest::ContextCacheListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;ContextCache&gt;**](ContextCache.md) | The ContextCache items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ContextCacheListResult.new(
  value: null,
  next_link: null
)
```

