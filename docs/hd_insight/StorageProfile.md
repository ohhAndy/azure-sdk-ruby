# AzureRest::StorageProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **storageaccounts** | [**Array&lt;StorageAccount&gt;**](StorageAccount.md) | The list of storage accounts in the cluster. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::StorageProfile.new(
  storageaccounts: null
)
```

