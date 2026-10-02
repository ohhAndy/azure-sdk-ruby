# AzureSDK::ManagedClusterIdentity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **principal_id** | **String** | The principal id of the system assigned identity which is used by master components. | [optional][readonly] |
| **tenant_id** | **String** | The tenant id of the system assigned identity which is used by master components. | [optional][readonly] |
| **type** | [**ResourceIdentityType**](ResourceIdentityType.md) |  | [optional] |
| **delegated_resources** | [**Hash&lt;String, DelegatedResource&gt;**](DelegatedResource.md) | The delegated identity resources assigned to this managed cluster. This can only be set by another Azure Resource Provider, and managed cluster only accept one delegated identity resource. Internal use only. | [optional] |
| **user_assigned_identities** | [**Hash&lt;String, ManagedServiceIdentityUserAssignedIdentitiesValue&gt;**](ManagedServiceIdentityUserAssignedIdentitiesValue.md) | The user identity associated with the managed cluster. This identity will be used in control plane. Only one user assigned identity is allowed. The keys must be ARM resource IDs in the form: &#39;/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}&#39;. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ManagedClusterIdentity.new(
  principal_id: null,
  tenant_id: null,
  type: null,
  delegated_resources: null,
  user_assigned_identities: null
)
```

