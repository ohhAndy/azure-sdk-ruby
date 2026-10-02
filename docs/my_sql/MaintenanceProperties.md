# AzureSDK::MaintenanceProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **maintenance_type** | [**MaintenanceType**](MaintenanceType.md) |  | [optional] |
| **maintenance_state** | [**MaintenanceState**](MaintenanceState.md) |  | [optional] |
| **maintenance_start_time** | **Time** | The start time for a maintenance. | [optional] |
| **maintenance_end_time** | **Time** | The end time for a maintenance. | [optional][readonly] |
| **maintenance_execution_start_time** | **Time** | The start time for a maintenance execution. | [optional][readonly] |
| **maintenance_execution_end_time** | **Time** | The end time for a maintenance execution. | [optional][readonly] |
| **maintenance_available_schedule_min_time** | **Time** | The min time the maintenance can be rescheduled. | [optional][readonly] |
| **maintenance_available_schedule_max_time** | **Time** | The max time the maintenance can be rescheduled. | [optional][readonly] |
| **maintenance_title** | **String** | The maintenance title. | [optional][readonly] |
| **maintenance_description** | **String** | The maintenance description. | [optional][readonly] |
| **provisioning_state** | [**MaintenanceProvisioningState**](MaintenanceProvisioningState.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::MaintenanceProperties.new(
  maintenance_type: null,
  maintenance_state: null,
  maintenance_start_time: null,
  maintenance_end_time: null,
  maintenance_execution_start_time: null,
  maintenance_execution_end_time: null,
  maintenance_available_schedule_min_time: null,
  maintenance_available_schedule_max_time: null,
  maintenance_title: null,
  maintenance_description: null,
  provisioning_state: null
)
```

