# AzureRest::CapacityReservationUtilization

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **current_capacity** | **Integer** | The value provides the current capacity of the VM size which was reserved successfully and for which the customer is getting billed. Minimum api-version: 2022-08-01. | [optional][readonly] |
| **virtual_machines_allocated** | [**Array&lt;SubResourceReadOnly&gt;**](SubResourceReadOnly.md) | A list of all virtual machines resource ids allocated against the capacity reservation. | [optional][readonly] |
| **used_reserved_count_by_subscription** | **Hash&lt;String, Integer&gt;** | For open capacity reservations, this provides a map of the used reserved capacity count keyed by the subscription id (a GUID) that is consuming the capacity, i.e. each entry maps a consuming subscription id to the count of reserved capacity it is currently using. This is populated only for open capacity reservations and is not reported for targeted and block capacity reservations, which instead report allocation through virtualMachinesAllocated. Minimum api-version: 2026-04-01. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::CapacityReservationUtilization.new(
  current_capacity: null,
  virtual_machines_allocated: null,
  used_reserved_count_by_subscription: null
)
```

