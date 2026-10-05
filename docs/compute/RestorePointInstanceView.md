# AzureRest::RestorePointInstanceView

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **disk_restore_points** | [**Array&lt;DiskRestorePointInstanceView&gt;**](DiskRestorePointInstanceView.md) | The disk restore points information. | [optional] |
| **statuses** | [**Array&lt;InstanceViewStatus&gt;**](InstanceViewStatus.md) | The resource status information. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::RestorePointInstanceView.new(
  disk_restore_points: null,
  statuses: null
)
```

