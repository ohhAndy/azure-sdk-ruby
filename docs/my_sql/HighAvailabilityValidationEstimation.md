# AzureRest::HighAvailabilityValidationEstimation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **estimated_downtime** | **Integer** | Estimated seconds of downtime for the deployment. | [optional][readonly] |
| **scheduled_standby_availability_zone** | **String** | Scheduled Availability zone of the standby server. | [optional][readonly] |
| **expected_standby_availability_zone** | **String** | Expected Availability zone of the standby server. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::HighAvailabilityValidationEstimation.new(
  estimated_downtime: null,
  scheduled_standby_availability_zone: null,
  expected_standby_availability_zone: null
)
```

