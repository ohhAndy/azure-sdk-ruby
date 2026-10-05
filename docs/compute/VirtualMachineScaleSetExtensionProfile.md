# AzureRest::VirtualMachineScaleSetExtensionProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **extensions** | [**Array&lt;VirtualMachineScaleSetExtension&gt;**](VirtualMachineScaleSetExtension.md) | The virtual machine scale set child extension resources. | [optional] |
| **extensions_time_budget** | **String** | Specifies the time alloted for all extensions to start. The time duration should be between 15 minutes and 120 minutes (inclusive) and should be specified in ISO 8601 format. The default value is 90 minutes (PT1H30M). Minimum api-version: 2020-06-01. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualMachineScaleSetExtensionProfile.new(
  extensions: null,
  extensions_time_budget: null
)
```

