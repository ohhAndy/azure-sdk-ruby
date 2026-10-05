# AzureRest::ApiErrorBase

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | The error code. | [optional] |
| **target** | **String** | The target of the particular error. | [optional] |
| **message** | **String** | The error message. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ApiErrorBase.new(
  code: null,
  target: null,
  message: null
)
```

