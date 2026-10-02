# AzureSDK::ValidationSummaryItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Validation type. | [optional] |
| **state** | [**ValidationState**](ValidationState.md) |  | [optional] |
| **messages** | [**Array&lt;ValidationMessage&gt;**](ValidationMessage.md) | Validation messages. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ValidationSummaryItem.new(
  type: null,
  state: null,
  messages: null
)
```

