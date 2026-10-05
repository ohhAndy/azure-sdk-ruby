# AzureRest::EncryptionIdentity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_assigned_identity_resource_id** | **String** | Specifies ARM Resource ID of one of the user identities associated with the VM. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::EncryptionIdentity.new(
  user_assigned_identity_resource_id: null
)
```

