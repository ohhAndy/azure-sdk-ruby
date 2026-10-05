# AzureRest::VirtualMachineNetworkInterfaceConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The network interface configuration name. |  |
| **properties** | [**VirtualMachineNetworkInterfaceConfigurationProperties**](VirtualMachineNetworkInterfaceConfigurationProperties.md) |  | [optional] |
| **tags** | **Hash&lt;String, String&gt;** | Resource tags applied to the networkInterface address created by this NetworkInterfaceConfiguration | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualMachineNetworkInterfaceConfiguration.new(
  name: null,
  properties: null,
  tags: null
)
```

