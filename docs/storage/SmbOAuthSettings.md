# AzureSDK::SmbOAuthSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_smb_o_auth_enabled** | **Boolean** | Specifies if managed identities can access SMB shares using OAuth. The default interpretation is false for this property. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::SmbOAuthSettings.new(
  is_smb_o_auth_enabled: null
)
```

