# AzureSDK::Error

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | The error code. | [optional][readonly] |
| **message** | **String** | The error message. | [optional][readonly] |
| **innererror** | [**Error**](Error.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::Error.new(
  code: null,
  message: null,
  innererror: null
)
```

