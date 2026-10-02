# AzureSDK::AgentPoolAvailableVersionsProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agent_pool_versions** | [**Array&lt;AgentPoolAvailableVersionsPropertiesAgentPoolVersionsItem&gt;**](AgentPoolAvailableVersionsPropertiesAgentPoolVersionsItem.md) | List of versions available for agent pool. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::AgentPoolAvailableVersionsProperties.new(
  agent_pool_versions: null
)
```

