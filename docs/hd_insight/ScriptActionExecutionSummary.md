# AzureRest::ScriptActionExecutionSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | The status of script action execution. | [optional][readonly] |
| **instance_count** | **Integer** | The instance count for a given script action execution status. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ScriptActionExecutionSummary.new(
  status: null,
  instance_count: null
)
```

