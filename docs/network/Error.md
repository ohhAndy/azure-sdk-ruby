# AzureRest::Error

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Error code. | [optional] |
| **message** | **String** | Error message. | [optional] |
| **target** | **String** | Error target. | [optional] |
| **details** | [**Array&lt;ErrorDetails&gt;**](ErrorDetails.md) | Error details. | [optional] |
| **inner_error** | **String** | Inner error message. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::Error.new(
  code: null,
  message: null,
  target: null,
  details: null,
  inner_error: null
)
```

