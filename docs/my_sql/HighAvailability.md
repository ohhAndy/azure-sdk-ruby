# AzureRest::HighAvailability

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mode** | [**HighAvailabilityMode**](HighAvailabilityMode.md) |  | [optional] |
| **state** | [**HighAvailabilityState**](HighAvailabilityState.md) |  | [optional] |
| **standby_availability_zone** | **String** | Availability zone of the standby server. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::HighAvailability.new(
  mode: null,
  state: null,
  standby_availability_zone: null
)
```

