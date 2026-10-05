# AzureRest::ValidationSummaryItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Validation type. | [optional] |
| **state** | [**ValidationState**](ValidationState.md) |  | [optional] |
| **messages** | [**Array&lt;ValidationMessage&gt;**](ValidationMessage.md) | Validation messages. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ValidationSummaryItem.new(
  type: null,
  state: null,
  messages: null
)
```

