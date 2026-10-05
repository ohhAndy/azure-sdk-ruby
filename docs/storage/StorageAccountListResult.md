# AzureRest::StorageAccountListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;StorageAccount&gt;**](StorageAccount.md) | The StorageAccount items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::StorageAccountListResult.new(
  value: null,
  next_link: null
)
```

