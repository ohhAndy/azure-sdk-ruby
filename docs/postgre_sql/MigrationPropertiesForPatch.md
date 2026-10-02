# AzureSDK::MigrationPropertiesForPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_db_server_resource_id** | **String** | Identifier of the source database server resource, when &#39;sourceType&#39; is &#39;PostgreSQLSingleServer&#39;. For other source types this must be set to ipaddress:port@username or hostname:port@username. | [optional] |
| **source_db_server_fully_qualified_domain_name** | **String** | Fully qualified domain name (FQDN) or IP address of the source server. This property is optional. When provided, the migration service will always use it to connect to the source server. | [optional] |
| **target_db_server_fully_qualified_domain_name** | **String** | Fully qualified domain name (FQDN) or IP address of the target server. This property is optional. When provided, the migration service will always use it to connect to the target server. | [optional] |
| **secret_parameters** | [**MigrationSecretParametersForPatch**](MigrationSecretParametersForPatch.md) |  | [optional] |
| **dbs_to_migrate** | **Array&lt;String&gt;** | Names of databases to migrate. | [optional] |
| **setup_logical_replication_on_source_db_if_needed** | [**LogicalReplicationOnSourceServer**](LogicalReplicationOnSourceServer.md) |  | [optional] |
| **overwrite_dbs_in_target** | [**OverwriteDatabasesOnTargetServer**](OverwriteDatabasesOnTargetServer.md) |  | [optional] |
| **migration_window_start_time_in_utc** | **Time** | Start time (UTC) for migration window. | [optional] |
| **migrate_roles** | [**MigrateRolesAndPermissions**](MigrateRolesAndPermissions.md) |  | [optional] |
| **start_data_migration** | [**StartDataMigration**](StartDataMigration.md) |  | [optional] |
| **trigger_cutover** | [**TriggerCutover**](TriggerCutover.md) |  | [optional] |
| **dbs_to_trigger_cutover_on** | **Array&lt;String&gt;** | When you want to trigger cutover for specific databases set &#39;triggerCutover&#39; to &#39;True&#39; and the names of the specific databases in this array. | [optional] |
| **cancel** | [**Cancel**](Cancel.md) |  | [optional] |
| **dbs_to_cancel_migration_on** | **Array&lt;String&gt;** | When you want to trigger cancel for specific databases set &#39;triggerCutover&#39; to &#39;True&#39; and the names of the specific databases in this array. | [optional] |
| **migration_mode** | [**MigrationMode**](MigrationMode.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::MigrationPropertiesForPatch.new(
  source_db_server_resource_id: null,
  source_db_server_fully_qualified_domain_name: null,
  target_db_server_fully_qualified_domain_name: null,
  secret_parameters: null,
  dbs_to_migrate: null,
  setup_logical_replication_on_source_db_if_needed: null,
  overwrite_dbs_in_target: null,
  migration_window_start_time_in_utc: null,
  migrate_roles: null,
  start_data_migration: null,
  trigger_cutover: null,
  dbs_to_trigger_cutover_on: null,
  cancel: null,
  dbs_to_cancel_migration_on: null,
  migration_mode: null
)
```

