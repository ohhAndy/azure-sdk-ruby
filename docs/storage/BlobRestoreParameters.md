# AzureSDK::BlobRestoreParameters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **time_to_restore** | **Time** | Restore blob to the specified time. |  |
| **blob_ranges** | [**Array&lt;BlobRestoreRange&gt;**](BlobRestoreRange.md) | Blob ranges to restore. |  |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::BlobRestoreParameters.new(
  time_to_restore: null,
  blob_ranges: null
)
```

