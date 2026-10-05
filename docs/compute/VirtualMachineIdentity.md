# AzureRest::VirtualMachineIdentity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **principal_id** | **String** | The principal id of virtual machine identity. This property will only be provided for a system assigned identity. | [optional][readonly] |
| **tenant_id** | **String** | The tenant id associated with the virtual machine. This property will only be provided for a system assigned identity. | [optional][readonly] |
| **type** | [**CommonResourceIdentityType**](CommonResourceIdentityType.md) |  | [optional] |
| **user_assigned_identities** | [**Hash&lt;String, CommonUserAssignedIdentitiesValue&gt;**](CommonUserAssignedIdentitiesValue.md) | The list of user identities associated with the Virtual Machine. The user identity dictionary key references will be ARM resource ids in the form: &#39;/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}&#39;. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualMachineIdentity.new(
  principal_id: null,
  tenant_id: null,
  type: null,
  user_assigned_identities: null
)
```

