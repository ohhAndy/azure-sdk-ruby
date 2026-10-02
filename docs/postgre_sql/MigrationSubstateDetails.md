# AzureSDK::MigrationSubstateDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **current_sub_state** | [**MigrationSubstate**](MigrationSubstate.md) |  | [optional] |
| **db_details** | [**Hash&lt;String, DatabaseMigrationState&gt;**](DatabaseMigrationState.md) |  | [optional] |
| **validation_details** | [**ValidationDetails**](ValidationDetails.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::MigrationSubstateDetails.new(
  current_sub_state: null,
  db_details: null,
  validation_details: null
)
```

