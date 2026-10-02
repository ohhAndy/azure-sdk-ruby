# AzureSDK::RestorePointEncryption

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **disk_encryption_set** | [**DiskEncryptionSetParameters**](DiskEncryptionSetParameters.md) |  | [optional] |
| **type** | [**RestorePointEncryptionType**](RestorePointEncryptionType.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::RestorePointEncryption.new(
  disk_encryption_set: null,
  type: null
)
```

