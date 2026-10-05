# AzureRest::VirtualMachineScaleSetVMNetworkProfileConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_interface_configurations** | [**Array&lt;VirtualMachineScaleSetNetworkConfiguration&gt;**](VirtualMachineScaleSetNetworkConfiguration.md) | The list of network configurations. | [optional] |
| **interconnect_group_profile** | [**InterconnectGroupProfile**](InterconnectGroupProfile.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualMachineScaleSetVMNetworkProfileConfiguration.new(
  network_interface_configurations: null,
  interconnect_group_profile: null
)
```

