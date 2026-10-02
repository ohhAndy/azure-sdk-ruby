# AzureSDK::ManagedClusterPodIdentity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the pod identity. |  |
| **namespace** | **String** | The namespace of the pod identity. |  |
| **binding_selector** | **String** | The binding selector to use for the AzureIdentityBinding resource. | [optional] |
| **identity** | [**UserAssignedIdentity**](UserAssignedIdentity.md) |  |  |
| **provisioning_state** | [**ManagedClusterPodIdentityProvisioningState**](ManagedClusterPodIdentityProvisioningState.md) |  | [optional] |
| **provisioning_info** | [**ManagedClusterPodIdentityProvisioningInfo**](ManagedClusterPodIdentityProvisioningInfo.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ManagedClusterPodIdentity.new(
  name: null,
  namespace: null,
  binding_selector: null,
  identity: null,
  provisioning_state: null,
  provisioning_info: null
)
```

