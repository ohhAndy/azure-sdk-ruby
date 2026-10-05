# AzureRest::VirtualMachineScaleSetIPConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The IP configuration name. |  |
| **properties** | [**VirtualMachineScaleSetIPConfigurationProperties**](VirtualMachineScaleSetIPConfigurationProperties.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualMachineScaleSetIPConfiguration.new(
  name: null,
  properties: null
)
```

