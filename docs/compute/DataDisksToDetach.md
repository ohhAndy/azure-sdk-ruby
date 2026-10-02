# AzureSDK::DataDisksToDetach

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **disk_id** | **String** | ID of the managed data disk. |  |
| **detach_option** | [**DiskDetachOptionTypes**](DiskDetachOptionTypes.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::DataDisksToDetach.new(
  disk_id: null,
  detach_option: null
)
```

