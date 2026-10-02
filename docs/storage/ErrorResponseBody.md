# AzureSDK::ErrorResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | An identifier for the error. Codes are invariant and are intended to be consumed programmatically. | [optional] |
| **message** | **String** | A message describing the error, intended to be suitable for display in a user interface. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ErrorResponseBody.new(
  code: null,
  message: null
)
```

