# AzureRest::DatabaseProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **charset** | **String** | Character set of the database. | [optional] |
| **collation** | **String** | Collation of the database. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::DatabaseProperties.new(
  charset: null,
  collation: null
)
```

