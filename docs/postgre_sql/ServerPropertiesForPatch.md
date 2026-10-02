# AzureSDK::ServerPropertiesForPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **administrator_login** | **String** | Name of the login designated as the first password based administrator assigned to your instance of PostgreSQL. Must be specified the first time that you enable password based authentication on a server. Once set to a given value, it cannot be changed for the rest of the life of a server. If you disable password based authentication on a server which had it enabled, this password based role isn&#39;t deleted. | [optional][readonly] |
| **administrator_login_password** | **String** | Password assigned to the administrator login. As long as password authentication is enabled, this password can be changed at any time. | [optional] |
| **version** | [**PostgresMajorVersion**](PostgresMajorVersion.md) |  | [optional] |
| **storage** | [**Storage**](Storage.md) |  | [optional] |
| **backup** | [**BackupForPatch**](BackupForPatch.md) |  | [optional] |
| **high_availability** | [**HighAvailabilityForPatch**](HighAvailabilityForPatch.md) |  | [optional] |
| **maintenance_window** | [**MaintenanceWindowForPatch**](MaintenanceWindowForPatch.md) |  | [optional] |
| **auth_config** | [**AuthConfigForPatch**](AuthConfigForPatch.md) |  | [optional] |
| **data_encryption** | [**DataEncryption**](DataEncryption.md) |  | [optional] |
| **availability_zone** | **String** | Availability zone of a server. | [optional][default to &#39;&#39;] |
| **create_mode** | [**CreateModeForPatch**](CreateModeForPatch.md) |  | [optional] |
| **replication_role** | [**ReplicationRole**](ReplicationRole.md) |  | [optional] |
| **replica** | [**Replica**](Replica.md) |  | [optional] |
| **network** | [**Network**](Network.md) |  | [optional] |
| **cluster** | [**Cluster**](Cluster.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ServerPropertiesForPatch.new(
  administrator_login: null,
  administrator_login_password: null,
  version: null,
  storage: null,
  backup: null,
  high_availability: null,
  maintenance_window: null,
  auth_config: null,
  data_encryption: null,
  availability_zone: null,
  create_mode: null,
  replication_role: null,
  replica: null,
  network: null,
  cluster: null
)
```

