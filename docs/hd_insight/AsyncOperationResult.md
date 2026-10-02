# AzureSDK::AsyncOperationResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | The async operation state. | [optional] |
| **error** | [**Errors**](Errors.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::AsyncOperationResult.new(
  status: null,
  error: null
)
```

