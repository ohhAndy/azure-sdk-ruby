# AzureSDK::ManagedServiceIdentity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **principal_id** | **String** | The principal id of the system assigned identity. This property will only be provided for a system assigned identity. | [optional][readonly] |
| **tenant_id** | **String** | The tenant id of the system assigned identity. This property will only be provided for a system assigned identity. | [optional][readonly] |
| **type** | [**ResourceIdentityType**](ResourceIdentityType.md) |  | [optional] |
| **user_assigned_identities** | [**Hash&lt;String, ManagedServiceIdentityUserAssignedIdentities&gt;**](ManagedServiceIdentityUserAssignedIdentities.md) | The list of user identities associated with resource. The user identity dictionary key references will be ARM resource ids in the form: &#39;/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}&#39;. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ManagedServiceIdentity.new(
  principal_id: null,
  tenant_id: null,
  type: null,
  user_assigned_identities: null
)
```

