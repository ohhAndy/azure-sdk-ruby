# AzureRest::DeletedAccountListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;DeletedAccount&gt;**](DeletedAccount.md) | The DeletedAccount items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::DeletedAccountListResult.new(
  value: null,
  next_link: null
)
```

