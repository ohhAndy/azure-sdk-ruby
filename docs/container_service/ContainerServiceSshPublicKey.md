# AzureSDK::ContainerServiceSshPublicKey

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key_data** | **String** | Certificate public key used to authenticate with VMs through SSH. The certificate must be in PEM format with or without headers. |  |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ContainerServiceSshPublicKey.new(
  key_data: null
)
```

