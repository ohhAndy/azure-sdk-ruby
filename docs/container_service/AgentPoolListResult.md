# AzureRest::AgentPoolListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;AgentPool&gt;**](AgentPool.md) | The AgentPool items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::AgentPoolListResult.new(
  value: null,
  next_link: null
)
```

