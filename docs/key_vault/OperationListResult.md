# AzureRest::OperationListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;Operation&gt;**](Operation.md) | List of Storage operations supported by the Storage resource provider. |  |
| **next_link** | **String** | The URL to get the next set of operations. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::OperationListResult.new(
  value: null,
  next_link: null
)
```

