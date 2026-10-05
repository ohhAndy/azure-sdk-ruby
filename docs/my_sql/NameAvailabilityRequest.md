# AzureRest::NameAvailabilityRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Resource name to verify. |  |
| **type** | **String** | Resource type used for verification. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::NameAvailabilityRequest.new(
  name: null,
  type: null
)
```

