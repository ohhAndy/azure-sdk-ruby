# AzureRest::KubernetesVersionListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **values** | [**Array&lt;KubernetesVersion&gt;**](KubernetesVersion.md) | Array of AKS supported Kubernetes versions. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::KubernetesVersionListResult.new(
  values: null
)
```

