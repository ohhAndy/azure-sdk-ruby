# AzureRest::BackupAndExportResponseType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datasource_size_in_bytes** | **Integer** | Size of datasource in bytes | [optional] |
| **data_transferred_in_bytes** | **Integer** | Data transferred in bytes | [optional] |
| **backup_metadata** | **String** | Metadata related to backup to be stored for restoring resource in key-value pairs. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::BackupAndExportResponseType.new(
  datasource_size_in_bytes: null,
  data_transferred_in_bytes: null,
  backup_metadata: null
)
```

