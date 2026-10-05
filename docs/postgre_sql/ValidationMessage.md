# AzureRest::ValidationMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **state** | [**ValidationState**](ValidationState.md) |  | [optional] |
| **message** | **String** | Validation message string. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ValidationMessage.new(
  state: null,
  message: null
)
```

