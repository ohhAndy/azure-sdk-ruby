# AzureSDK::StorageTaskAssignmentProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **task_id** | **String** | Id of the corresponding storage task |  |
| **enabled** | **Boolean** | Whether the storage task assignment is enabled or not |  |
| **description** | **String** | Text that describes the purpose of the storage task assignment |  |
| **execution_context** | [**StorageTaskAssignmentExecutionContext**](StorageTaskAssignmentExecutionContext.md) |  |  |
| **report** | [**StorageTaskAssignmentReport**](StorageTaskAssignmentReport.md) |  |  |
| **provisioning_state** | [**StorageTaskAssignmentProvisioningState**](StorageTaskAssignmentProvisioningState.md) |  | [optional] |
| **run_status** | [**StorageTaskReportProperties**](StorageTaskReportProperties.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::StorageTaskAssignmentProperties.new(
  task_id: null,
  enabled: null,
  description: null,
  execution_context: null,
  report: null,
  provisioning_state: null,
  run_status: null
)
```

