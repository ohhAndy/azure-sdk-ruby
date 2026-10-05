# AzureRest::VMScaleSetLifecycleHookEventProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**VMScaleSetLifecycleHookEventType**](VMScaleSetLifecycleHookEventType.md) |  | [optional] |
| **wait_until** | **String** | Specifies the exact UTC timestamp in ISO 8601 format till which the event would remain in the current lifecycle state waiting for an action from the customer. Beyond this timestamp, the platform will apply the defaultAction for the event. | [optional] |
| **max_wait_until** | **String** | Specifies the exact UTC timestamp in ISO 8601 format till when the customer can delay the lifecycle hook event. The customer will not be allowed to delay the event to a timestamp beyond this. | [optional][readonly] |
| **time_created** | **String** | The UTC timestamp in ISO 8601 format at which the platform creates the virtual machine scale set lifecycle hook event entity. | [optional][readonly] |
| **default_action** | [**LifecycleHookAction**](LifecycleHookAction.md) |  | [optional] |
| **target_resources** | [**Array&lt;VMScaleSetLifecycleHookEventTargetResource&gt;**](VMScaleSetLifecycleHookEventTargetResource.md) | List of target resources which are getting processed in the virtual machine scale set lifecycle hook event. | [optional] |
| **additional_context** | [**VMScaleSetLifecycleHookEventAdditionalContext**](VMScaleSetLifecycleHookEventAdditionalContext.md) |  | [optional] |
| **state** | [**VMScaleSetLifecycleHookEventState**](VMScaleSetLifecycleHookEventState.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VMScaleSetLifecycleHookEventProperties.new(
  type: null,
  wait_until: null,
  max_wait_until: null,
  time_created: null,
  default_action: null,
  target_resources: null,
  additional_context: null,
  state: null
)
```

