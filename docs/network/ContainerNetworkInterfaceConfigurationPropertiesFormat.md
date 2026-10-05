# AzureRest::ContainerNetworkInterfaceConfigurationPropertiesFormat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ip_configurations** | [**Array&lt;IPConfigurationProfile&gt;**](IPConfigurationProfile.md) | A list of ip configurations of the container network interface configuration. | [optional] |
| **container_network_interfaces** | [**Array&lt;SubResource&gt;**](SubResource.md) | A list of container network interfaces created from this container network interface configuration. | [optional] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ContainerNetworkInterfaceConfigurationPropertiesFormat.new(
  ip_configurations: null,
  container_network_interfaces: null,
  provisioning_state: null
)
```

