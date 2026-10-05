# AzureRest::MigrationNameAvailability

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the migration to check for validity and availability. |  |
| **type** | **String** | Type of resource. |  |
| **name_available** | **Boolean** | Indicates if the migration name is available. | [optional][readonly] |
| **reason** | [**MigrationNameAvailabilityReason**](MigrationNameAvailabilityReason.md) |  | [optional] |
| **message** | **String** | Migration name availability message. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::MigrationNameAvailability.new(
  name: null,
  type: null,
  name_available: null,
  reason: null,
  message: null
)
```

