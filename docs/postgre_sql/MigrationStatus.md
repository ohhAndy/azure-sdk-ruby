# AzureSDK::MigrationStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **state** | [**MigrationState**](MigrationState.md) |  | [optional] |
| **error** | **String** | Error message, if any, for the migration state. | [optional][readonly] |
| **current_sub_state_details** | [**MigrationSubstateDetails**](MigrationSubstateDetails.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::MigrationStatus.new(
  state: null,
  error: null,
  current_sub_state_details: null
)
```

