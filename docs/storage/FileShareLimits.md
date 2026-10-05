# AzureRest::FileShareLimits

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **min_provisioned_storage_gi_b** | **Integer** | The minimum provisioned storage quota limit in gibibytes for a file share in the storage account. | [optional][readonly] |
| **max_provisioned_storage_gi_b** | **Integer** | The maximum provisioned storage quota limit in gibibytes for a file share in the storage account. | [optional][readonly] |
| **min_provisioned_iops** | **Integer** | The minimum provisioned IOPS limit for a file share in the storage account. | [optional][readonly] |
| **max_provisioned_iops** | **Integer** | The maximum provisioned IOPS limit for a file share in the storage account. | [optional][readonly] |
| **min_provisioned_bandwidth_mi_b_per_sec** | **Integer** | The minimum provisioned bandwidth limit in mebibytes per second for a file share in the storage account. | [optional][readonly] |
| **max_provisioned_bandwidth_mi_b_per_sec** | **Integer** | The maximum provisioned bandwidth limit in mebibytes per second for a file share in the storage account. | [optional][readonly] |
| **guardrail_io_scalar** | **Float** | The IO scalar used for guardrail calculations for a file share in the storage account. | [optional][readonly] |
| **guardrail_bandwidth_scalar** | **Float** | The bandwidth scalar used for guardrail calculations for a file share in the storage account. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::FileShareLimits.new(
  min_provisioned_storage_gi_b: null,
  max_provisioned_storage_gi_b: null,
  min_provisioned_iops: null,
  max_provisioned_iops: null,
  min_provisioned_bandwidth_mi_b_per_sec: null,
  max_provisioned_bandwidth_mi_b_per_sec: null,
  guardrail_io_scalar: null,
  guardrail_bandwidth_scalar: null
)
```

