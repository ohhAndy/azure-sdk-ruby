# AzureRest::VirtualMachineScaleSetNetworkConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The network configuration name. |  |
| **properties** | [**VirtualMachineScaleSetNetworkConfigurationProperties**](VirtualMachineScaleSetNetworkConfigurationProperties.md) |  | [optional] |
| **tags** | **Hash&lt;String, String&gt;** | Resource tags applied to the networkInterface address created by this NetworkInterfaceConfiguration | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualMachineScaleSetNetworkConfiguration.new(
  name: null,
  properties: null,
  tags: null
)
```

