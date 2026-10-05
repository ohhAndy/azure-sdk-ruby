# AzureRest::AgentPoolArtifactStreamingProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Artifact streaming speeds up the cold-start of containers on a node through on-demand image loading. To use this feature, container images must also enable artifact streaming on ACR. If not specified, the default is false. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::AgentPoolArtifactStreamingProfile.new(
  enabled: null
)
```

