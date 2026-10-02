# AzureSDK::SshProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **public_keys** | [**Array&lt;SshPublicKey&gt;**](SshPublicKey.md) | The list of SSH public keys. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::SshProfile.new(
  public_keys: null
)
```

