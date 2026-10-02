# AzureSDK::TableProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **table_name** | **String** | Table name under the specified account | [optional][readonly] |
| **signed_identifiers** | [**Array&lt;TableSignedIdentifier&gt;**](TableSignedIdentifier.md) | List of stored access policies specified on the table. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::TableProperties.new(
  table_name: null,
  signed_identifiers: null
)
```

