# AzureRest::ManagedHsmListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;ManagedHsm&gt;**](ManagedHsm.md) | The ManagedHsm items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ManagedHsmListResult.new(
  value: null,
  next_link: null
)
```

