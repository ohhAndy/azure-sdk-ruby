# AzureRest::RestorePointProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **exclude_disks** | [**Array&lt;ApiEntityReference&gt;**](ApiEntityReference.md) | List of disk resource ids that the customer wishes to exclude from the restore point. If no disks are specified, all disks will be included. | [optional] |
| **source_metadata** | [**RestorePointSourceMetadata**](RestorePointSourceMetadata.md) |  | [optional] |
| **provisioning_state** | **String** | Gets the provisioning state of the restore point. | [optional][readonly] |
| **consistency_mode** | [**ConsistencyModeTypes**](ConsistencyModeTypes.md) |  | [optional] |
| **time_created** | **Time** | Gets the creation time of the restore point. | [optional] |
| **source_restore_point** | [**ApiEntityReference**](ApiEntityReference.md) |  | [optional] |
| **instance_view** | [**RestorePointInstanceView**](RestorePointInstanceView.md) |  | [optional] |
| **instant_access_duration_minutes** | **Integer** | This property determines the time in minutes the snapshot is retained as instant access for restoring Premium SSD v2 or Ultra disk with fast restore performance in this restore point. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::RestorePointProperties.new(
  exclude_disks: null,
  source_metadata: null,
  provisioning_state: null,
  consistency_mode: null,
  time_created: null,
  source_restore_point: null,
  instance_view: null,
  instant_access_duration_minutes: null
)
```

