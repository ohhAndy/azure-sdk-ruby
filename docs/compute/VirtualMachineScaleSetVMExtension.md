# AzureRest::VirtualMachineScaleSetVMExtension

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Resource Id | [optional][readonly] |
| **properties** | [**VirtualMachineExtensionProperties**](VirtualMachineExtensionProperties.md) |  | [optional] |
| **location** | **String** | The location of the extension. | [optional] |
| **type** | **String** | Resource type | [optional][readonly] |
| **name** | **String** | Resource name | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualMachineScaleSetVMExtension.new(
  id: null,
  properties: null,
  location: null,
  type: null,
  name: null
)
```

