# AzureRest::VirtualMachineScaleSetExtension

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Resource Id | [optional][readonly] |
| **name** | **String** | Resource name | [optional] |
| **type** | **String** | Resource type | [optional][readonly] |
| **properties** | [**VirtualMachineScaleSetExtensionProperties**](VirtualMachineScaleSetExtensionProperties.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualMachineScaleSetExtension.new(
  id: null,
  name: null,
  type: null,
  properties: null
)
```

