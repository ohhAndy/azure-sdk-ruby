# AzureRest::DiskInstanceView

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The disk name. | [optional] |
| **encryption_settings** | [**Array&lt;DiskEncryptionSettings&gt;**](DiskEncryptionSettings.md) | Specifies the encryption settings for the OS Disk. &lt;br&gt;&lt;br&gt; Minimum api-version: 2015-06-15 | [optional] |
| **statuses** | [**Array&lt;InstanceViewStatus&gt;**](InstanceViewStatus.md) | The resource status information. | [optional] |
| **storage_alignment_status** | [**StorageAlignmentStatus**](StorageAlignmentStatus.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::DiskInstanceView.new(
  name: null,
  encryption_settings: null,
  statuses: null,
  storage_alignment_status: null
)
```

