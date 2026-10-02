# AzureSDK::Role

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the role. | [optional] |
| **min_instance_count** | **Integer** | The minimum instance count of the cluster. | [optional] |
| **target_instance_count** | **Integer** | The instance count of the cluster. | [optional] |
| **vm_group_name** | **String** | The name of the virtual machine group. | [optional] |
| **autoscale** | [**Autoscale**](Autoscale.md) |  | [optional] |
| **hardware_profile** | [**HardwareProfile**](HardwareProfile.md) |  | [optional] |
| **os_profile** | [**OsProfile**](OsProfile.md) |  | [optional] |
| **virtual_network_profile** | [**VirtualNetworkProfile**](VirtualNetworkProfile.md) |  | [optional] |
| **data_disks_groups** | [**Array&lt;DataDisksGroups&gt;**](DataDisksGroups.md) | The data disks groups for the role. | [optional] |
| **script_actions** | [**Array&lt;ScriptAction&gt;**](ScriptAction.md) | The list of script actions on the role. | [optional] |
| **encrypt_data_disks** | **Boolean** | Indicates whether encrypt the data disks. | [optional][default to false] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::Role.new(
  name: null,
  min_instance_count: null,
  target_instance_count: null,
  vm_group_name: null,
  autoscale: null,
  hardware_profile: null,
  os_profile: null,
  virtual_network_profile: null,
  data_disks_groups: null,
  script_actions: null,
  encrypt_data_disks: null
)
```

