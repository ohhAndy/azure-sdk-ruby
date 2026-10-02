# AzureSDK::ManagedServiceIdentity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **principal_id** | **String** | The service principal ID of the system assigned identity. This property will only be provided for a system assigned identity. | [optional][readonly] |
| **tenant_id** | **String** | The tenant ID of the system assigned identity. This property will only be provided for a system assigned identity. | [optional][readonly] |
| **type** | [**ManagedServiceIdentityType**](ManagedServiceIdentityType.md) |  |  |
| **user_assigned_identities** | [**Hash&lt;String, UserAssignedIdentity2&gt;**](UserAssignedIdentity2.md) | The set of user assigned identities associated with the resource. The userAssignedIdentities dictionary keys will be ARM resource ids in the form: &#39;/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}. The dictionary values can be empty objects ({}) in requests. | [optional] |

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

