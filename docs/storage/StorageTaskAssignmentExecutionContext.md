# AzureRest::StorageTaskAssignmentExecutionContext

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **target** | [**ExecutionTarget**](ExecutionTarget.md) |  | [optional] |
| **trigger** | [**ExecutionTrigger**](ExecutionTrigger.md) |  |  |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::StorageTaskAssignmentExecutionContext.new(
  target: null,
  trigger: null
)
```

