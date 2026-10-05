# AzureRest::RotationPolicy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attributes** | [**KeyRotationPolicyAttributes**](KeyRotationPolicyAttributes.md) |  | [optional] |
| **lifetime_actions** | [**Array&lt;LifetimeAction&gt;**](LifetimeAction.md) | The lifetimeActions for key rotation action. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::RotationPolicy.new(
  attributes: null,
  lifetime_actions: null
)
```

