# AzureSDK::Identity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **principal_id** | **String** | The principal ID of resource identity. | [optional][readonly] |
| **tenant_id** | **String** | The tenant ID of resource. | [optional][readonly] |
| **type** | **String** | Type of managed service identity. |  |
| **user_assigned_identities** | [**Hash&lt;String, UserIdentityProperties&gt;**](UserIdentityProperties.md) | The list of user identities associated with the resource. The user identity dictionary key references will be ARM resource ids in the form: &#39;/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}&#39;. | [optional] |

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

