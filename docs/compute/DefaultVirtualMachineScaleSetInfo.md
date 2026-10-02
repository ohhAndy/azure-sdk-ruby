# AzureSDK::DefaultVirtualMachineScaleSetInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **constrained_maximum_capacity** | **Boolean** | Indicates if the the maximum capacity of the default migrated Virtual Machine Scale Set after its migration will be constrained to a limited number of VMs. | [optional][readonly] |
| **default_virtual_machine_scale_set** | [**SubResource**](SubResource.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::DefaultVirtualMachineScaleSetInfo.new(
  constrained_maximum_capacity: null,
  default_virtual_machine_scale_set: null
)
```

