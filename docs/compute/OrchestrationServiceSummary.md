# AzureSDK::OrchestrationServiceSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_name** | [**OrchestrationServiceNames**](OrchestrationServiceNames.md) |  | [optional] |
| **service_state** | [**OrchestrationServiceState**](OrchestrationServiceState.md) |  | [optional] |
| **latest_operation_status** | [**OrchestrationServiceOperationStatus**](OrchestrationServiceOperationStatus.md) |  | [optional] |
| **last_status_change_time** | **Time** | The last UTC time when the operation status changed. Minimum API version for this property is 2025-04-01. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::OrchestrationServiceSummary.new(
  service_name: null,
  service_state: null,
  latest_operation_status: null,
  last_status_change_time: null
)
```

