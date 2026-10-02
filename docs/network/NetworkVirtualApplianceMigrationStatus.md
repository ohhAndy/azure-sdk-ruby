# AzureSDK::NetworkVirtualApplianceMigrationStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **migration_type** | [**MigrationType**](MigrationType.md) |  | [optional] |
| **migration_phase** | **String** | The current phase of the migration workflow (for example, Prepare, Execute, Commit, or Abort). | [optional] |
| **migration_phase_status** | **String** | The detailed status of the current migration phase. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::NetworkVirtualApplianceMigrationStatus.new(
  migration_type: null,
  migration_phase: null,
  migration_phase_status: null
)
```

