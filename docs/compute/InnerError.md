# AzureSDK::InnerError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **exceptiontype** | **String** | The exception type. | [optional] |
| **errordetail** | **String** | The internal error message or exception dump. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::InnerError.new(
  exceptiontype: null,
  errordetail: null
)
```

