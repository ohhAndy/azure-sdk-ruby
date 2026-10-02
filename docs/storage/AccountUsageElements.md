# AzureSDK::AccountUsageElements

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_share_count** | **Integer** | The total number of file shares. | [optional][readonly] |
| **provisioned_storage_gi_b** | **Integer** | The total provisioned storage quota in gibibytes. | [optional][readonly] |
| **provisioned_iops** | **Integer** | The total provisioned IOPS. | [optional][readonly] |
| **provisioned_bandwidth_mi_b_per_sec** | **Integer** | The total provisioned bandwidth in mebibytes per second. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::AccountUsageElements.new(
  file_share_count: null,
  provisioned_storage_gi_b: null,
  provisioned_iops: null,
  provisioned_bandwidth_mi_b_per_sec: null
)
```

