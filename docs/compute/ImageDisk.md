# AzureSDK::ImageDisk

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **snapshot** | [**SubResource**](SubResource.md) |  | [optional] |
| **managed_disk** | [**SubResource**](SubResource.md) |  | [optional] |
| **blob_uri** | **String** | The Virtual Hard Disk. | [optional] |
| **caching** | [**CachingTypes**](CachingTypes.md) |  | [optional] |
| **disk_size_gb** | **Integer** | Specifies the size of empty data disks in gigabytes. This element can be used to overwrite the name of the disk in a virtual machine image. This value cannot be larger than 1023 GB. | [optional] |
| **storage_account_type** | [**StorageAccountTypes**](StorageAccountTypes.md) |  | [optional] |
| **disk_encryption_set** | [**DiskEncryptionSetParameters**](DiskEncryptionSetParameters.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ImageDisk.new(
  snapshot: null,
  managed_disk: null,
  blob_uri: null,
  caching: null,
  disk_size_gb: null,
  storage_account_type: null,
  disk_encryption_set: null
)
```

