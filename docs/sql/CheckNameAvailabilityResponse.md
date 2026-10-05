# AzureRest::CheckNameAvailabilityResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name whose availability was checked. | [optional][readonly] |
| **available** | **Boolean** | True if the name is available, otherwise false. | [optional][readonly] |
| **reason** | [**CheckNameAvailabilityReason**](CheckNameAvailabilityReason.md) |  | [optional] |
| **message** | **String** | A message explaining why the name is unavailable. Will be undefined if the name is available. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::CheckNameAvailabilityResponse.new(
  name: null,
  available: null,
  reason: null,
  message: null
)
```

