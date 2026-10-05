# AzureRest::VirtualMachineScaleSetExtensionUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Resource Id | [optional][readonly] |
| **name** | **String** | The name of the extension. | [optional][readonly] |
| **type** | **String** | Resource type | [optional][readonly] |
| **properties** | [**VirtualMachineScaleSetExtensionProperties**](VirtualMachineScaleSetExtensionProperties.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualMachineScaleSetExtensionUpdate.new(
  id: null,
  name: null,
  type: null,
  properties: null
)
```

