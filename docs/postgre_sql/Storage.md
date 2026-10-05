# AzureRest::Storage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **storage_size_gb** | **Integer** | Size of storage assigned to a server. | [optional] |
| **auto_grow** | [**StorageAutoGrow**](StorageAutoGrow.md) |  | [optional] |
| **tier** | [**AzureManagedDiskPerformanceTier**](AzureManagedDiskPerformanceTier.md) |  | [optional] |
| **iops** | **Integer** | Maximum IOPS supported for storage. Required when type of storage is PremiumV2_LRS or UltraSSD_LRS. | [optional] |
| **throughput** | **Integer** | Maximum throughput supported for storage. Required when type of storage is PremiumV2_LRS or UltraSSD_LRS. | [optional] |
| **type** | [**StorageType**](StorageType.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::Storage.new(
  storage_size_gb: null,
  auto_grow: null,
  tier: null,
  iops: null,
  throughput: null,
  type: null
)
```

