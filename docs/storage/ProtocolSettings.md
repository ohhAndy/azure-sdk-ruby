# AzureSDK::ProtocolSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **smb** | [**SmbSetting**](SmbSetting.md) |  | [optional] |
| **nfs** | [**NfsSetting**](NfsSetting.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ProtocolSettings.new(
  smb: null,
  nfs: null
)
```

