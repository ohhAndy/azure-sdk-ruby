# AzureSDK::ContainerServiceSshConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **public_keys** | [**Array&lt;ContainerServiceSshPublicKey&gt;**](ContainerServiceSshPublicKey.md) | The list of SSH public keys used to authenticate with Linux-based VMs. A maximum of 1 key may be specified. |  |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ContainerServiceSshConfiguration.new(
  public_keys: null
)
```

