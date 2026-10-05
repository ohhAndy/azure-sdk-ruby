# AzureRest::ManagedClusterAzureMonitorProfileMetricsControlPlane

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Whether to enable or disable collection of control plane metrics by the Azure Managed Prometheus addon. Defaults to disabled. See aka.ms/aks/controlplane-metrics for details. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ManagedClusterAzureMonitorProfileMetricsControlPlane.new(
  enabled: null
)
```

