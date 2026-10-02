# AzureSDK::ScheduleProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start** | **String** | The required start date for Block or Future capacity reservations. Block capacity reservations: Must be today or within 56 days in the future. For same-day scheduling, requests must be submitted before 11:30 AM UTC. Future capacity reservations: Must be at least 7 days in the future, and maximum 6 months in the future. Minimum API version for Future capacity reservations: 2026-04-01. Example: 2025-06-27, applicable for both Block and Future capacity reservations. | [optional] |
| **_end** | **String** | The required end date for Block capacity reservations. Must be after the start date, with a duration of either 1–14 whole days or 3–26 whole weeks. Example: 2025-06-28. | [optional] |
| **minimum_commitment_days** | **Integer** | The minimum number of days that must pass after the start date before a Future capacity reservation can be updated or deleted once it has been committed. Will be populated with a default value if not provided. | [optional] |
| **modifiable_until** | **Time** | The date/time until which a Future capacity reservation can be updated or deleted. Read-only. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ScheduleProfile.new(
  start: null,
  _end: null,
  minimum_commitment_days: null,
  modifiable_until: null
)
```

