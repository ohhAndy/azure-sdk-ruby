# AzureRest::VirtualMachineScaleSetInstanceViewStatusesSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **statuses_summary** | [**Array&lt;VirtualMachineStatusCodeCount&gt;**](VirtualMachineStatusCodeCount.md) | The extensions information. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualMachineScaleSetInstanceViewStatusesSummary.new(
  statuses_summary: null
)
```

