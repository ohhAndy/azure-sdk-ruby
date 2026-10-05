# AzureRest::ManagedClusterCostAnalysis

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Whether to enable cost analysis. The Managed Cluster sku.tier must be set to &#39;Standard&#39; or &#39;Premium&#39; to enable this feature. Enabling this will add Kubernetes Namespace and Deployment details to the Cost Analysis views in the Azure portal. If not specified, the default is false. For more information see aka.ms/aks/docs/cost-analysis. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ManagedClusterCostAnalysis.new(
  enabled: null
)
```

