# AzureRest::InnerError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **exceptiontype** | **String** | The exception type. | [optional] |
| **errordetail** | **String** | The internal error message or exception dump. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::InnerError.new(
  exceptiontype: null,
  errordetail: null
)
```

