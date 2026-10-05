# AzureRest::VMScaleSetLifecycleHookEventTargetResource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource** | [**ApiEntityReference**](ApiEntityReference.md) |  | [optional] |
| **action_state** | [**LifecycleHookActionState**](LifecycleHookActionState.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VMScaleSetLifecycleHookEventTargetResource.new(
  resource: null,
  action_state: null
)
```

