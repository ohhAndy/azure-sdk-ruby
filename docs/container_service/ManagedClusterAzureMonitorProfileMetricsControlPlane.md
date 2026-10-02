# AzureSDK::ManagedClusterAzureMonitorProfileMetricsControlPlane

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Whether to enable or disable collection of control plane metrics by the Azure Managed Prometheus addon. Defaults to disabled. See aka.ms/aks/controlplane-metrics for details. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ManagedClusterAzureMonitorProfileMetricsControlPlane.new(
  enabled: null
)
```

