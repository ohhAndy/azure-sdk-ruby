# AzureRest::StorageMbCapability

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | [**CapabilityStatus**](CapabilityStatus.md) |  | [optional] |
| **reason** | **String** | Reason for the capability not being available. | [optional][readonly] |
| **supported_iops** | **Integer** | Minimum IOPS supported by the storage size. | [optional][readonly] |
| **supported_maximum_iops** | **Integer** | Maximum IOPS supported by the storage size. | [optional][readonly] |
| **storage_size_mb** | **Integer** | Minimum supported size (in MB) of storage. | [optional][readonly] |
| **maximum_storage_size_mb** | **Integer** | Maximum supported size (in MB) of storage. | [optional][readonly] |
| **supported_throughput** | **Integer** | Minimum supported throughput (in MB/s) of storage. | [optional][readonly] |
| **supported_maximum_throughput** | **Integer** | Maximum supported throughput (in MB/s) of storage. | [optional][readonly] |
| **default_iops_tier** | **String** | Default IOPS for this tier and storage size. | [optional][readonly] |
| **supported_iops_tiers** | [**Array&lt;StorageTierCapability&gt;**](StorageTierCapability.md) | List of all supported storage tiers for this tier and storage size. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::StorageMbCapability.new(
  status: null,
  reason: null,
  supported_iops: null,
  supported_maximum_iops: null,
  storage_size_mb: null,
  maximum_storage_size_mb: null,
  supported_throughput: null,
  supported_maximum_throughput: null,
  default_iops_tier: null,
  supported_iops_tiers: null
)
```

