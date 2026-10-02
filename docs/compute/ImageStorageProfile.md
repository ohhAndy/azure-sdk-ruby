# AzureSDK::ImageStorageProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **os_disk** | [**ImageOSDisk**](ImageOSDisk.md) |  | [optional] |
| **data_disks** | [**Array&lt;ImageDataDisk&gt;**](ImageDataDisk.md) | Specifies the parameters that are used to add a data disk to a virtual machine. &lt;br&gt;&lt;br&gt; For more information about disks, see [About disks and VHDs for Azure virtual machines](https://docs.microsoft.com/azure/virtual-machines/managed-disks-overview). | [optional] |
| **zone_resilient** | **Boolean** | Specifies whether an image is zone resilient or not. Default is false. Zone resilient images can be created only in regions that provide Zone Redundant Storage (ZRS). | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ImageStorageProfile.new(
  os_disk: null,
  data_disks: null,
  zone_resilient: null
)
```

