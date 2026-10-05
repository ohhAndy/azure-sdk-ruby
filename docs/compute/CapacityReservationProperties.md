# AzureRest::CapacityReservationProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reservation_id** | **String** | A unique id generated and assigned to the capacity reservation by the platform which does not change throughout the lifetime of the resource. | [optional][readonly] |
| **platform_fault_domain_count** | **Integer** | Specifies the value of fault domain count that Capacity Reservation supports for requested VM size. **Note:** The fault domain count specified for a resource (like virtual machines scale set) must be less than or equal to this value if it deploys using capacity reservation. Minimum api-version: 2022-08-01. | [optional][readonly] |
| **virtual_machines_associated** | [**Array&lt;SubResourceReadOnly&gt;**](SubResourceReadOnly.md) | A list of all virtual machine resource ids that are associated with the capacity reservation. | [optional][readonly] |
| **provisioning_time** | **Time** | The date time when the capacity reservation was last updated. | [optional][readonly] |
| **provisioning_state** | **String** | The provisioning state, which only appears in the response. | [optional][readonly] |
| **instance_view** | [**CapacityReservationInstanceView**](CapacityReservationInstanceView.md) |  | [optional] |
| **time_created** | **Time** | Specifies the time at which the Capacity Reservation resource was created. Minimum api-version: 2021-11-01. | [optional][readonly] |
| **schedule_profile** | [**ScheduleProfile**](ScheduleProfile.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::CapacityReservationProperties.new(
  reservation_id: null,
  platform_fault_domain_count: null,
  virtual_machines_associated: null,
  provisioning_time: null,
  provisioning_state: null,
  instance_view: null,
  time_created: null,
  schedule_profile: null
)
```

