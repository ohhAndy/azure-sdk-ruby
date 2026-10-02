# AzureSDK::VirtualMachineScaleSetUpdateNetworkConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The network configuration name. | [optional] |
| **properties** | [**VirtualMachineScaleSetUpdateNetworkConfigurationProperties**](VirtualMachineScaleSetUpdateNetworkConfigurationProperties.md) |  | [optional] |
| **tags** | **Hash&lt;String, String&gt;** | Resource tags applied to the networkInterface address created by this NetworkInterfaceConfiguration | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VirtualMachineScaleSetUpdateNetworkConfiguration.new(
  name: null,
  properties: null,
  tags: null
)
```

