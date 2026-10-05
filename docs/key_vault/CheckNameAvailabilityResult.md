# AzureRest::CheckNameAvailabilityResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name_available** | **Boolean** | A boolean value that indicates whether the name is available for you to use. If true, the name is available. If false, the name has already been taken or is invalid and cannot be used. | [optional][readonly] |
| **reason** | [**Reason**](Reason.md) |  | [optional] |
| **message** | **String** | An error message explaining the Reason value in more detail. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::CheckNameAvailabilityResult.new(
  name_available: null,
  reason: null,
  message: null
)
```

