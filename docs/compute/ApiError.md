# AzureSDK::ApiError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **details** | [**Array&lt;ApiErrorBase&gt;**](ApiErrorBase.md) | The Api error details | [optional] |
| **innererror** | [**InnerError**](InnerError.md) |  | [optional] |
| **code** | **String** | The error code. | [optional] |
| **target** | **String** | The target of the particular error. | [optional] |
| **message** | **String** | The error message. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ApiError.new(
  details: null,
  innererror: null,
  code: null,
  target: null,
  message: null
)
```

