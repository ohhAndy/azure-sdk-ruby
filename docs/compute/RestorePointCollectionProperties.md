# AzureRest::RestorePointCollectionProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source** | [**RestorePointCollectionSourceProperties**](RestorePointCollectionSourceProperties.md) |  | [optional] |
| **provisioning_state** | **String** | The provisioning state of the restore point collection. | [optional][readonly] |
| **restore_point_collection_id** | **String** | The unique id of the restore point collection. | [optional][readonly] |
| **restore_points** | [**Array&lt;RestorePoint&gt;**](RestorePoint.md) | A list containing all restore points created under this restore point collection. | [optional][readonly] |
| **instant_access** | **Boolean** | This property determines whether instant access snapshot is enabled for restore points created under this restore point collection for Premium SSD v2 or Ultra disk. Instant access snapshot for Premium SSD v2 or Ultra disk is instantaneously available for restoring disk with fast restore performance. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::RestorePointCollectionProperties.new(
  source: null,
  provisioning_state: null,
  restore_point_collection_id: null,
  restore_points: null,
  instant_access: null
)
```

