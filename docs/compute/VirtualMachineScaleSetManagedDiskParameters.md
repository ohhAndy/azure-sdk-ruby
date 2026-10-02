# AzureSDK::VirtualMachineScaleSetManagedDiskParameters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **storage_account_type** | [**StorageAccountTypes**](StorageAccountTypes.md) |  | [optional] |
| **disk_encryption_set** | [**DiskEncryptionSetParameters**](DiskEncryptionSetParameters.md) |  | [optional] |
| **security_profile** | [**VMDiskSecurityProfile**](VMDiskSecurityProfile.md) |  | [optional] |
| **additional_disk_properties** | [**AdditionalDiskProperties**](AdditionalDiskProperties.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VirtualMachineScaleSetManagedDiskParameters.new(
  storage_account_type: null,
  disk_encryption_set: null,
  security_profile: null,
  additional_disk_properties: null
)
```

