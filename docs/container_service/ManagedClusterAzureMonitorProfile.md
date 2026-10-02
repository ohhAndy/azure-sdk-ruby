# AzureSDK::ManagedClusterAzureMonitorProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metrics** | [**ManagedClusterAzureMonitorProfileMetrics**](ManagedClusterAzureMonitorProfileMetrics.md) |  | [optional] |
| **container_insights** | [**ManagedClusterAzureMonitorProfileContainerInsights**](ManagedClusterAzureMonitorProfileContainerInsights.md) |  | [optional] |
| **app_monitoring** | [**ManagedClusterAzureMonitorProfileAppMonitoring**](ManagedClusterAzureMonitorProfileAppMonitoring.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ManagedClusterAzureMonitorProfile.new(
  metrics: null,
  container_insights: null,
  app_monitoring: null
)
```

