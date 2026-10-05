# AzureRest::DiskRestorePointAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Resource Id | [optional][readonly] |
| **encryption** | [**RestorePointEncryption**](RestorePointEncryption.md) |  | [optional] |
| **source_disk_restore_point** | [**ApiEntityReference**](ApiEntityReference.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::DiskRestorePointAttributes.new(
  id: null,
  encryption: null,
  source_disk_restore_point: null
)
```

