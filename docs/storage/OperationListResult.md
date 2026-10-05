# AzureRest::OperationListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;Operation&gt;**](Operation.md) | List of operations supported by the resource provider. | [optional] |
| **next_link** | **String** |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::OperationListResult.new(
  value: null,
  next_link: null
)
```

