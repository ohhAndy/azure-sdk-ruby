# AzureSDK::VirtualMachineScaleSetMigrationInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **default_virtual_machine_scale_set_info** | [**DefaultVirtualMachineScaleSetInfo**](DefaultVirtualMachineScaleSetInfo.md) |  | [optional] |
| **migrate_to_virtual_machine_scale_set** | [**SubResource**](SubResource.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VirtualMachineScaleSetMigrationInfo.new(
  default_virtual_machine_scale_set_info: null,
  migrate_to_virtual_machine_scale_set: null
)
```

