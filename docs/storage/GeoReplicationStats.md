# AzureSDK::GeoReplicationStats

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | [**GeoReplicationStatus**](GeoReplicationStatus.md) |  | [optional] |
| **last_sync_time** | **Time** | All primary writes preceding this UTC date/time value are guaranteed to be available for read operations. Primary writes following this point in time may or may not be available for reads. Element may be default value if value of LastSyncTime is not available, this can happen if secondary is offline or we are in bootstrap. | [optional][readonly] |
| **can_failover** | **Boolean** | A boolean flag which indicates whether or not account failover is supported for the account. | [optional][readonly] |
| **can_planned_failover** | **Boolean** | A boolean flag which indicates whether or not planned account failover is supported for the account. | [optional][readonly] |
| **post_failover_redundancy** | [**PostFailoverRedundancy**](PostFailoverRedundancy.md) |  | [optional] |
| **post_planned_failover_redundancy** | [**PostPlannedFailoverRedundancy**](PostPlannedFailoverRedundancy.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::GeoReplicationStats.new(
  status: null,
  last_sync_time: null,
  can_failover: null,
  can_planned_failover: null,
  post_failover_redundancy: null,
  post_planned_failover_redundancy: null
)
```

