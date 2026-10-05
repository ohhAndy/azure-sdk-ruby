# AzureRest::VirtualNetworkEncryption

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Indicates if encryption is enabled on the virtual network. |  |
| **enforcement** | [**VirtualNetworkEncryptionEnforcement**](VirtualNetworkEncryptionEnforcement.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualNetworkEncryption.new(
  enabled: null,
  enforcement: null
)
```

