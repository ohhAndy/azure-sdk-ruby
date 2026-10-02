# AzureSDK::DataDisksToAttach

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **disk_id** | **String** | ID of the managed data disk. |  |
| **lun** | **Integer** | The logical unit number of the data disk. This value is used to identify data disks within the VM and therefore must be unique for each data disk attached to a VM. If not specified, lun would be auto assigned. | [optional] |
| **caching** | [**CachingTypes**](CachingTypes.md) |  | [optional] |
| **delete_option** | [**DiskDeleteOptionTypes**](DiskDeleteOptionTypes.md) |  | [optional] |
| **disk_encryption_set** | [**DiskEncryptionSetParameters**](DiskEncryptionSetParameters.md) |  | [optional] |
| **write_accelerator_enabled** | **Boolean** | Specifies whether writeAccelerator should be enabled or disabled on the disk. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::DataDisksToAttach.new(
  disk_id: null,
  lun: null,
  caching: null,
  delete_option: null,
  disk_encryption_set: null,
  write_accelerator_enabled: null
)
```

