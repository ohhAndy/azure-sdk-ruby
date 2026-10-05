# AzureRest::ServerPropertiesForUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **administrator_login_password** | **String** | The password of the administrator login. | [optional] |
| **version** | [**ServerVersion**](ServerVersion.md) |  | [optional] |
| **storage** | [**Storage**](Storage.md) |  | [optional] |
| **backup** | [**Backup**](Backup.md) |  | [optional] |
| **high_availability** | [**HighAvailability**](HighAvailability.md) |  | [optional] |
| **maintenance_policy** | [**MaintenancePolicy**](MaintenancePolicy.md) |  | [optional] |
| **maintenance_window** | [**MaintenanceWindow**](MaintenanceWindow.md) |  | [optional] |
| **replication_role** | [**ReplicationRole**](ReplicationRole.md) |  | [optional] |
| **data_encryption** | [**DataEncryption**](DataEncryption.md) |  | [optional] |
| **network** | [**Network**](Network.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ServerPropertiesForUpdate.new(
  administrator_login_password: null,
  version: null,
  storage: null,
  backup: null,
  high_availability: null,
  maintenance_policy: null,
  maintenance_window: null,
  replication_role: null,
  data_encryption: null,
  network: null
)
```

