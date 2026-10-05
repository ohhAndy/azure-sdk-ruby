# AzureRest::AgentPoolAvailableVersionsPropertiesAgentPoolVersionsItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **default** | **Boolean** | Whether this version is the default agent pool version. | [optional] |
| **kubernetes_version** | **String** | The Kubernetes version (major.minor.patch). | [optional] |
| **is_preview** | **Boolean** | Whether Kubernetes version is currently in preview. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::AgentPoolAvailableVersionsPropertiesAgentPoolVersionsItem.new(
  default: null,
  kubernetes_version: null,
  is_preview: null
)
```

