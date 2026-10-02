# AzureSDK::LtrBackupOperationResponseProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datasource_size_in_bytes** | **Integer** | Size of datasource in bytes. | [optional] |
| **data_transferred_in_bytes** | **Integer** | Data transferred in bytes. | [optional] |
| **backup_name** | **String** | Name of Backup operation. | [optional] |
| **backup_metadata** | **String** | Metadata to be stored in RP. Store everything that will be required to perform a successful restore using this Recovery point. e.g. Versions, DataFormat etc. | [optional] |
| **status** | [**ExecutionStatus**](ExecutionStatus.md) |  |  |
| **start_time** | **Time** | Start time of the operation. |  |
| **end_time** | **Time** | End time of the operation. | [optional] |
| **percent_complete** | **Float** | Percentage completed. | [optional] |
| **error_code** | **String** | Error code. | [optional][readonly] |
| **error_message** | **String** | Error message. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::LtrBackupOperationResponseProperties.new(
  datasource_size_in_bytes: null,
  data_transferred_in_bytes: null,
  backup_name: null,
  backup_metadata: null,
  status: null,
  start_time: null,
  end_time: null,
  percent_complete: null,
  error_code: null,
  error_message: null
)
```

