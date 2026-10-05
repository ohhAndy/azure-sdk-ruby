# AzureRest::SessionRecordingIdentity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**SessionRecordingIdentityType**](SessionRecordingIdentityType.md) |  |  |
| **user_assigned_identity_id** | **String** | User assigned identity to use for accessing blob container Uri. Ex: /subscriptions/fa5fc227-a624-475e-b696-cdd604c735bc/resourceGroups/&lt;resource group&gt;/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myId. Mutually exclusive with identity type systemAssigned. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::SessionRecordingIdentity.new(
  type: null,
  user_assigned_identity_id: null
)
```

