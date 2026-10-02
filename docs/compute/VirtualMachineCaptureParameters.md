# AzureSDK::VirtualMachineCaptureParameters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vhd_prefix** | **String** | The captured virtual hard disk&#39;s name prefix. |  |
| **destination_container_name** | **String** | The destination container name. |  |
| **overwrite_vhds** | **Boolean** | Specifies whether to overwrite the destination virtual hard disk, in case of conflict. |  |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VirtualMachineCaptureParameters.new(
  vhd_prefix: null,
  destination_container_name: null,
  overwrite_vhds: null
)
```

