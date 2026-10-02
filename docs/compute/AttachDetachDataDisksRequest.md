# AzureSDK::AttachDetachDataDisksRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data_disks_to_attach** | [**Array&lt;DataDisksToAttach&gt;**](DataDisksToAttach.md) | The list of managed data disks to be attached. | [optional] |
| **data_disks_to_detach** | [**Array&lt;DataDisksToDetach&gt;**](DataDisksToDetach.md) | The list of managed data disks to be detached. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::AttachDetachDataDisksRequest.new(
  data_disks_to_attach: null,
  data_disks_to_detach: null
)
```

