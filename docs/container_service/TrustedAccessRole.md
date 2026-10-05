# AzureRest::TrustedAccessRole

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_resource_type** | **String** | Resource type of Azure resource | [optional][readonly] |
| **name** | **String** | Name of role, name is unique under a source resource type | [optional][readonly] |
| **rules** | [**Array&lt;TrustedAccessRoleRule&gt;**](TrustedAccessRoleRule.md) | List of rules for the role. This maps to &#39;rules&#39; property of [Kubernetes Cluster Role](https://kubernetes.io/docs/reference/kubernetes-api/authorization-resources/cluster-role-v1/#ClusterRole). | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::TrustedAccessRole.new(
  source_resource_type: null,
  name: null,
  rules: null
)
```

