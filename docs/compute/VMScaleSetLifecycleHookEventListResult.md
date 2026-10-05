# AzureRest::VMScaleSetLifecycleHookEventListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;VMScaleSetLifecycleHookEvent&gt;**](VMScaleSetLifecycleHookEvent.md) | The list of virtual machine scale set lifecycle hook events created for a virtual machine scale set resource. |  |
| **next_link** | **String** | The uri to fetch the next page of virtual machine scale set lifecycle hook events. Call ListNext() with this to fetch the next page of virtual machine scale set lifecycle hook events. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VMScaleSetLifecycleHookEventListResult.new(
  value: null,
  next_link: null
)
```

