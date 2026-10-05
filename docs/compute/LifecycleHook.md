# AzureRest::LifecycleHook

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**VMScaleSetLifecycleHookEventType**](VMScaleSetLifecycleHookEventType.md) |  | [optional] |
| **wait_duration** | **String** | Specifies the time duration a virtual machine scale set lifecycle hook event sent to the customer waits for a response from the customer. It should be in ISO 8601 format. | [optional] |
| **default_action** | [**LifecycleHookAction**](LifecycleHookAction.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::LifecycleHook.new(
  type: null,
  wait_duration: null,
  default_action: null
)
```

