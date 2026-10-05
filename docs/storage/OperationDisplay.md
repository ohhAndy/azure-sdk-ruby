# AzureRest::OperationDisplay

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider** | **String** | Service provider: Microsoft Storage. | [optional] |
| **resource** | **String** | Resource on which the operation is performed etc. | [optional] |
| **operation** | **String** | Type of operation: get, read, delete, etc. | [optional] |
| **description** | **String** | Description of the operation. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::OperationDisplay.new(
  provider: null,
  resource: null,
  operation: null,
  description: null
)
```

