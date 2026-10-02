# AzureSDK::SshConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **public_keys** | [**Array&lt;SshPublicKey&gt;**](SshPublicKey.md) | The list of SSH public keys used to authenticate with linux based VMs. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::SshConfiguration.new(
  public_keys: null
)
```

