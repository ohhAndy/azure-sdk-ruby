# AzureSDK::VirtualMachineScaleSetInstanceViewStatusesSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **statuses_summary** | [**Array&lt;VirtualMachineStatusCodeCount&gt;**](VirtualMachineStatusCodeCount.md) | The extensions information. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VirtualMachineScaleSetInstanceViewStatusesSummary.new(
  statuses_summary: null
)
```

