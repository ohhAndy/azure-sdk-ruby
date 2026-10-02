# AzureSDK::NetworkInterfaceTapConfigurationPropertiesFormat2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **virtual_network_tap** | [**VirtualNetworkTap**](VirtualNetworkTap.md) |  | [optional] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::NetworkInterfaceTapConfigurationPropertiesFormat2.new(
  virtual_network_tap: null,
  provisioning_state: null
)
```

