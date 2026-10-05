# AzureRest::Error

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | The error code. | [optional][readonly] |
| **message** | **String** | The error message. | [optional][readonly] |
| **innererror** | [**Error**](Error.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::Error.new(
  code: null,
  message: null,
  innererror: null
)
```

