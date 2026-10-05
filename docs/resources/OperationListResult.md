# AzureRest::OperationListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;Operation&gt;**](Operation.md) | List of operations supported by the resource provider | [optional][readonly] |
| **next_link** | **String** | URL to get the next set of operation list results (if there are any). | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::OperationListResult.new(
  value: null,
  next_link: null
)
```

