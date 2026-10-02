# AzureSDK::AgentPoolAvailableVersions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the agent pool version list. | [optional][readonly] |
| **name** | **String** | The name of the agent pool version list. | [optional][readonly] |
| **type** | **String** | Type of the agent pool version list. | [optional][readonly] |
| **properties** | [**AgentPoolAvailableVersionsProperties**](AgentPoolAvailableVersionsProperties.md) |  |  |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::AgentPoolAvailableVersions.new(
  id: null,
  name: null,
  type: null,
  properties: null
)
```

