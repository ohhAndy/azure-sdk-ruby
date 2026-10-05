# AzureRest::VirtualMachineScaleSetUpdateIPConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The IP configuration name. | [optional] |
| **properties** | [**VirtualMachineScaleSetUpdateIPConfigurationProperties**](VirtualMachineScaleSetUpdateIPConfigurationProperties.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualMachineScaleSetUpdateIPConfiguration.new(
  name: null,
  properties: null
)
```

