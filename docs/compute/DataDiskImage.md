# AzureSDK::DataDiskImage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lun** | **Integer** | Specifies the logical unit number of the data disk. This value is used to identify data disks within the VM and therefore must be unique for each data disk attached to a VM. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::DataDiskImage.new(
  lun: null
)
```

