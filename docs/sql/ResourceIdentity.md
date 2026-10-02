# AzureSDK::ResourceIdentity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_assigned_identities** | [**Hash&lt;String, UserIdentity&gt;**](UserIdentity.md) | The resource ids of the user assigned identities to use | [optional] |
| **principal_id** | **String** | Universally Unique Identifier | [optional] |
| **type** | [**IdentityType**](IdentityType.md) |  | [optional] |
| **tenant_id** | **String** | Universally Unique Identifier | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ResourceIdentity.new(
  user_assigned_identities: null,
  principal_id: null,
  type: null,
  tenant_id: null
)
```

