# AzureSDK::BurstingConstants

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **burst_floor_iops** | **Integer** | The guaranteed floor of burst IOPS for small file shares. | [optional][readonly] |
| **burst_io_scalar** | **Float** | The scalar against provisioned IOPS in the file share included burst IOPS formula. | [optional][readonly] |
| **burst_timeframe_seconds** | **Integer** | The time frame for bursting in seconds in the file share maximum burst credits for IOPS formula. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::BurstingConstants.new(
  burst_floor_iops: null,
  burst_io_scalar: null,
  burst_timeframe_seconds: null
)
```

