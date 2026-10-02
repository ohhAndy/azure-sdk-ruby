# AzureSDK::OperationValue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **origin** | **String** | The origin of the operation. | [optional][readonly] |
| **name** | **String** | The name of the operation. | [optional][readonly] |
| **display** | [**OperationValueDisplay**](OperationValueDisplay.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::OperationValue.new(
  origin: null,
  name: null,
  display: null
)
```

