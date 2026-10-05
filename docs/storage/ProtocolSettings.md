# AzureRest::ProtocolSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **smb** | [**SmbSetting**](SmbSetting.md) |  | [optional] |
| **nfs** | [**NfsSetting**](NfsSetting.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ProtocolSettings.new(
  smb: null,
  nfs: null
)
```

