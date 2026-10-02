# AzureSDK::NetworkProfilePropertiesFormat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **container_network_interfaces** | [**Array&lt;ContainerNetworkInterface&gt;**](ContainerNetworkInterface.md) | List of child container network interfaces. | [optional][readonly] |
| **container_network_interface_configurations** | [**Array&lt;ContainerNetworkInterfaceConfiguration&gt;**](ContainerNetworkInterfaceConfiguration.md) | List of chid container network interface configurations. | [optional] |
| **resource_guid** | **String** | The resource GUID property of the network profile resource. | [optional][readonly] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::NetworkProfilePropertiesFormat.new(
  container_network_interfaces: null,
  container_network_interface_configurations: null,
  resource_guid: null,
  provisioning_state: null
)
```

