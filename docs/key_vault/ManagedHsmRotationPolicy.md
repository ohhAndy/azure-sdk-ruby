# AzureSDK::ManagedHsmRotationPolicy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attributes** | [**ManagedHsmKeyRotationPolicyAttributes**](ManagedHsmKeyRotationPolicyAttributes.md) |  | [optional] |
| **lifetime_actions** | [**Array&lt;ManagedHsmLifetimeAction&gt;**](ManagedHsmLifetimeAction.md) | The lifetimeActions for key rotation action. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ManagedHsmRotationPolicy.new(
  attributes: null,
  lifetime_actions: null
)
```

