# AzureSDK::DatabaseMigrationState

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **database_name** | **String** | Name of database. | [optional] |
| **migration_state** | [**MigrationDatabaseState**](MigrationDatabaseState.md) |  | [optional] |
| **migration_operation** | **String** | Migration operation of a database. | [optional] |
| **started_on** | **Time** | Start time of a migration state. | [optional] |
| **ended_on** | **Time** | End time of a migration state. | [optional] |
| **full_load_queued_tables** | **Integer** | Number of tables queued for the migration of a database. | [optional] |
| **full_load_errored_tables** | **Integer** | Number of tables encountering errors during the migration of a database. | [optional] |
| **full_load_loading_tables** | **Integer** | Number of tables loading during the migration of a database. | [optional] |
| **full_load_completed_tables** | **Integer** | Number of tables loaded during the migration of a database. | [optional] |
| **cdc_update_counter** | **Integer** | Change Data Capture update counter. | [optional] |
| **cdc_delete_counter** | **Integer** | Change Data Capture delete counter. | [optional] |
| **cdc_insert_counter** | **Integer** | Change Data Capture insert counter. | [optional] |
| **applied_changes** | **Integer** | Change Data Capture applied changes counter. | [optional] |
| **incoming_changes** | **Integer** | Change Data Capture incoming changes counter. | [optional] |
| **latency** | **Integer** | Lag in seconds between source and target during online phase. | [optional] |
| **message** | **String** | Error message, if any, for the migration state. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::DatabaseMigrationState.new(
  database_name: null,
  migration_state: null,
  migration_operation: null,
  started_on: null,
  ended_on: null,
  full_load_queued_tables: null,
  full_load_errored_tables: null,
  full_load_loading_tables: null,
  full_load_completed_tables: null,
  cdc_update_counter: null,
  cdc_delete_counter: null,
  cdc_insert_counter: null,
  applied_changes: null,
  incoming_changes: null,
  latency: null,
  message: null
)
```

