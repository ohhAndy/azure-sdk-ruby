# AzureRest::NetworkVirtualAppliancePrepareMigrationProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **migration_type** | [**MigrationType**](MigrationType.md) |  |  |
| **market_place_version** | **String** | The marketplace version to migrate to. Applicable when migrationType is MigrateToNewOSVersion. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::NetworkVirtualAppliancePrepareMigrationProperties.new(
  migration_type: null,
  market_place_version: null
)
```

