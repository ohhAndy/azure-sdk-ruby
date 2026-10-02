# AzureSDK::AvailabilitySetListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;AvailabilitySet&gt;**](AvailabilitySet.md) | The list of availability sets. |  |
| **next_link** | **String** | The URI to fetch the next page of AvailabilitySets. Call ListNext() with this URI to fetch the next page of AvailabilitySets. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::AvailabilitySetListResult.new(
  value: null,
  next_link: null
)
```

