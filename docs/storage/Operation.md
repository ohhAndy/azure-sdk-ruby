# AzureSDK::Operation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Operation name: {provider}/{resource}/{operation} | [optional] |
| **display** | [**OperationDisplay**](OperationDisplay.md) |  | [optional] |
| **origin** | **String** | The origin of operations. | [optional] |
| **properties** | [**OperationProperties**](OperationProperties.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::Operation.new(
  name: null,
  display: null,
  origin: null,
  properties: null
)
```

