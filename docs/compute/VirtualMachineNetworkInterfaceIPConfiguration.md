# AzureRest::VirtualMachineNetworkInterfaceIPConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The IP configuration name. |  |
| **properties** | [**VirtualMachineNetworkInterfaceIPConfigurationProperties**](VirtualMachineNetworkInterfaceIPConfigurationProperties.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualMachineNetworkInterfaceIPConfiguration.new(
  name: null,
  properties: null
)
```

