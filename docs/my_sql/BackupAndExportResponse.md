# AzureRest::BackupAndExportResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Fully qualified resource ID for the resource. E.g. \&quot;/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}\&quot; | [optional][readonly] |
| **name** | **String** | The name of the backup and export response. | [readonly] |
| **type** | **String** | The type of the resource. E.g. \&quot;Microsoft.Compute/virtualMachines\&quot; or \&quot;Microsoft.Storage/storageAccounts\&quot; | [optional][readonly] |
| **system_data** | [**SystemData**](SystemData.md) |  | [optional] |
| **properties** | [**BackupAndExportResponseProperties**](BackupAndExportResponseProperties.md) |  | [optional] |
| **error** | [**ErrorDetail**](ErrorDetail.md) |  | [optional] |
| **status** | [**OperationStatus**](OperationStatus.md) |  | [optional] |
| **start_time** | **Time** | Start time | [optional] |
| **end_time** | **Time** | End time | [optional] |
| **percent_complete** | **Float** | Operation progress (0-100). | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::BackupAndExportResponse.new(
  id: null,
  name: null,
  type: null,
  system_data: null,
  properties: null,
  error: null,
  status: null,
  start_time: null,
  end_time: null,
  percent_complete: null
)
```

