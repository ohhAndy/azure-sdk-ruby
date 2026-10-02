# AzureSDK::DatabaseProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **charset** | **String** | Character set of the database. | [optional] |
| **collation** | **String** | Collation of the database. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::DatabaseProperties.new(
  charset: null,
  collation: null
)
```

