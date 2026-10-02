# AzureSDK::ValidationDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | [**ValidationState**](ValidationState.md) |  | [optional] |
| **validation_start_time_in_utc** | **Time** | Start time (UTC) for validation. | [optional] |
| **validation_end_time_in_utc** | **Time** | End time (UTC) for validation. | [optional] |
| **server_level_validation_details** | [**Array&lt;ValidationSummaryItem&gt;**](ValidationSummaryItem.md) | Details of server level validations. | [optional] |
| **db_level_validation_details** | [**Array&lt;DbLevelValidationStatus&gt;**](DbLevelValidationStatus.md) | Details of server level validations. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ValidationDetails.new(
  status: null,
  validation_start_time_in_utc: null,
  validation_end_time_in_utc: null,
  server_level_validation_details: null,
  db_level_validation_details: null
)
```

