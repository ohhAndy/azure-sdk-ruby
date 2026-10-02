# AzureSDK::ManagedClusterAzureMonitorProfileMetrics

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Whether to enable or disable the Azure Managed Prometheus addon for Prometheus monitoring. See aka.ms/AzureManagedPrometheus-aks-enable for details on enabling and disabling. |  |
| **kube_state_metrics** | [**ManagedClusterAzureMonitorProfileKubeStateMetrics**](ManagedClusterAzureMonitorProfileKubeStateMetrics.md) |  | [optional] |
| **control_plane** | [**ManagedClusterAzureMonitorProfileMetricsControlPlane**](ManagedClusterAzureMonitorProfileMetricsControlPlane.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ManagedClusterAzureMonitorProfileMetrics.new(
  enabled: null,
  kube_state_metrics: null,
  control_plane: null
)
```

