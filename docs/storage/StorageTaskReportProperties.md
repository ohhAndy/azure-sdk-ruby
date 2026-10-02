# AzureSDK::StorageTaskReportProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **task_assignment_id** | **String** | Represents the Storage Task Assignment Id associated with the storage task that provided an execution context. | [optional][readonly] |
| **storage_account_id** | **String** | Represents the Storage Account Id where the storage task definition was applied and executed. | [optional][readonly] |
| **start_time** | **String** | Start time of the run instance. Filter options such as startTime gt &#39;2023-06-26T20:51:24.4494016Z&#39; and other comparison operators can be used as described for DateTime properties in https://learn.microsoft.com/rest/api/storageservices/querying-tables-and-entities#supported-comparison-operators | [optional][readonly] |
| **finish_time** | **String** | End time of the run instance. Filter options such as startTime gt &#39;2023-06-26T20:51:24.4494016Z&#39; and other comparison operators can be used as described for DateTime properties in https://learn.microsoft.com/rest/api/storageservices/querying-tables-and-entities#supported-comparison-operators | [optional][readonly] |
| **objects_targeted_count** | **String** | Total number of objects that meet the condition as defined in the storage task assignment execution context. Filter options such as objectsTargetedCount gt 50 and other comparison operators can be used as described for Numerical properties in https://learn.microsoft.com/rest/api/storageservices/querying-tables-and-entities#supported-comparison-operators | [optional][readonly] |
| **objects_operated_on_count** | **String** | Total number of objects that meet the storage tasks condition and were operated upon. Filter options such as objectsOperatedOnCount ge 100 and other comparison operators can be used as described for Numerical properties in https://learn.microsoft.com/rest/api/storageservices/querying-tables-and-entities#supported-comparison-operators | [optional][readonly] |
| **object_failed_count** | **String** | Total number of objects where task operation failed when was attempted. Filter options such as objectFailedCount eq 0 and other comparison operators can be used as described for Numerical properties in https://learn.microsoft.com/rest/api/storageservices/querying-tables-and-entities#supported-comparison-operators | [optional][readonly] |
| **objects_succeeded_count** | **String** | Total number of objects where task operation succeeded when was attempted.Filter options such as objectsSucceededCount gt 150 and other comparison operators can be used as described for Numerical properties in https://learn.microsoft.com/rest/api/storageservices/querying-tables-and-entities#supported-comparison-operators | [optional][readonly] |
| **run_status_error** | **String** | Well known Azure Storage error code that represents the error encountered during execution of the run instance. | [optional][readonly] |
| **run_status_enum** | [**RunStatusEnum**](RunStatusEnum.md) |  | [optional] |
| **summary_report_path** | **String** | Full path to the verbose report stored in the reporting container as specified in the assignment execution context for the storage account. | [optional][readonly] |
| **task_id** | **String** | Storage Task Arm Id. | [optional][readonly] |
| **task_version** | **String** | Storage Task Version | [optional][readonly] |
| **run_result** | [**RunResult**](RunResult.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::StorageTaskReportProperties.new(
  task_assignment_id: null,
  storage_account_id: null,
  start_time: null,
  finish_time: null,
  objects_targeted_count: null,
  objects_operated_on_count: null,
  object_failed_count: null,
  objects_succeeded_count: null,
  run_status_error: null,
  run_status_enum: null,
  summary_report_path: null,
  task_id: null,
  task_version: null,
  run_result: null
)
```

