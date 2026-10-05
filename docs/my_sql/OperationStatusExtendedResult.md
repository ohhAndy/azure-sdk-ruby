# AzureRest::OperationStatusExtendedResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Fully qualified ID for the async operation. | [optional] |
| **resource_id** | **String** | Fully qualified ID of the resource against which the original async operation was started. | [optional][readonly] |
| **name** | **String** | Name of the async operation. | [optional] |
| **status** | **String** | Operation status. |  |
| **percent_complete** | **Float** | Percent of the operation that is complete. | [optional] |
| **start_time** | **Time** | The start time of the operation. | [optional] |
| **end_time** | **Time** | The end time of the operation. | [optional] |
| **operations** | [**Array&lt;OperationStatusResult&gt;**](OperationStatusResult.md) | The operations list. | [optional] |
| **error** | [**ErrorDetail**](ErrorDetail.md) |  | [optional] |
| **properties** | **Hash&lt;String, Object&gt;** | The extended properties of Operation Results | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::OperationStatusExtendedResult.new(
  id: null,
  resource_id: null,
  name: null,
  status: null,
  percent_complete: null,
  start_time: null,
  end_time: null,
  operations: null,
  error: null,
  properties: null
)
```

