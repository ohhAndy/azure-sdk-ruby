# AzureRest::VirtualMachineScaleSetInstanceView

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **virtual_machine** | [**VirtualMachineScaleSetInstanceViewStatusesSummary**](VirtualMachineScaleSetInstanceViewStatusesSummary.md) |  | [optional] |
| **extensions** | [**Array&lt;VirtualMachineScaleSetVMExtensionsSummary&gt;**](VirtualMachineScaleSetVMExtensionsSummary.md) | The extensions information. | [optional][readonly] |
| **statuses** | [**Array&lt;InstanceViewStatus&gt;**](InstanceViewStatus.md) | The resource status information. | [optional] |
| **orchestration_services** | [**Array&lt;OrchestrationServiceSummary&gt;**](OrchestrationServiceSummary.md) | The orchestration services information. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualMachineScaleSetInstanceView.new(
  virtual_machine: null,
  extensions: null,
  statuses: null,
  orchestration_services: null
)
```

