# AzureRest::StorageAccountListKeysResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **keys** | [**Array&lt;StorageAccountKey&gt;**](StorageAccountKey.md) | Gets the list of storage account keys and their properties for the specified storage account. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::StorageAccountListKeysResult.new(
  keys: null
)
```

