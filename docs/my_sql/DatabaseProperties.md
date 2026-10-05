# AzureRest::DatabaseProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **charset** | **String** | The charset of the database. | [optional] |
| **collation** | **String** | The collation of the database. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::DatabaseProperties.new(
  charset: null,
  collation: null
)
```

