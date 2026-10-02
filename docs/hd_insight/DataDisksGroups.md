# AzureSDK::DataDisksGroups

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **disks_per_node** | **Integer** | The number of disks per node. | [optional] |
| **storage_account_type** | **String** | ReadOnly. The storage account type. Do not set this value. | [optional][readonly] |
| **disk_size_gb** | **Integer** | ReadOnly. The DiskSize in GB. Do not set this value. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::DataDisksGroups.new(
  disks_per_node: null,
  storage_account_type: null,
  disk_size_gb: null
)
```

