# AzureSDK::StorageEditionCapability

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | [**CapabilityStatus**](CapabilityStatus.md) |  | [optional] |
| **reason** | **String** | Reason for the capability not being available. | [optional][readonly] |
| **name** | **String** | Name of storage tier. | [optional][readonly] |
| **default_storage_size_mb** | **Integer** | Default storage size (in MB) for this storage tier. | [optional][readonly] |
| **supported_storage_mb** | [**Array&lt;StorageMbCapability&gt;**](StorageMbCapability.md) | Configurations of storage supported for this storage tier. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::StorageEditionCapability.new(
  status: null,
  reason: null,
  name: null,
  default_storage_size_mb: null,
  supported_storage_mb: null
)
```

