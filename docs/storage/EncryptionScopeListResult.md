# AzureSDK::EncryptionScopeListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;EncryptionScope&gt;**](EncryptionScope.md) | The EncryptionScope items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::EncryptionScopeListResult.new(
  value: null,
  next_link: null
)
```

