# AzureRest::StorageAccountCheckNameAvailabilityParameters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The storage account name. |  |
| **type** | **String** | The type of resource, Microsoft.Storage/storageAccounts |  |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::StorageAccountCheckNameAvailabilityParameters.new(
  name: null,
  type: null
)
```

