# AzureRest::ErrorDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Error code. | [optional] |
| **target** | **String** | Error target. | [optional] |
| **message** | **String** | Error message. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ErrorDetails.new(
  code: null,
  target: null,
  message: null
)
```

