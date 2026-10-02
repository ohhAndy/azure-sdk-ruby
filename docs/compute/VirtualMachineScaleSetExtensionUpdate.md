# AzureSDK::VirtualMachineScaleSetExtensionUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Resource Id | [optional][readonly] |
| **name** | **String** | The name of the extension. | [optional][readonly] |
| **type** | **String** | Resource type | [optional][readonly] |
| **properties** | [**VirtualMachineScaleSetExtensionProperties**](VirtualMachineScaleSetExtensionProperties.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VirtualMachineScaleSetExtensionUpdate.new(
  id: null,
  name: null,
  type: null,
  properties: null
)
```

