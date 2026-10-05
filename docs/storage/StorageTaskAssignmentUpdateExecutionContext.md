# AzureRest::StorageTaskAssignmentUpdateExecutionContext

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **target** | [**ExecutionTarget**](ExecutionTarget.md) |  | [optional] |
| **trigger** | [**ExecutionTriggerUpdate**](ExecutionTriggerUpdate.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::StorageTaskAssignmentUpdateExecutionContext.new(
  target: null,
  trigger: null
)
```

