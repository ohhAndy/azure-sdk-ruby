# AzureRest::AgentPoolAvailableVersionsProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agent_pool_versions** | [**Array&lt;AgentPoolAvailableVersionsPropertiesAgentPoolVersionsItem&gt;**](AgentPoolAvailableVersionsPropertiesAgentPoolVersionsItem.md) | List of versions available for agent pool. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::AgentPoolAvailableVersionsProperties.new(
  agent_pool_versions: null
)
```

