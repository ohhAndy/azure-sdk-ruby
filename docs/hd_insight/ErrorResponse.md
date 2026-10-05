# AzureRest::ErrorResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Error code | [optional] |
| **message** | **String** | Error message indicating why the operation failed. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ErrorResponse.new(
  code: null,
  message: null
)
```

