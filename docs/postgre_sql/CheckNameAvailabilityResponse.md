# AzureRest::CheckNameAvailabilityResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name_available** | **Boolean** | Indicates if the resource name is available. | [optional] |
| **reason** | **String** | The reason why the given name is not available. | [optional] |
| **message** | **String** | Detailed reason why the given name is available. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::CheckNameAvailabilityResponse.new(
  name_available: null,
  reason: null,
  message: null
)
```

