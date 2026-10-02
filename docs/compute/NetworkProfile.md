# AzureSDK::NetworkProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_interfaces** | [**Array&lt;NetworkInterfaceReference&gt;**](NetworkInterfaceReference.md) | Specifies the list of resource Ids for the network interfaces associated with the virtual machine. | [optional] |
| **network_api_version** | [**NetworkApiVersion**](NetworkApiVersion.md) |  | [optional] |
| **network_interface_configurations** | [**Array&lt;VirtualMachineNetworkInterfaceConfiguration&gt;**](VirtualMachineNetworkInterfaceConfiguration.md) | Specifies the networking configurations that will be used to create the virtual machine networking resources. | [optional] |
| **interconnect_group_profile** | [**InterconnectGroupProfile**](InterconnectGroupProfile.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::NetworkProfile.new(
  network_interfaces: null,
  network_api_version: null,
  network_interface_configurations: null,
  interconnect_group_profile: null
)
```

