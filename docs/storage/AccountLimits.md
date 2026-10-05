# AzureRest::AccountLimits

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **max_file_shares** | **Integer** | The maximum number of file shares limit for the storage account. | [optional][readonly] |
| **max_provisioned_storage_gi_b** | **Integer** | The maximum provisioned storage quota limit in gibibytes for the storage account. | [optional][readonly] |
| **max_provisioned_iops** | **Integer** | The maximum provisioned IOPS limit for the storage account. | [optional][readonly] |
| **max_provisioned_bandwidth_mi_b_per_sec** | **Integer** | The maximum provisioned bandwidth limit in mebibytes per second for the storage account. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::AccountLimits.new(
  max_file_shares: null,
  max_provisioned_storage_gi_b: null,
  max_provisioned_iops: null,
  max_provisioned_bandwidth_mi_b_per_sec: null
)
```

