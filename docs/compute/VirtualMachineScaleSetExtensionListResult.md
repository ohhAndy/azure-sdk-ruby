# AzureRest::VirtualMachineScaleSetExtensionListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;VirtualMachineScaleSetExtension&gt;**](VirtualMachineScaleSetExtension.md) | The list of VM scale set extensions. |  |
| **next_link** | **String** | The uri to fetch the next page of VM scale set extensions. Call ListNext() with this to fetch the next page of VM scale set extensions. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualMachineScaleSetExtensionListResult.new(
  value: null,
  next_link: null
)
```

