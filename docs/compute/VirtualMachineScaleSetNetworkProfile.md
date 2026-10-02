# AzureSDK::VirtualMachineScaleSetNetworkProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **health_probe** | [**ApiEntityReference**](ApiEntityReference.md) |  | [optional] |
| **network_interface_configurations** | [**Array&lt;VirtualMachineScaleSetNetworkConfiguration&gt;**](VirtualMachineScaleSetNetworkConfiguration.md) | The list of network configurations. | [optional] |
| **network_api_version** | [**NetworkApiVersion**](NetworkApiVersion.md) |  | [optional] |
| **interconnect_group_profile** | [**InterconnectGroupProfile**](InterconnectGroupProfile.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VirtualMachineScaleSetNetworkProfile.new(
  health_probe: null,
  network_interface_configurations: null,
  network_api_version: null,
  interconnect_group_profile: null
)
```

