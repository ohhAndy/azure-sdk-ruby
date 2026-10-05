# AzureRest::VMDiskSecurityProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **security_encryption_type** | [**SecurityEncryptionTypes**](SecurityEncryptionTypes.md) |  | [optional] |
| **disk_encryption_set** | [**DiskEncryptionSetParameters**](DiskEncryptionSetParameters.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VMDiskSecurityProfile.new(
  security_encryption_type: null,
  disk_encryption_set: null
)
```

