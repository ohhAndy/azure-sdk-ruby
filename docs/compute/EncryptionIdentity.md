# AzureSDK::EncryptionIdentity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_assigned_identity_resource_id** | **String** | Specifies ARM Resource ID of one of the user identities associated with the VM. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::EncryptionIdentity.new(
  user_assigned_identity_resource_id: null
)
```

