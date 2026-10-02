# AzureSDK::ImportNewDatabaseDefinition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **database_name** | **String** | Name of the import database. | [optional] |
| **edition** | **String** | Edition of the import database. | [optional] |
| **service_objective_name** | **String** | Service level objective name of the import database. | [optional] |
| **max_size_bytes** | **String** | Max size in bytes for the import database. | [optional] |
| **storage_key_type** | [**StorageKeyType**](StorageKeyType.md) |  |  |
| **storage_key** | **String** | Storage key for the storage account. If StorageKeyType is ManagedIdentity, this field should specify the Managed Identity&#39;s resource ID. |  |
| **storage_uri** | **String** | Storage Uri. |  |
| **administrator_login** | **String** | Administrator login name. If AuthenticationType is ManagedIdentity, this field should specify the Managed Identity&#39;s resource ID. |  |
| **administrator_login_password** | **String** | Administrator login password. If AuthenticationType is ManagedIdentity, this field should not be specified. | [optional] |
| **authentication_type** | **String** | Type of credentials provided for access to the target SQL server: SQL, ADPassword or ManagedIdentity. | [optional] |
| **network_isolation** | [**NetworkIsolationSettings**](NetworkIsolationSettings.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ImportNewDatabaseDefinition.new(
  database_name: null,
  edition: null,
  service_objective_name: null,
  max_size_bytes: null,
  storage_key_type: null,
  storage_key: null,
  storage_uri: null,
  administrator_login: null,
  administrator_login_password: null,
  authentication_type: null,
  network_isolation: null
)
```

