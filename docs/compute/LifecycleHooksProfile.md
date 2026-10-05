# AzureRest::LifecycleHooksProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lifecycle_hooks** | [**Array&lt;LifecycleHook&gt;**](LifecycleHook.md) | Specifies the lifecycle hooks configured for the virtual machine scale set. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::LifecycleHooksProfile.new(
  lifecycle_hooks: null
)
```

