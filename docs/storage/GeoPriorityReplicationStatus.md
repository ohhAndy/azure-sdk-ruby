# AzureRest::GeoPriorityReplicationStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_blob_enabled** | **Boolean** | Indicates whether Blob Geo Priority Replication is enabled for the storage account. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::GeoPriorityReplicationStatus.new(
  is_blob_enabled: null
)
```

