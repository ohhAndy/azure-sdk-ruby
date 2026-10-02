# AzureSDK::DeletedVaultListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;DeletedVault&gt;**](DeletedVault.md) | The DeletedVault items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::DeletedVaultListResult.new(
  value: null,
  next_link: null
)
```

