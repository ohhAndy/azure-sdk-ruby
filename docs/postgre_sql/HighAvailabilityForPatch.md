# AzureRest::HighAvailabilityForPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mode** | [**PostgreSqlFlexibleServerHighAvailabilityMode**](PostgreSqlFlexibleServerHighAvailabilityMode.md) |  | [optional] |
| **state** | [**HighAvailabilityState**](HighAvailabilityState.md) |  | [optional] |
| **standby_availability_zone** | **String** | Availability zone associated to the standby server created when high availability is set to SameZone or ZoneRedundant. | [optional][default to &#39;&#39;] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::HighAvailabilityForPatch.new(
  mode: null,
  state: null,
  standby_availability_zone: null
)
```

