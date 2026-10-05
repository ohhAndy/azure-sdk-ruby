# AzureRest::ScheduledQueryRuleCriteria

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **all_of** | [**Array&lt;Condition&gt;**](Condition.md) | A list of conditions to evaluate against the specified scopes | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ScheduledQueryRuleCriteria.new(
  all_of: null
)
```

