# AzureRest::Operation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Operation name: {provider}/{resource}/{operation} | [optional] |
| **display** | [**OperationDisplay**](OperationDisplay.md) |  | [optional] |
| **origin** | **String** | The origin of operations. | [optional] |
| **properties** | [**OperationProperties**](OperationProperties.md) |  | [optional] |
| **is_data_action** | **Boolean** | Property to specify whether the action is a data action. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::Operation.new(
  name: null,
  display: null,
  origin: null,
  properties: null,
  is_data_action: null
)
```

