# AzureRest::RestorePointEncryption

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **disk_encryption_set** | [**DiskEncryptionSetParameters**](DiskEncryptionSetParameters.md) |  | [optional] |
| **type** | [**RestorePointEncryptionType**](RestorePointEncryptionType.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::RestorePointEncryption.new(
  disk_encryption_set: null,
  type: null
)
```

