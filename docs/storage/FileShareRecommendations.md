# AzureSDK::FileShareRecommendations

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **base_iops** | **Integer** | The base IOPS in the file share provisioned IOPS recommendation formula. | [optional][readonly] |
| **io_scalar** | **Float** | The scalar for IO in the file share provisioned IOPS recommendation formula. | [optional][readonly] |
| **base_bandwidth_mi_b_per_sec** | **Integer** | The base bandwidth in the file share provisioned bandwidth recommendation formula. | [optional][readonly] |
| **bandwidth_scalar** | **Float** | The scalar for bandwidth in the file share provisioned bandwidth recommendation formula. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::FileShareRecommendations.new(
  base_iops: null,
  io_scalar: null,
  base_bandwidth_mi_b_per_sec: null,
  bandwidth_scalar: null
)
```

