# AzureSDK::VMScaleSetLifecycleHookEventAdditionalContext

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **priority** | **String** | Can only be present for a lifecycle hook event of type \&quot;UpgradeAutoOSScheduling\&quot;. Denotes the priority of the virtual machine scale set lifecycle hook event for the Auto OS Upgrade scheduled on the virtual machine scale set. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VMScaleSetLifecycleHookEventAdditionalContext.new(
  priority: null
)
```

