# AzureSDK::StorageTierCapability

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | [**CapabilityStatus**](CapabilityStatus.md) |  | [optional] |
| **reason** | **String** | Reason for the capability not being available. | [optional][readonly] |
| **name** | **String** | Name of the storage tier. | [optional][readonly] |
| **iops** | **Integer** | Supported IOPS for the storage tier. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::StorageTierCapability.new(
  status: null,
  reason: null,
  name: null,
  iops: null
)
```

