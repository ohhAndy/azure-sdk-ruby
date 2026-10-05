# AzureRest::KubernetesVersionCapabilities

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **support_plan** | [**Array&lt;KubernetesSupportPlan&gt;**](KubernetesSupportPlan.md) | Kubernetes support plans available for this version. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::KubernetesVersionCapabilities.new(
  support_plan: null
)
```

