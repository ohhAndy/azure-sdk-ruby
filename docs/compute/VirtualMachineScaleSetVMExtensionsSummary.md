# AzureSDK::VirtualMachineScaleSetVMExtensionsSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The extension name. | [optional][readonly] |
| **statuses_summary** | [**Array&lt;VirtualMachineStatusCodeCount&gt;**](VirtualMachineStatusCodeCount.md) | The extensions information. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VirtualMachineScaleSetVMExtensionsSummary.new(
  name: null,
  statuses_summary: null
)
```

