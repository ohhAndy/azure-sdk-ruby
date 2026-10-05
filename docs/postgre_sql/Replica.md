# AzureRest::Replica

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **role** | [**ReplicationRole**](ReplicationRole.md) |  | [optional] |
| **capacity** | **Integer** | Maximum number of read replicas allowed for a server. | [optional][readonly] |
| **replication_state** | [**ReplicationState**](ReplicationState.md) |  | [optional] |
| **promote_mode** | [**ReadReplicaPromoteMode**](ReadReplicaPromoteMode.md) |  | [optional] |
| **promote_option** | [**ReadReplicaPromoteOption**](ReadReplicaPromoteOption.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::Replica.new(
  role: null,
  capacity: null,
  replication_state: null,
  promote_mode: null,
  promote_option: null
)
```

