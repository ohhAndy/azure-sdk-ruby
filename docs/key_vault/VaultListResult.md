# AzureSDK::VaultListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;Vault&gt;**](Vault.md) | The Vault items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VaultListResult.new(
  value: null,
  next_link: null
)
```

