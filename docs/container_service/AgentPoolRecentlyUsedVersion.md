# AzureSDK::AgentPoolRecentlyUsedVersion

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **orchestrator_version** | **String** | The Kubernetes version (major.minor.patch) available for rollback. | [optional] |
| **node_image_version** | **String** | The node image version available for rollback. | [optional] |
| **timestamp** | **Time** | The timestamp when this version was last used. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::AgentPoolRecentlyUsedVersion.new(
  orchestrator_version: null,
  node_image_version: null,
  timestamp: null
)
```

