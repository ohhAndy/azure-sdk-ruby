# AzureRest::MigrationList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;Migration&gt;**](Migration.md) | The Migration items on this page | [readonly] |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::MigrationList.new(
  value: null,
  next_link: null
)
```

