# AzureSDK::OperationValueDisplay

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **operation** | **String** | The display name of the operation. | [optional][readonly] |
| **resource** | **String** | The display name of the resource the operation applies to. | [optional][readonly] |
| **description** | **String** | The description of the operation. | [optional][readonly] |
| **provider** | **String** | The resource provider for the operation. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::OperationValueDisplay.new(
  operation: null,
  resource: null,
  description: null,
  provider: null
)
```

