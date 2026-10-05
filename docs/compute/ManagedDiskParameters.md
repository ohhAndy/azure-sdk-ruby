# AzureRest::ManagedDiskParameters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Resource Id | [optional] |
| **storage_account_type** | [**StorageAccountTypes**](StorageAccountTypes.md) |  | [optional] |
| **disk_encryption_set** | [**DiskEncryptionSetParameters**](DiskEncryptionSetParameters.md) |  | [optional] |
| **security_profile** | [**VMDiskSecurityProfile**](VMDiskSecurityProfile.md) |  | [optional] |
| **additional_disk_properties** | [**AdditionalDiskProperties**](AdditionalDiskProperties.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ManagedDiskParameters.new(
  id: null,
  storage_account_type: null,
  disk_encryption_set: null,
  security_profile: null,
  additional_disk_properties: null
)
```

