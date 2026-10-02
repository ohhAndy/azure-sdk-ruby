# AzureSDK::VMScaleSetLifecycleHookEventTargetResource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource** | [**ApiEntityReference**](ApiEntityReference.md) |  | [optional] |
| **action_state** | [**LifecycleHookActionState**](LifecycleHookActionState.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VMScaleSetLifecycleHookEventTargetResource.new(
  resource: null,
  action_state: null
)
```

