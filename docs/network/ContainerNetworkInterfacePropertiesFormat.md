# AzureRest::ContainerNetworkInterfacePropertiesFormat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **container_network_interface_configuration** | [**ContainerNetworkInterfaceConfiguration**](ContainerNetworkInterfaceConfiguration.md) |  | [optional] |
| **container** | [**Container**](Container.md) |  | [optional] |
| **ip_configurations** | [**Array&lt;ContainerNetworkInterfaceIpConfiguration&gt;**](ContainerNetworkInterfaceIpConfiguration.md) | Reference to the ip configuration on this container nic. | [optional][readonly] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ContainerNetworkInterfacePropertiesFormat.new(
  container_network_interface_configuration: null,
  container: null,
  ip_configurations: null,
  provisioning_state: null
)
```

