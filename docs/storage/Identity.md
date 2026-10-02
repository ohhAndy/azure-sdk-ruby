# AzureSDK::Identity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **principal_id** | **String** | The principal ID of resource identity. | [optional][readonly] |
| **tenant_id** | **String** | The tenant ID of resource. | [optional][readonly] |
| **type** | [**IdentityType**](IdentityType.md) |  |  |
| **user_assigned_identities** | [**Hash&lt;String, UserAssignedIdentity&gt;**](UserAssignedIdentity.md) | Gets or sets a list of key value pairs that describe the set of User Assigned identities that will be used with this storage account. The key is the ARM resource identifier of the identity. Only 1 User Assigned identity is permitted here. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::Identity.new(
  principal_id: null,
  tenant_id: null,
  type: null,
  user_assigned_identities: null
)
```

