# AzureRest::DeletedAccountProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **storage_account_resource_id** | **String** | Full resource id of the original storage account. | [optional][readonly] |
| **location** | **String** | Location of the deleted account. | [optional][readonly] |
| **restore_reference** | **String** | Can be used to attempt recovering this deleted account via PutStorageAccount API. | [optional][readonly] |
| **creation_time** | **String** | Creation time of the deleted account. | [optional][readonly] |
| **deletion_time** | **String** | Deletion time of the deleted account. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::DeletedAccountProperties.new(
  storage_account_resource_id: null,
  location: null,
  restore_reference: null,
  creation_time: null,
  deletion_time: null
)
```

