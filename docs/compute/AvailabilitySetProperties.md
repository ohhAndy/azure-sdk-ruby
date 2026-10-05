# AzureRest::AvailabilitySetProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform_update_domain_count** | **Integer** | Update Domain count. | [optional] |
| **platform_fault_domain_count** | **Integer** | Fault Domain count. | [optional] |
| **virtual_machines** | [**Array&lt;SubResource&gt;**](SubResource.md) | A list of references to all virtual machines in the availability set. | [optional] |
| **proximity_placement_group** | [**SubResource**](SubResource.md) |  | [optional] |
| **statuses** | [**Array&lt;InstanceViewStatus&gt;**](InstanceViewStatus.md) | The resource status information. | [optional][readonly] |
| **scheduled_events_policy** | [**ScheduledEventsPolicy**](ScheduledEventsPolicy.md) |  | [optional] |
| **virtual_machine_scale_set_migration_info** | [**VirtualMachineScaleSetMigrationInfo**](VirtualMachineScaleSetMigrationInfo.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::AvailabilitySetProperties.new(
  platform_update_domain_count: null,
  platform_fault_domain_count: null,
  virtual_machines: null,
  proximity_placement_group: null,
  statuses: null,
  scheduled_events_policy: null,
  virtual_machine_scale_set_migration_info: null
)
```

