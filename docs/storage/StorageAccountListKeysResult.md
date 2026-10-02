# AzureSDK::StorageAccountListKeysResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **keys** | [**Array&lt;StorageAccountKey&gt;**](StorageAccountKey.md) | Gets the list of storage account keys and their properties for the specified storage account. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::StorageAccountListKeysResult.new(
  keys: null
)
```

