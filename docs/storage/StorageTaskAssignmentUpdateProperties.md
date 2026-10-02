# AzureSDK::StorageTaskAssignmentUpdateProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **task_id** | **String** | Id of the corresponding storage task | [optional][readonly] |
| **enabled** | **Boolean** | Whether the storage task assignment is enabled or not | [optional] |
| **description** | **String** | Text that describes the purpose of the storage task assignment | [optional] |
| **execution_context** | [**StorageTaskAssignmentUpdateExecutionContext**](StorageTaskAssignmentUpdateExecutionContext.md) |  | [optional] |
| **report** | [**StorageTaskAssignmentUpdateReport**](StorageTaskAssignmentUpdateReport.md) |  | [optional] |
| **provisioning_state** | [**StorageTaskAssignmentProvisioningState**](StorageTaskAssignmentProvisioningState.md) |  | [optional] |
| **run_status** | [**StorageTaskReportProperties**](StorageTaskReportProperties.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::StorageTaskAssignmentUpdateProperties.new(
  task_id: null,
  enabled: null,
  description: null,
  execution_context: null,
  report: null,
  provisioning_state: null,
  run_status: null
)
```

