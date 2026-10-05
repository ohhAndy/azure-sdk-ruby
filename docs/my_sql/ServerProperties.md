# AzureRest::ServerProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **administrator_login** | **String** | The administrator&#39;s login name of a server. Can only be specified when the server is being created (and is required for creation). | [optional] |
| **administrator_login_password** | **String** | The password of the administrator login (required for server creation). | [optional] |
| **version** | [**ServerVersion**](ServerVersion.md) |  | [optional] |
| **full_version** | **String** | Major version and actual engine version | [optional][readonly] |
| **availability_zone** | **String** | availability Zone information of the server. | [optional] |
| **create_mode** | [**CreateMode**](CreateMode.md) |  | [optional] |
| **source_server_resource_id** | **String** | The source MySQL server id. | [optional] |
| **restore_point_in_time** | **Time** | Restore point creation time (ISO8601 format), specifying the time to restore from. | [optional] |
| **replication_role** | [**ReplicationRole**](ReplicationRole.md) |  | [optional] |
| **replica_capacity** | **Integer** | The maximum number of replicas that a primary server can have. | [optional][readonly] |
| **data_encryption** | [**DataEncryption**](DataEncryption.md) |  | [optional] |
| **state** | [**ServerState**](ServerState.md) |  | [optional] |
| **fully_qualified_domain_name** | **String** | The fully qualified domain name of a server. | [optional][readonly] |
| **database_port** | **Integer** | The server database port. Can only be specified when the server is being created. | [optional] |
| **storage** | [**Storage**](Storage.md) |  | [optional] |
| **backup** | [**Backup**](Backup.md) |  | [optional] |
| **high_availability** | [**HighAvailability**](HighAvailability.md) |  | [optional] |
| **network** | [**Network**](Network.md) |  | [optional] |
| **private_endpoint_connections** | [**Array&lt;PrivateEndpointConnection&gt;**](PrivateEndpointConnection.md) | PrivateEndpointConnections related properties of a server. | [optional][readonly] |
| **maintenance_policy** | [**MaintenancePolicy**](MaintenancePolicy.md) |  | [optional] |
| **maintenance_window** | [**MaintenanceWindow**](MaintenanceWindow.md) |  | [optional] |
| **import_source_properties** | [**ImportSourceProperties**](ImportSourceProperties.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ServerProperties.new(
  administrator_login: null,
  administrator_login_password: null,
  version: null,
  full_version: null,
  availability_zone: null,
  create_mode: null,
  source_server_resource_id: null,
  restore_point_in_time: null,
  replication_role: null,
  replica_capacity: null,
  data_encryption: null,
  state: null,
  fully_qualified_domain_name: null,
  database_port: null,
  storage: null,
  backup: null,
  high_availability: null,
  network: null,
  private_endpoint_connections: null,
  maintenance_policy: null,
  maintenance_window: null,
  import_source_properties: null
)
```

