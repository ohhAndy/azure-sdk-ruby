# AzureSDK::MaintenanceRedeployStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_customer_initiated_maintenance_allowed** | **Boolean** | True, if customer is allowed to perform Maintenance. | [optional] |
| **pre_maintenance_window_start_time** | **Time** | Start Time for the Pre Maintenance Window. | [optional] |
| **pre_maintenance_window_end_time** | **Time** | End Time for the Pre Maintenance Window. | [optional] |
| **maintenance_window_start_time** | **Time** | Start Time for the Maintenance Window. | [optional] |
| **maintenance_window_end_time** | **Time** | End Time for the Maintenance Window. | [optional] |
| **last_operation_result_code** | [**MaintenanceOperationResultCodeTypes**](MaintenanceOperationResultCodeTypes.md) |  | [optional] |
| **last_operation_message** | **String** | Message returned for the last Maintenance Operation. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::MaintenanceRedeployStatus.new(
  is_customer_initiated_maintenance_allowed: null,
  pre_maintenance_window_start_time: null,
  pre_maintenance_window_end_time: null,
  maintenance_window_start_time: null,
  maintenance_window_end_time: null,
  last_operation_result_code: null,
  last_operation_message: null
)
```

