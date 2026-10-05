# AzureRest::Operation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the operation being performed on this particular object. | [optional][readonly] |
| **display** | [**OperationDisplay**](OperationDisplay.md) |  | [optional] |
| **is_data_action** | **Boolean** | Indicates if the operation is a data action. | [optional] |
| **origin** | [**OperationOrigin**](OperationOrigin.md) |  | [optional] |
| **properties** | [**OperationProperties**](OperationProperties.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::Operation.new(
  name: null,
  display: null,
  is_data_action: null,
  origin: null,
  properties: null
)
```

