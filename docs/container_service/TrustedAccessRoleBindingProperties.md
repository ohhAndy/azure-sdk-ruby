# AzureSDK::TrustedAccessRoleBindingProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provisioning_state** | [**TrustedAccessRoleBindingProvisioningState**](TrustedAccessRoleBindingProvisioningState.md) |  | [optional] |
| **source_resource_id** | **String** | The ARM resource ID of source resource that trusted access is configured for. |  |
| **roles** | **Array&lt;String&gt;** | A list of roles to bind, each item is a resource type qualified role name. For example: &#39;Microsoft.MachineLearningServices/workspaces/reader&#39;. |  |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::TrustedAccessRoleBindingProperties.new(
  provisioning_state: null,
  source_resource_id: null,
  roles: null
)
```

