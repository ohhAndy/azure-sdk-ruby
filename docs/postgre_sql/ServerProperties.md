# AzureSDK::ServerProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **administrator_login** | **String** | Name of the login designated as the first password based administrator assigned to your instance of PostgreSQL. Must be specified the first time that you enable password based authentication on a server. Once set to a given value, it cannot be changed for the rest of the life of a server. If you disable password based authentication on a server which had it enabled, this password based role isn&#39;t deleted. | [optional] |
| **administrator_login_password** | **String** | Password assigned to the administrator login. As long as password authentication is enabled, this password can be changed at any time. | [optional] |
| **version** | [**PostgresMajorVersion**](PostgresMajorVersion.md) |  | [optional] |
| **minor_version** | **String** | Minor version of PostgreSQL database engine. | [optional][readonly] |
| **state** | [**ServerState**](ServerState.md) |  | [optional] |
| **fully_qualified_domain_name** | **String** | Fully qualified domain name of a server. | [optional][readonly] |
| **storage** | [**Storage**](Storage.md) |  | [optional] |
| **auth_config** | [**AuthConfig**](AuthConfig.md) |  | [optional] |
| **data_encryption** | [**DataEncryption**](DataEncryption.md) |  | [optional] |
| **backup** | [**Backup**](Backup.md) |  | [optional] |
| **network** | [**Network**](Network.md) |  | [optional] |
| **high_availability** | [**HighAvailability**](HighAvailability.md) |  | [optional] |
| **maintenance_window** | [**MaintenanceWindow**](MaintenanceWindow.md) |  | [optional] |
| **source_server_resource_id** | **String** | Identifier of the server to be used as the source of the new server. Required when &#39;createMode&#39; is &#39;PointInTimeRestore&#39;, &#39;GeoRestore&#39;, &#39;Replica&#39;, or &#39;ReviveDropped&#39;. This property is returned only when the target server is a read replica. | [optional] |
| **point_in_time_utc** | **Time** | Creation time (in ISO8601 format) of the backup which you want to restore in the new server. It&#39;s required when &#39;createMode&#39; is &#39;PointInTimeRestore&#39;, &#39;GeoRestore&#39;, or &#39;ReviveDropped&#39;. | [optional] |
| **availability_zone** | **String** | Availability zone of a server. | [optional][default to &#39;&#39;] |
| **replication_role** | [**ReplicationRole**](ReplicationRole.md) |  | [optional] |
| **replica_capacity** | **Integer** | Maximum number of read replicas allowed for a server. | [optional][readonly] |
| **replica** | [**Replica**](Replica.md) |  | [optional] |
| **create_mode** | [**CreateMode**](CreateMode.md) |  | [optional] |
| **private_endpoint_connections** | [**Array&lt;PrivateEndpointConnection&gt;**](PrivateEndpointConnection.md) | List of private endpoint connections associated with the specified server. | [optional][readonly] |
| **cluster** | [**Cluster**](Cluster.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ServerProperties.new(
  administrator_login: null,
  administrator_login_password: null,
  version: null,
  minor_version: null,
  state: null,
  fully_qualified_domain_name: null,
  storage: null,
  auth_config: null,
  data_encryption: null,
  backup: null,
  network: null,
  high_availability: null,
  maintenance_window: null,
  source_server_resource_id: null,
  point_in_time_utc: null,
  availability_zone: null,
  replication_role: null,
  replica_capacity: null,
  replica: null,
  create_mode: null,
  private_endpoint_connections: null,
  cluster: null
)
```

